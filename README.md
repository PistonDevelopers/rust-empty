rust-empty
==========

An empty project ready for Rust development.  
MIT license (or just use it as you like).  

This is for those who have 

* no clue how to organize their Rust project  
* never used the terminal but only IDE's like Visual Studio  

##Introduction To Rust

Rust is a programming language developed at Mozilla Research.  

<a href="https://en.wikipedia.org/wiki/Rust_%28programming_language%29" target="_blank">Rust at wikipedia</a>  
<a href="http://www.rust-lang.org/" target="_blank">Official web page</a>  
<a href="https://github.com/mozilla/rust/wiki/Docs" target="_blank">Documentation at Github wiki</a>  
<a href="http://www.reddit.com/r/rust/" target="_blank">Rust at Reddit</a>  
<a href="http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust" target="_blank">Rust IRC channel</a>  
<a href="https://github.com/mozilla/rust/wiki/Doc-packages%2C-editors%2C-and-other-tools" target="_blank">Editor syntax highlighting</a>  
<a href="https://github.com/mozilla/rust/wiki/Rustpkg" target="_blank">Rust packages</a>  

###Using The Terminal

This introduction is designed for the GNU/Linux environment.  
If you have another operating system, check the tutorial or get GNU/Linux for free:  

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
    time ./<exe>        Prints how long time the program is running.
    vim <file>          Open file in text editor.
    xdg-open .          Open current directory in window.
    (up/down arrow)     Browse command history.

###Using Vim

Vim is a text editor that can be used in the terminal window.  
It starts in a read-only mode.  
When you enter a edit mode you can go back using Esc.  

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
    Shift+v             Same as when selecting text, but whole lines.

The clipboard in Vim is separated from the window clipboard.  
Use the right-click menu to copy or paste from the window clipboard.  
If you need to show code on the IRC/Reddit use <a href="https://gist.github.com/" target="_blank">Gist</a>.  

###Github

A website to share source code and cooperate with other programmers.  
Rust is developed using Github and latest source code is available here:  

<a href="https://github.com/mozilla/rust" target="_blank">https://github.com/mozilla/rust</a>

Github uses a version control system called 'Git'.  
To check whether git is installed:  

    git --version

If it returns "No command 'git' found", it is not installed.  

<a href="http://wiki.freegeek.org/index.php/Git_for_dummies" target="_blank">Git for dummies</a>

###Installation

The installation process will take some time to complete.  

    git clone https://github.com/mozilla/rust.git && cd rust && ./configure && make install
    
If it does not work first time, try

    sudo make install
    
It asks for administrator password.

##Usage (rust-empty)

There are 2 things you need to copy to the workspace directory:

1. The 'src' folder.  
2. The '.gitignore' file.  

###Workspace

The 'rustpkg' tool is designed to compile multiple projects into multiple libraries and executables.  
Read the tutorial to get an idea what a 'workspace' means.  

<a href="http://static.rust-lang.org/doc/master/tutorial-rustpkg.html" target="_blank">Rustpkg tutorial</a>

###New Library

In the 'src' directory, copy the 'empty' folder.  
There are 3 places you need to rename:

1. The copied folder.
2. The 'crate_id' in 'lib.rs'.
3. The 'extern mod' in 'test.rs'.

Build the empty project:

    rustpkg build empty
    
Test the empty project:

    rustpkg test empty
    
###Hello World With Vim

First create the directory for the executable:

    mkdir src/helloworld

Open new file 'main.rs' in Vim:
    
    vim src/helloworld/main.rs

Hit 'i' to enter edit mode:    

    i

Type the following:
    
    fn main() {
        println("hello world!");
    }

Hit 'Esc' to go back to read-only mode:
    
    Esc

Save the file, create executable and run the it if the compilation succeeds:
    
    :w | :!rustpkg install helloworld && ./bin/helloworld

When you type ':' you can use the (up arrow) key to get the last command.

###Generate Documentation

Creates a new folder 'doc'.

    rustdoc src/*/lib.rs

<a href="https://github.com/mozilla/rust/wiki/Doc-using-rustdoc" target="_blank">Using rustdoc</a>

