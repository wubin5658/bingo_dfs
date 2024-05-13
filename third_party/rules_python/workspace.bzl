"""Loads the rules_python package"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    version = "0.8.1"
    http_archive(
        name = "rules_python",
        strip_prefix = "rules_python-{}".format(version),
        patch_args = ["-p1"],
        patches = [
            clean_dep("//third_party/rules_python:p01_downgrade_pip.patch"),
            clean_dep("//third_party/rules_python:p02_deprecate_to_json.patch"),
            clean_dep("//third_party/rules_python:p03_escape_cpython_filename.patch"),
        ],
        sha256 = "cdf6b84084aad8f10bf20b46b77cb48d83c319ebe6458a18e9d2cebf57807cdd",
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_python-{}.tar.gz".format(version),
            "https://github.com/bazelbuild/rules_python/archive/{}.tar.gz".format(version),
        ],
    )
