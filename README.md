rust-empty
==========

A Makefile ready for Rust development.  
MIT license (or just use it as you like).  
Requires Linux or Mac OS X.  

##What is Rust-Empty?

Starting a new project with the Rust programming language is not easy.  
There are tons of slightly-annoying-but-not-critical-things to remember.  

For example:

* Put code in a 'src' directory
* Need a 'crate_id' for your library
* Missing documentation annotation
* A '.gitignore' to avoid rubish in the repository
* Library binaries should be in 'build' directory
* Example programs better not be in the 'src' directory
* Need a "-O" flag to compile optimized code
* Dependencies, rust-nightly check etc.

Rust-empty is a user-friendly Makefile that does all these small tasks for you.  

###Goals

* Work on Linux and Mac OS X
* Convention by 'best practice' of Rust community
* Features are optional, non-interfering and gives informative output
* Integrate with other tools from Rust community

###Non-Goals

* Windows support
* Backward compatibility
* Require any sort of internal configuration
* Replace other tools, such as package management

##Usage

Copy 'Makefile' to an empty folder.  
In the Terminal window, 'make':  

```
--- rust-empty (0.1 006)
make run 		- Runs executable
make exe 		- Executable
make lib 		- Different kinds of libraries
make rlib 		- Static library
make test 		- Tests library
make bench 		- Benchmarks library
make doc 		- Builds documentation for library
make git-ignore 	- Ignored by git
make examples 		- Builds examples
make clean 		- Deletes binaries and documentation.
make clear-project 	- WARNING: Deletes project files except 'Makefile'
make clear-git 		- WARNING: Deletes Git setup
make cargo-lite-exe 	- Setup executable package
make cargo-lite-lib 	- Setup library package
make rust-ci-lib 	- Setup Travis CI Rust library
make rust-ci-exe 	- Setup Travis CI Rust executable
make rusti		- Setup 'rusti.sh' for interactive Rust
```

All the commands creates the files and folders necessary to compile.  
For example, if you type 'make exe' it will add a hello-world program to 'src/main.rs'.  
You can use 'make clear-project' to revert back to just the 'Makefile'.  

##Projects Using rust-empty

<a href="https://github.com/bvssvni/rust-alg" target="_blank">rust-alg</a> (not updated)

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

###Rust CI

Each night the latest version of Rust on Ubuntu is built against a list of projects.  
Add project by following instructions on the site:

<a href="http://rust-ci.org/" target="_blank">Rust CI</a>
