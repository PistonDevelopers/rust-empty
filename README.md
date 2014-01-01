rust-empty
==========

An empty project ready for Rust development.  
MIT license.  

##Introduction To Rust

Rust is a programming language developed at Mozilla Research.  

<a href="https://en.wikipedia.org/wiki/Rust_%28programming_language%29" target="_blank">Rust at Wikipedia</a>  
<a href="http://www.rust-lang.org/" target="_blank">Official Web Page</a>  
<a href="https://github.com/mozilla/rust/wiki/Docs" target="_blank">Documentation at Github Wiki</a>  
<a href="http://www.reddit.com/r/rust/" target="_blank">Rust at Reddit</a>  
<a href="http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust" target="_blank">Rust IRC Channel</a>  
<a href="https://github.com/mozilla/rust/wiki/Doc-packages%2C-editors%2C-and-other-tools" target="_blank">Editor Syntax Highlighting</a>

###Using The Terminal

This introduction is designed for the Unix terminal environment.  
Mac OSX fine, but GNU/Linux is recommended (free software / open source).  

<a href="http://www.ubuntu.com/" target="_blank">Ubuntu (GNU/Linux)</a>  
<a href="http://linuxmint.com/" target="_blank">Linux Mint (GNU/Linux)</a>  

Some useful commands:

    ./<exe>             Run program.
    cd <dir>            Step into sub directory.
    cd ..               Step up one directory.
    ls                  List all visible files and folders in directory.
    ls -a               List all files, including those starting with '.'.
    mv <from> <to>      Move file from one location to another.
    mkdir <dir>         Create new directory.
    pwd                 Prints the current directory.
    vim <file>          Open file in text editor.
    xdg-open .          Open current directory in window.
    (up/down arrow)     Browse command history.

###Using Vim

Vim is a text editor that can be used in the terminal window.  
It starts in a read-only mode.  
When you enter a mode you can go back using Esc.  

    :!<command>         Execute terminal command.
    :w                  Save file.
    :q                  Quit.
    i                   Edit text.
    u                   Undo.
    Ctrl+r              Redo.
    p                   Paste copied text.
    v                   Select text.
        d               Cut selected text.
        y               Copy selected text.
        

###Installation

The installation process will take some time to complete.

    git clone https://github.com/mozilla/rust.git && cd rust && ./configure && make install
    
If it does not work first time, try

    sudo make install

##Usage

Copy the 'src' folder to your workspace directory.

###Workspace

The 'rustpkg' tool is designed to compile multiple projects into multiple libraries and executables.  
Read the tutorial to get an idea what a 'workspace' means.  

<a href="http://static.rust-lang.org/doc/master/tutorial-rustpkg.html" target="_blank">Rustpkg Tutorial</a>

###Start New Library Project With Vim

In the 'src' directory, copy the 'empty' folder.  
There are 3 places you need to rename:

1. The copied folder.
2. The 'crate_id' in 'lib.rs'.
3. The 'extern mod' in 'test.rs'.

###Start New Executable Project With Vim

In the 'src' directory, create a new empty folder.  

    vim main.rs

###Build The Empty Project

    rustpkg build empty
    
###Test The Empty Project

    rustpkg test empty

###Generate Documentation

Creates a new folder 'doc'.

    rustdoc src/*/lib.rs

