# make worksing dir
mkdir tmp

# download & extract to unity plugins dir
curl -o ./tmp/grpc_unity_package.zip https://packages.grpc.io/archive/2021/04/1fb4f715dbc901ea69040538d056d261f33a066a-55f77590-2f4f-4d5f-8796-d55283f8d8b3/csharp/grpc_unity_package.2.38.0-dev202104090955.zip
unzip ./tmp/grpc_unity_package.zip -d ./tmp
cp -rf ./tmp/Plugins/* ./unity/flutter_unity_blueprints_unity/Assets/Plugins

# delete working dir
rm -rf ./tmp

# delete unused meta files
rm unity/flutter_unity_blueprints_unity/Assets/Plugins/Google.Protobuf/lib/net45/Google.Protobuf.xml.meta \
  unity/flutter_unity_blueprints_unity/Assets/Plugins/System.Buffers/lib/net45/System.Buffers.xml.meta \
  unity/flutter_unity_blueprints_unity/Assets/Plugins/System.Memory/lib/net45/System.Memory.xml.meta
