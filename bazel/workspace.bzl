"""
External dependencies to be loaded into WORKSPACE
"""
# Sorted alphabetically

load("//third_party/absl:workspace.bzl", absl = "repo")
load("//third_party/glog:workspace.bzl", glog = "repo")
load("//third_party/grpc:workspace.bzl", grpc = "repo")
load("//third_party/protobuf:workspace.bzl", protobuf = "repo")
load("//third_party/rules_python:workspace.bzl", rules_python = "repo")
load("//third_party/rules_swift:workspace.bzl", rules_swift = "repo")

def initialize_third_party_repos():
    absl()
    glog()
    protobuf()
    grpc()
    rules_python()
    rules_swift()

def bingo_repositories():
    initialize_third_party_repos()
