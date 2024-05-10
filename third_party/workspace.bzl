"""
Third party dependencies to be loaded into WORKSPACE
"""
# Sorted alphabetically

load("//third_party/absl:workspace.bzl", absl_init = "repo")
load("//third_party/glog:workspace.bzl", glog_init = "repo")

def initialize_third_party_repos():
    absl_init()
    glog_init()
