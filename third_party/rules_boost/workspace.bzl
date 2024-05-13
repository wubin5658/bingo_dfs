"""Loads the rules_boost package"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    # Note(jiaming):
    # Here we choose the latest (as of 08.04.2021) version of rules_boost as
    # AArch64 support was only complete in recent versions. We had to resolve
    # all build errors caused by API changes since Boost 1.69+ and refactored
    # HttpProxy implementation as it was dependent on Boost.Beast.
    # PS: Use of git_repository is discouraged. Ref:
    # https://docs.bazel.build/versions/main/external.html#repository-rules
    git_rev = "fb9f3c9a6011f966200027843d894923ebc9cd0b"
    http_archive(
        name = "com_github_nelhage_rules_boost",
        sha256 = "046f774b185436d506efeef8be6979f2c22f1971bfebd0979bafa28088bf28d0",
        strip_prefix = "rules_boost-{}".format(git_rev),
        patch_args = ["-p1"],
        patches = [
            clean_dep("//third_party/rules_boost:p01_boost_mirror.patch"),
            clean_dep("//third_party/rules_boost:p02_zlib_renamed.patch"),
            clean_dep("//third_party/rules_boost:p06_boost_apply_patch.patch"),
        ],
        urls = [
            "https://qcraft-web.oss-cn-beijing.aliyuncs.com/cache/packages/rules_boost-{}.tar.gz".format(git_rev),
            "https://github.com/nelhage/rules_boost/archive/{}.tar.gz".format(git_rev),
        ],
    )
