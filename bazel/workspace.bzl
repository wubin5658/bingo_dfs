"""
External dependencies to be loaded into WORKSPACE
"""
# Sorted alphabetically

load("//third_party/absl:workspace.bzl", absl = "repo")
load("//third_party/glog:workspace.bzl", glog = "repo")
load("//third_party/grpc:workspace.bzl", grpc = "repo")
load("//third_party/grpc_gateway:workspace.bzl", grpc_gateway = "repo")
load("//third_party/protobuf:workspace.bzl", protobuf = "repo")
load("//third_party/rules_boost:workspace.bzl", rules_boost = "repo")
load("//third_party/rules_folly:workspace.bzl", rules_folly = "repo")
load("//third_party/rules_foreign_cc:workspace.bzl", rules_foreign_cc = "repo")
load("//third_party/rules_fuzzing:workspace.bzl", rules_fuzzing = "repo")
load("//third_party/rules_go:workspace.bzl", rules_go = "repo")
load("//third_party/rules_pcl:workspace.bzl", rules_pcl = "repo")
load("//third_party/rules_pkg:workspace.bzl", rules_pkg = "repo")
load("//third_party/rules_proto:workspace.bzl", rules_proto = "repo")
load("//third_party/rules_proto_grpc:workspace.bzl", rules_proto_grpc = "repo")
load("//third_party/rules_python:workspace.bzl", rules_python = "repo")

def initialize_third_party_repos():
    absl()
    glog()
    grpc()
    grpc_gateway()
    protobuf()
    rules_boost()
    rules_folly()
    rules_foreign_cc()
    rules_fuzzing()
    rules_go()
    rules_pcl()
    rules_pkg()
    rules_proto()
    rules_proto_grpc()
    rules_python()

def bingo_repositories():
    initialize_third_party_repos()
