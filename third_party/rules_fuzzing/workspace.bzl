load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    http_archive(
        name = "rules_fuzzing",
        strip_prefix = "rules_fuzzing-0.3.1",
        sha256 = "4965ff7341f4759f07c83b146f603d6e8cfc35ef99fee3ef39bf61ffa96b1f8b",
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_fuzzing-0.3.1.tar.gz",
            "https://github.com/bazelbuild/rules_fuzzing/archive/v0.3.1.tar.gz",
        ],
        patch_args = ["-p1"],
        patches = [clean_dep("//third_party/rules_fuzzing:p01_deprecate_py_repositories.patch")],
    )
