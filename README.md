# Name
plenv.vim - Yet another plenv wrapper for Vim

# Description
plenv is the very cool perl binary manager.  
plenv.vim is the Vim plugin which wraps plenv functions.

# Usage
    :Plenv [command] ([arguments]) --- Usage of this command is the same as CLI plenv command.
    :PlenvList                     --- Show the list of installed perls
    :PlenvVersions                 --- The same as the above
    :PlenvGlobal [perl name]       --- Switch the default (global) perl
    :PlenvLocal [perl name]        --- Switch the local perl
    :PlenvVersion                  --- Show the current using perl version
    :PlenvRehash                   --- Rehash

#How to install
If you are using NeoBundle, please write down some codes into '.vimrc', like so:

    NeoBundle 'moznion/plenv.vim'

Or put the 'plenv.vim' onto plugin directory of vim.

# Dependencies
- [plenv](https://github.com/tokuhirom/plenv)

#Author
moznion (Taiki kawakami) \<moznion@gmail.com\>

#Last Modified
Mar 21 2013.

#License
MIT License

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
