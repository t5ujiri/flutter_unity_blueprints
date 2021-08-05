url="https://packages.grpc.io/archive/2021/08/bf186156bc08b0c0d7497a801b4ee9adc3765f67-828394e7-1f4f-4a65-a89d-67852138fa2e/csharp/grpc_unity_package.2.40.0-dev202108010953.zip"
unity_project_name="flutter_unity_blueprints_unity"

# make working dir
mkdir tmp

# download & extract to unity plugins dir
curl -o ./tmp/grpc_unity_package.zip ${url}
unzip ./tmp/grpc_unity_package.zip -d ./tmp
cp -rf ./tmp/Plugins/* ./unity/${unity_project_name}/Assets/Plugins

# delete working dir
rm -rf ./tmp

# delete unused meta files
rm unity/${unity_project_name}/Assets/Plugins/Google.Protobuf/lib/net45/Google.Protobuf.xml.meta \
  unity/${unity_project_name}/Assets/Plugins/System.Buffers/lib/net45/System.Buffers.xml.meta \
  unity/${unity_project_name}/Assets/Plugins/System.Memory/lib/net45/System.Memory.xml.meta
