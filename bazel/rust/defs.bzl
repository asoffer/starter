load("@crate_index//:defs.bzl", "aliases", "all_crate_deps")
load("@rules_rust//rust:defs.bzl", "rust_binary", "rust_library")

def rs_binary(name, **kwargs):
    deps = all_crate_deps(package_name = "")
    if "deps" in kwargs:
        deps += kwargs["deps"]
        kwargs.pop("deps")
    rust_binary(
        name = name,
        aliases = aliases(),
        deps = deps,
        proc_macro_deps = all_crate_deps(
            proc_macro = True,
            package_name = "",
        ),
        **kwargs)

def rs_library(name, **kwargs):
    deps = all_crate_deps(package_name = "")
    if "deps" in kwargs:
        deps += kwargs["deps"]
        kwargs.pop("deps")
    rust_library(
        name = name,
        aliases = aliases(),
        deps = deps,
        proc_macro_deps = all_crate_deps(
            proc_macro = True,
            package_name = "",
        ),
        **kwargs)
