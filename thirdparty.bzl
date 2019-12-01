"""Load dependencies needed to compile the protobuf library as a 3rd-party consumer."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def load_deps():
    """Loads common dependencies needed to compile the protobuf library."""

    if not native.existing_rule("bazel_skylib"):
        http_archive(
          name = "bazel_skylib",
          urls = [
              "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
              "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
          ],
          sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
        )

    if not native.existing_rule("rules_python"):
        http_archive(
          name = "rules_python",
          url = "https://github.com/bazelbuild/rules_python/releases/download/0.0.1/rules_python-0.0.1.tar.gz",
          sha256 = "aa96a691d3a8177f3215b14b0edc9641787abaaa30363a080165d06ab65e1161",
        )

    if not native.existing_rule("zlib"):
        new_git_repository(
          name = "zlib",
          build_file = "@owls_rec//:third_party/zlib.BUILD",
          tag = "v1.2.11",
          remote = "https://github.com/madler/zlib.git"
        )

    if not native.existing_rule("googletest"):
        git_repository(
          name = 'googletest',
          init_submodules = 1,
          remote = 'https://github.com/google/googletest.git',
          tag = 'release-1.10.0'
        )

    if not native.existing_rule("benchmark"):
        git_repository(
          name = 'benchmark',
          init_submodules = 1,
          remote = 'https://github.com/google/benchmark.git',
          tag = 'v1.5.0'
        )

    if not native.existing_rule("protobuf"):
        git_repository(
          name = 'protobuf',
          init_submodules = 1,
          remote = 'https://github.com/protocolbuffers/protobuf.git',
          tag = 'v3.11.0'
        )
