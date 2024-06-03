# Starter Project!

This is a starter project you can clone to get started with the combination of

* Bazel 7
* C++20
* Rust
* Cargo
* Protocol Buffers

There are many starter projects available for either C++ (typically with CMake,
but sometimes with Bazel) or Rust with Cargo. What distinguishes this project is
that it enables using Bazel to coordinate cross-language projects.

## Getting started

Most of the time, when working with a project derived from this one, builds will
be automatically cached and rebuilt only as needed with Bazel. However, when
Rust crate dependencies are exported from Cargo into Bazel, this needs to be
handled manually. Any time a Cargo dependency is added, removed, or a version is
updated, will need to run the following command. This includes your first run
of the project.

```
CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index
```

## Compiling the project

Once Cargo dependencies are properly synced into Bazel, you can use
`bazel build` as expected.

```
bazel build -c opt //starter/...
```

## Execution

If the starter project built, it almost certainly works correctly. However, if
you want to see it in action, you can run the following commands:

```
./bazel-bin/starter/greeting_builder "Hello" "starter-project" > /tmp/out
./bazel-bin/starter/greet /tmp/out
```

## Toolchain

Included in this project are definitions for Rust and C++ toolchains. While
the Rust toolchain is a standard out-of-the-box `rustc`, the C++ toolchain
is a relatively opinionated configuration. Warnings are treated as errors by
default and most warnings are turned on (`-Wall`, `-Wextra`, `-Wpedantic`) with
a few exceptions to ensure dependencies can compile without errors. We notably
do not turn on `-Weverything` since many of the associated warnings do not make
sense for a modern project (e.g., C++98 compatibility).

## Formatting

Included in this project are a `.clang-format` file and `.rustfmt.toml` file
with somewhat opinionated choices about how code should be formatted in these
languages. Modify these to suit your desires.

Configuration documentation:
* [ClangFormat](https://clang.llvm.org/docs/ClangFormatStyleOptions.html)
* [RustFmt](https://rust-lang.github.io/rustfmt/?version=v1.6.0)
