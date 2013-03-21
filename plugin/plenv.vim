" Yet another plenv wrapper for Vim
"   File: plenv.vim
"   Author: moznion (Taiki Kawakami) <moznion@gmail.com>
"   Last Modified: Mar 21 2013.
"   License: MIT License

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=* Plenv         call g:plenv([<f-args>])
command! -nargs=* PlenvList     call g:plenv(['list'])
command! -nargs=* PlenvVersions call g:plenv(['list'])
command! -nargs=* PlenvLocal    call g:plenv(['local',  <f-args>])
command! -nargs=* PlenvGlobal   call g:plenv(['global', <f-args>])
command! -nargs=* PlenvRehash   call g:plenv(['rehash'])
command! -nargs=* PlenvVersion  call g:plenv(['version'])

func! g:plenv(commands)
  if !executable('plenv')
    echo "[plenv.vim/error] Please install plenv."
    return
  endif

  if a:commands[0] ==# 'versions'
    let a:commands[0] = 'list'
  endif

  " Use defined functions
  if exists('*g:plenv_' . a:commands[0])
    try
      let l:ret_msg = function('g:plenv_' . a:commands[0])(a:commands[1])
    catch
      let l:ret_msg = function('g:plenv_' . a:commands[0])()
    endtry
    echo l:ret_msg
    return l:ret_msg
  endif

  " Execute plenv command with some args
  let l:command = remove(a:commands, 0)
  let l:ret_msg = system('plenv ' . l:command . ' ' . s:_serialize_args(a:commands))
  echo l:ret_msg
  return l:ret_msg
endf

func! g:plenv_list()
  return system('plenv list')
endf

func! g:plenv_local(version)
  return s:_switch('local', a:version)
endf

func! g:plenv_global(version)
  return s:_switch('global', a:version)
endf

func! g:plenv_version()
  return system('plenv version')
endf

func! g:plenv_rehash()
  return system('plenv rehash')
endf

func! s:_switch(type, version)
  let l:ret_msg = system('plenv ' . a:type . ' ' . a:version)
  if len(l:ret_msg) == 0 " success
    return  '[plenv/' . a:type . '] switched to "' . a:version . '"'
  endif
  return l:ret_msg
endf

func! s:_serialize_args(args)
  let l:arg = ''
  for l:elem in a:args
    let l:arg = l:arg . ' ' . l:elem
  endfor
  return l:arg
endf

let &cpo = s:save_cpo
unlet s:save_cpo
