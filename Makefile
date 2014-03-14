SHELL := /bin/bash

EXAMPLE_FILES = examples/*.rs

COMPILER_FLAGS = -O

all:
	clear \
	&& echo "--- rust-empty (0.1 005)" \
	&& echo "make run 		- Runs executable" \
	&& echo "make exe 		- Executable" \
	&& echo "make lib 		- Different kinds of libraries" \
	&& echo "make rlib 		- Static library" \
	&& echo "make test 		- Tests library" \
	&& echo "make bench 		- Benchmarks library" \
	&& echo "make doc 		- Builds documentation for library" \
	&& echo "make git-ignore 	- Ignored by git" \
	&& echo "make examples 		- Builds examples" \
	&& echo "make clean 		- Deletes binaries and documentation." \
	&& echo "make clear-project 	- WARNING: Removes all files except 'Makefile'" \
	&& echo "make clear-git 		- WARNING: Removes Git" \
	&& echo "make cargo-lite-exe 	- Setup executable package" \
	&& echo "make cargo-lite-lib 	- Setup library package" \
	&& echo "make rust-ci-lib 	- Setup Travis CI Rust library" \
	&& echo "make rust-ci-exe 	- Setup Travis CI Rust executable" \
	&& echo "make rusti		- Setup 'rusti.sh' for interactive Rust" \

cargo-lite-exe: src src/main.rs
	( \
		test -e cargo-lite.conf \
		&& clear \
		&& echo "--- The file 'cargo-lite.conf' already exists" \
	) \
	|| \
	( \
		echo -e "deps = [\n]\n\n[build]\ncrate_root = \"src/main.rs\"\nrustc_args = []\n" > cargo-lite.conf \
		&& clear \
		&& echo "--- Created 'cargo-lite.conf' for executable" \
		&& cat cargo-lite.conf \
	)

cargo-lite-lib: src src/lib.rs
	( \
		test -e cargo-lite.conf \
		&& clear \
		&& echo "--- The file 'cargo-lite.conf' already exists" \
	) \
	|| \
	( \
		echo -e "deps = [\n]\n\n[build]\ncrate_root = \"src/lib.rs\"\ncrate_type = \"library\"\nrustc_args = []\n" > cargo-lite.conf \
		&& clear \
		&& echo "--- Created 'cargo-lite-conf' for library" \
		&& cat cargo-lite.conf \
	)

rust-ci-lib: src src/lib.rs
	( \
		test -e .travis.yml \
		&& clear \
		&& echo "--- The file '.travis.yml' already exists" \
	) \
	|| \
	( \
		echo -e "before_install:\n\t- yes | sudo add-apt-repository ppa:hansjorg/rust\n\t- sudo apt-get update\ninstall:\n\t- sudo apt-get install rust-nightly\nscript:\n\t- make lib\n" > .travis.yml \
		&& clear \
		&& echo "--- Created '.travis.yml' for library" \
		&& cat .travis.yml \
	)

rust-ci-exe: src src/main.rs
	( \
		test -e .travis.yml \
		&& clear \
		&& echo "--- The file '.travis.yml' already exists" \
	) \
	|| \
	( \
		echo -e "before_install:\n\t- yes | sudo add-apt-repository ppa:hansjorg/rust\n\t- sudo apt-get update\ninstall:\n\t- sudo apt-get install rust-nightly\nscript:\n\t- make exe\n" > .travis.yml \
		&& clear \
		&& echo "--- Created '.travis.yml' for executable" \
		&& cat .travis.yml \
	)

doc: src $(shell find src/ -type f) 
	clear \
	&& rustdoc src/lib.rs \
	&& clear \
	&& echo "--- Built documentation"

run: exe
	clear \
	&& ./bin/main

exe: bin src src/main.rs $(shell find src/ -type f)
	clear \
	&& rustc $(COMPILER_FLAGS) src/main.rs -o bin/main -L build/ \
	&& echo "--- Built executable" \
	&& echo "--- Type 'make run' to run executable"

test: rlib src bin src/test.rs $(shell find src/ -type f)
	clear \
	&& rustc $(COMPILER_FLAGS) --test src/test.rs -o bin/test -L build/ \
	&& echo "--- Built test" \
	&& ./bin/test

bench: test
	clear \
	&& bin/test --bench

lib: rlib

rlib: build src src/lib.rs $(shell find src/ -type f)
	clear \
	&& rustc $(COMPILER_FLAGS) --crate-type=rlib src/lib.rs --out-dir build/ \
	&& clear \
	&& echo "--- Built rlib" \
	&& echo "--- Type 'make test' to test library"

bin:
	mkdir -p bin

build:
	mkdir -p build

src:
	mkdir -p src

examples-dir:
	test -e examples \
	|| \
	( \
		mkdir examples \
		&& echo -e "fn main() {\n\tprintln!(\"Hello!\");\n}\n" > examples/hello.rs \
		&& clear \
		&& echo "--- Created examples folder" \
	)

rust-dir:
	mkdir -p .rust

git-ignore:
	( \
		test -e .gitignore \
		&& clear \
		&& echo "--- The file '.gitignore' already exists" \
	) \
	|| \
	( \
		echo -e ".DS_Store\n/bin/\n/doc/\n/build/\n/.rust\nrusti.sh\n" > .gitignore \
		&& clear \
		&& echo "--- Created '.gitignore' for git" \
		&& cat .gitignore \
	)

examples: $(EXAMPLE_FILES)

$(EXAMPLE_FILES): lib examples-dir
	rustc $(COMPILER_FLAGS) $@ -L build/ --out-dir examples/ 

src/main.rs:
	test -e src/main.rs \
	|| \
	( \
		echo -e "fn main() {\n\tprintln!(\"Hello world!\");\n}" > src/main.rs \
	)

src/test.rs:
	test -e src/test.rs \
	|| \
	( \
		touch src/test.rs \
	)

src/lib.rs:
	test -e src/lib.rs \
	|| \
	( \
		echo -e "#[crate_id = \"\"];\n#[deny(missing_doc)];\n\n//! Documentation goes here.\n" > src/lib.rs \
	)

clean:
	rm -rf build/
	rm -rf doc/
	rm -f bin/*
	clear \
	&& echo "--- Deleted binaries and documentation"

clear-project:
	rm -f cargo-lite.conf
	rm -f .travis.yml
	rm -rf build/
	rm -rf src/
	rm -rf bin/
	rm -rf examples/
	rm -rf doc/
	clear \
	&& echo "--- Removed all source files, binaries and documentation" \
	&& echo "--- Content in project folder" \
	&& ls -a

clear-git:
	rm -f .gitignore
	rm -rf .git
	clear \
	&& echo "--- Removed Git" \
	&& echo "--- Content in project folder" \
	&& ls -a

rusti:
	echo -e "#!/bin/sh\n\nwhile true; do\n  echo -n \" > \"\n  read line\n  rustc - -o tmp <<EOF\n  #[feature(globs, macro_rules, struct_variant)];\n  // extern mod extra;\n  fn main() {\n      let r = { \$$line };\n      println!(\"{:?}\", r);\n  }\nEOF\n  ./tmp\n  rm tmp\ndone" > rusti.sh \
	&& chmod 755 rusti.sh

