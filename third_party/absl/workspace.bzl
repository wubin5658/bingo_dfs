"""Loads the absl library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    absl_version = "20240116.2"
    http_archive(
        name = "com_github_google_absl",
        sha256 = "733726b8c3a6d39a4120d7e45ea8b41a434cdacde401cba500f14236c49b39dc",
        strip_prefix = "abseil-cpp-{}".format(absl_version),
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/refs/tags/{}.tar.gz".format(absl_version),
        ],
    )
