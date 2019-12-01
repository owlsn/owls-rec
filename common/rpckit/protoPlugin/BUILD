proto_library(
    name = 'RpckitProto',
    srcs = [
        'Rpckit.proto',
    ],
)

cc_binary(
    name = 'ProtoPlugin',
    srcs = [
        'ProtoPlugin.cpp',
        'ServiceGenerator.cpp',
    ],
    deps = [
        ':RpckitProto',
        '@protobuf//:protoc',
        '@boost//:system',
    ],
)
