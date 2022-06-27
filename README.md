# flutter_unity_blueprints

A template for flutter app with UaaL.

[![Image from Gyazo](./doc/sample.gif)](https://gyazo.com/17a4ad8ed820a9f994a5add52b85757f)

## Getting Started

1. `make setup`
1. open `unity/flutter_unity_blueprints` with Unity Editor 2019.4 or beyond, and `Build/Export iOS` to export Xcode project.
1. Embed UnityFramework to Runner target
1. Build Runner target

## Architecture
### Model
- [UniRx](https://github.com/neuecc/UniRx)
### Flutter<=>Unity process communication 
- [flutter-unity](https://github.com/gatari/flutter-unity)
### DI
- [Riverpod](https://riverpod.dev/)
- [VContainer](https://github.com/hadashiA/VContainer)

