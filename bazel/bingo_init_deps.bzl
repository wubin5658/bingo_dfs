load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
load("@rules_python//python:repositories.bzl", "py_repositories")

def bingo_init_deps():
    protobuf_deps()
    grpc_deps()
    py_repositories()
