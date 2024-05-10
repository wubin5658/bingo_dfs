"""Loads the glog library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    gflags_version = "2.2.2"
    glog_version = "0.6.0"
    http_archive(
        name = "com_github_gflags_gflags",
        sha256 = "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf",
        strip_prefix = "gflags-{}".format(gflags_version),
        urls = ["https://github.com/gflags/gflags/archive/v{}.tar.gz".format(gflags_version)],
    )
    http_archive(
        name = "com_github_google_glog",
        sha256 = "122fb6b712808ef43fbf80f75c52a21c9760683dae470154f02bddfc61135022",
        strip_prefix = "glog-{}".format(glog_version),
        urls = [
            "https://github.com/google/glog/archive/v{}.zip".format(glog_version),
        ],
    )
