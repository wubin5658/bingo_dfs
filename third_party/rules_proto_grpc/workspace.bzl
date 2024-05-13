"""Loads the rules_proto_grpc library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    version = "4.1.0"
    http_archive(
        name = "rules_proto_grpc",
        sha256 = "8383116d4c505e93fd58369841814acc3f25bdb906887a2023980d8f49a0b95b",
        strip_prefix = "rules_proto_grpc-{}".format(version),
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_proto_grpc-{}.tar.gz".format(version),
            "https://github.com/rules-proto-grpc/rules_proto_grpc/archive/refs/tags/{}.tar.gz".format(version),
        ],
    )
