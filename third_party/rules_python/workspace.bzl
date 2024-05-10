"""Loads the rules python library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    version = "0.31.0"
    http_archive(
        name = "rules_python",
        sha256 = "c68bdc4fbec25de5b5493b8819cfc877c4ea299c0dcb15c244c5a00208cde311",
        strip_prefix = "rules_python-{}".format(version),
        urls = [
            "https://github.com/bazelbuild/rules_python/archive/refs/tags/{}.tar.gz".format(version),
        ],
    )
