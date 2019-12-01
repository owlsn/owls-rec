# https://docs.bazel.build/versions/master/be/c-cpp.html#cc_library
cc_library(
  name = "hello-greet",
  srcs = ["hello-greet.cc"],
  hdrs = ["hello-greet.h"]
)

# https://docs.bazel.build/versions/master/be/c-cpp.html#cc_binary
cc_binary(
  name = "hello-world",
  srcs = ["hello-world.cc"],
  deps = [
    ":hello-greet",
    "//lib:hello-time"
    ],
)

cc_test(
    name = "hello-test",
    srcs = ["hello-test.cc"],
    copts = ["-Iexternal/gtest/include"],
    deps = [
        "@googletest//:gtest_main",
        ":hello-greet",
        "@zlib//:zlib"
    ],
)

cc_test(
    name = "hello-benchmark",
    srcs = ["hello-benchmark.cc"],
    deps = [
        "@benchmark//:benchmark_main"
    ],
)