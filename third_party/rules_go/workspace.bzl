"""Loads the repository rule for rules_go"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    # NOTES(jiaming):
    # 1) grpc depends on rules_go
    # 2) Bazel 4.0.0 (LTS) or higher is required for rules_go 0.28+
    version = "0.37.0"
    http_archive(
        name = "io_bazel_rules_go",
        sha256 = "72a48b34d1ffd40c11899123dd1613daef4f618c536092b0fe7be061f919cceb",
        strip_prefix = "rules_go-{}".format(version),
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_go-v{}.tar.gz".format(version),
            "https://github.com/bazelbuild/rules_go/archive/refs/tags/v{}.tar.gz".format(version),
        ],
    )
