Rust-Empty
==========

A Makefile to get started with Rust development.  
MIT license (or just use it as you like).  
Requires Linux or Mac OS X (with developer tools).  

If you want to contact me, I often hang around in the #rust IRC channel (bvssvni)

##What is Rust-Empty?

Rust-Empty is a user friendly Makefile/Bash setup tool for Rust programmers.  
It automates setup of directories and configuration files.  
Once setup is completed, replace or modify the Makefile to suit your needs.  
The Makefile works out of the box on Linux and OSX (with developer tools).  
The setup uses best practices and conventions learned from the Rust community.  
Pull requests/fixes are welcome!  

*Latest feature: Install/uninstall Rust nightly!*

What are these 'best practices'?

For example:

* Put code in a `src/` directory
* Add a `crate_id` attribute for your library
* Deny missing doc attribute for library
* A `.gitignore` to keep repository clean
* Library binaries should be in `target/cpu-vendor-os/lib` directory
* Example programs better not be in the `src/` directory
* Need a `-O` flag to compile optimized code
* Dependencies, rust-nightly check through Travis CI etc.

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

1. Create a new empty folder for your project.  
2. Copy 'Makefile' to the project folder.  
3. Open the Terminal window and navigate to the project folder.  
4. Type 'make'.  

```
--- rust-empty (0.2 005)
make run               - Runs executable
make exe               - Builds main executable
make lib               - Both static and dynamic library
make rlib              - Static library
make dylib             - Dynamic library
make test              - Tests library internally and externally
make test-internal     - Tests library internally
make test-external     - Tests library externally
make bench             - Benchmarks library internally and externally
make bench-internal    - Benchmarks library internally
make bench-external    - Benchmarks library externally
make doc               - Builds documentation for library
make git-ignore        - Setup files to be ignored by Git
make examples          - Builds examples
make cargo-lite-exe    - Setup executable package
make cargo-lite-lib    - Setup library package
make rust-ci-lib       - Setup Travis CI Rust library
make rust-ci-exe       - Setup Travis CI Rust executable
make rusti             - Setup 'rusti.sh' for interactive Rust
make loc               - Count lines of code in src folder
make nightly-install   - Installs Rust nightly built
make nightly-uninstall - Uninstalls Rust nightly built
make clean             - Deletes binaries and documentation.
make clear-project     - WARNING: Deletes project files except 'Makefile'
make clear-git         - WARNING: Deletes Git setup
```

All the commands creates the files and folders necessary to compile.  
For example, if you type `make exe` it will add a hello-world program to `src/main.rs`.  
You can use `make clear-project` to revert back to just the 'Makefile'.  

##Unit Testing & Benchmarking

Internal unit tests and benchmarks are located in the same source as the library, `src/lib.rs`.  
External unit tests and benchmarks are located in `src/test.rs`.  

##Introduction To Rust

Rust is a programming language developed at Mozilla Research.  

<a href="https://github.com/bvssvni/rust-empty/issues/35" target="_blank">Rust nightly builds</a>  
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
