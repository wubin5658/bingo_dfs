"""Loads the protobuf library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    protobuf_version = "26.1"
    http_archive(
        name = "com_google_protobuf",
        sha256 = "4fc5ff1b2c339fb86cd3a25f0b5311478ab081e65ad258c6789359cd84d421f8",
        strip_prefix = "protobuf-{}".format(protobuf_version),
        urls = [
            "https://github.com/protocolbuffers/protobuf/archive/refs/tags/v{}.tar.gz".format(protobuf_version),
        ],
    )
