"""Loads the rules_folly package"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    http_archive(
        name = "rules_folly",
        sha256 = "317abac1c970ad0af43c88b6eac706c9b4c5a06ee8b673d0e352143b0d9fd481",
        strip_prefix = "rules_folly-0.0.3",
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_folly-0.0.3.tar.gz",
            "https://github.com/storypku/rules_folly/archive/v0.0.3.tar.gz",
        ],
        patch_args = ["-p1"],
        patches = [
            clean_dep("//third_party/rules_folly:p01_gcc_specific_option.patch"),
            clean_dep("//third_party/rules_folly:p04_fix_pthread_key_delete.patch"),
        ],
    )
