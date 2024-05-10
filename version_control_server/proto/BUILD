load("@rules_proto//proto:defs.bzl", "proto_library")
load("@rules_cc//cc:defs.bzl", "cc_proto_library")
load("@com_github_grpc_grpc//bazel:cc_grpc_library.bzl", "cc_grpc_library")

proto_library(
    name = "server_proto",
    srcs = ["server.proto"],
)

cc_proto_library(
    name = "server_cc_proto",
    deps = [
        ":server_proto",
    ],
)

cc_grpc_library(
    name = "server_cc_grpc",
    srcs = [":server_proto"],
    grpc_only = True,
    deps = [":server_cc_proto"],
)
