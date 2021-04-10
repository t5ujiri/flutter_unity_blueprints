curl -o ./tmp/grpc_unity_package.zip https://packages.grpc.io/archive/2021/04/1fb4f715dbc901ea69040538d056d261f33a066a-55f77590-2f4f-4d5f-8796-d55283f8d8b3/csharp/grpc_unity_package.2.38.0-dev202104090955.zip
unzip ./tmp/grpc_unity_package.zip -d ./tmp
cp -rf ./tmp/Plugins/* ./unity/flutter_unity_blueprints_unity/Assets/Plugins
rm -rf ./tmp