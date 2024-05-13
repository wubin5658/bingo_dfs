"""Loads the grpc library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    envoy_ver = "ff47e0a4bd03c0580305f9b138cc7937b63f7900"
    http_archive(
        name = "envoy_api",
        sha256 = "1f3f109c8e3dba3d413f6ecc99ca0047ef10b94564f42ca126fee7531790d064",
        strip_prefix = "data-plane-api-{}".format(envoy_ver),
        patch_args = ["-p1"],
        patches = [
            clean_dep("//third_party/grpc:p01_fix_buildtools_checksum.patch"),
        ],
        urls = [
            "https://github.com/envoyproxy/data-plane-api/archive/{}.tar.gz".format(envoy_ver),
        ],
    )

    version = "1.45.2"
    http_archive(
        name = "com_github_grpc_grpc",
        strip_prefix = "grpc-{}".format(version),
        sha256 = "e18b16f7976aab9a36c14c38180f042bb0fd196b75c9fd6a20a2b5f934876ad6",
        urls = [
            "https://github.com/grpc/grpc/archive/v{}.tar.gz".format(version),
        ],
        patch_args = ["-p1"],
        patches = [
            clean_dep("//third_party/grpc:p01_use_openssl.patch"),
            clean_dep("//third_party/grpc:p02_fix_dwyu.patch"),
            clean_dep("//third_party/grpc:p03_use_com_grail_bazel_compdb.patch"),
        ],
    )
