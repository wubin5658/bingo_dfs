"""Loads the grpc_gateway library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    version = "2.6.0"
    http_archive(
        name = "com_github_grpc_ecosystem_grpc_gateway_v2",
        strip_prefix = "grpc-gateway-{}".format(version),
        sha256 = "4a1a50fcb2dafb0134db0be669d3d8d8dd0d6933f88a3e580fee2727ccf5ebc2",
        urls = [
            "https://github.com/grpc-ecosystem/grpc-gateway/archive/refs/tags/v{}.tar.gz".format(version),
        ],
    )

    version = "1.16.0"
    http_archive(
        name = "com_github_grpc_ecosystem_grpc_gateway",
        strip_prefix = "grpc-gateway-{}".format(version),
        sha256 = "20ba8f2aeb4a580109357fffaa42f8400aba1155b95c8845e412287907e64379",
        urls = [
            "https://github.com/grpc-ecosystem/grpc-gateway/archive/refs/tags/v{}.tar.gz".format(version),
        ],
        patch_args = ["-p1"],
        # NOTE:
        # Ref: https://github.com/bazelbuild/rules_go/issues/2818
        # Ref: https://github.com/bazelbuild/rules_go/wiki/Updating-dependencies
        # grpc_gateway_v1 BUILD 文件中引用的是rules_go 的库, bazel build时会出现 go package 重名的情况导致编译失败
        # 一些常用的库 rules_go 提供了patch https://github.com/bazelbuild/rules_go/tree/master/third_party
        # grpc_gateway_v1 这里patch 是为了支持 opentelemetry 的go sdk
        patches = [
            clean_dep("//third_party/grpc_gateway:p00_build_alias.patch"),
            clean_dep("//third_party/grpc_gateway:p01_move_rule_go_to_com_github_golang_protobuf.patch"),
        ],
    )
