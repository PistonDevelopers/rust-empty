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

###Using The Terminal

This introduction is designed for the Unix terminal environment.  
Mac OSX fine, but GNU/Linux is recommended (free software / open source).  

<a href="http://www.ubuntu.com/" target="_blank">Ubuntu (GNU/Linux)</a>  
<a href="http://linuxmint.com/" target="_blank">Linux Mint (GNU/Linux)</a>  

Some useful commands:

    cd <dir>          Step into sub directory.
    cd ..             Step up one directory.
    mv <from> <to>    Move file from one location to another.
    pwd               Prints the current directory.
    vim <file>        Open file in text editor.

###Installation

The installation process will take some time to complete.

    git clone https://github.com/mozilla/rust.git && cd rust && ./configure && make install
    
If it does not work first time, try

    sudo make install

##Usage

###Workspace

The 'rustpkg' tool is designed to compile multiple projects into multiple libraries and executables.  
Read the tutorial to get an idea what a 'workspace' means.  

<a href="http://static.rust-lang.org/doc/master/tutorial-rustpkg.html" target="_blank">Rustpkg Tutorial</a>

###Build The Empty Project

    rustpkg build empty
    
###Test The Empty Project

    rustpkg test empty

###Generate Documentation

Creates a new folder 'doc'.

    rustdoc src/*/lib.rs

