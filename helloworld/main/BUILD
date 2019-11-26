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
        "@thirdparty//googletest:gtest_main",
        ":hello-greet",
    ],
)

cc_test(
    name = "hello-benchmark",
    srcs = ["hello-benchmark.cc"],
    copts = ["-Iexternal/benchmark/include"],
    deps = [
        "@thirdparty//benchmark:benchmark_main"
    ],
)