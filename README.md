rust-empty
==========

An empty project ready for Rust development.  
MIT license (or just use it as you like).  

##Introduction To Rust

Rust is a programming language developed at Mozilla Research.  

<a href="https://en.wikipedia.org/wiki/Rust_%28programming_language%29" target="_blank">Rust at wikipedia</a>  
<a href="http://www.rust-lang.org/" target="_blank">Official web page</a>  
<a href="https://github.com/mozilla/rust/wiki/Docs" target="_blank">Documentation at Github wiki</a>  
<a href="http://www.reddit.com/r/rust/" target="_blank">Rust at Reddit</a>  
<a href="http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust" target="_blank">Rust IRC channel</a>  
<a href="https://github.com/mozilla/rust/wiki/Doc-packages%2C-editors%2C-and-other-tools" target="_blank">Editor syntax highlighting</a>  
<a href="https://github.com/mozilla/rust/wiki/Rustpkg" target="_blank">Rust packages</a>  

###For those new to terminal/Github:

<a href="https://github.com/bvssvni/rust-empty/wiki/How-to-use-the-terminal" target="_blank">How to use the terminal</a>  
<a href="https://github.com/bvssvni/rust-empty/wiki/How-to-use-Vim" target="_blank">How to use Vim</a>  
<a href="https://github.com/bvssvni/rust-empty/wiki/How-to-use-Github" target="_blank">How to use Github</a>

##Usage

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

