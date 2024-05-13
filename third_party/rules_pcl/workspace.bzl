load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    http_archive(
        name = "rules_pcl",
        strip_prefix = "rules_pcl-1.1.0",
        sha256 = "987dd22ac4637093414ff2b9291d0e9e29f3ef156a12d5471eedaa2d5beb0a93",
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_pcl-1.1.0.tar.gz",
            "https://github.com/kgreenek/rules_pcl/archive/refs/tags/v1.1.0.tar.gz",
        ],
        patch_args = ["-p1"],
        patches = [
            clean_dep("//third_party/rules_pcl:p00_link_kissfftr.patch"),
            clean_dep("//third_party/rules_pcl:p01_aliyun_mirrors.patch"),
            clean_dep("//third_party/rules_pcl:p02_pcl_build.patch"),
            clean_dep("//third_party/rules_pcl:p04_fix_lz4_include.patch"),
        ],
    )
