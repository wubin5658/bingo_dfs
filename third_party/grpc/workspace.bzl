"""Loads the grpc library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    grpc_version = "1.63.0"
    http_archive(
        name = "com_github_grpc_grpc",
        sha256 = "493d9905aa09124c2f44268b66205dd013f3925a7e82995f36745974e97af609",
        strip_prefix = "grpc-{}".format(grpc_version),
        urls = [
            "https://github.com/grpc/grpc/archive/v{}.tar.gz".format(grpc_version),
        ],
    )
