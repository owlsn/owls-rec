proto_library(
    name = 'RpckitProto',
    srcs = [
        'Rpckit.proto',
    ],
    deps = [
      '@com_google_protobuf//:descriptor_proto'
    ]
)

cc_binary(
    name = 'ProtoPlugin',
    srcs = [
        'ProtoPlugin.cpp',
        'ServiceGenerator.cpp',
    ],
    deps = [
        ':RpckitProto',
        '@com_google_protobuf//:protoc',
        '@boost//:system',
    ],
)
