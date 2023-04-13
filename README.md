# Flutter UI

> Flutter 기본 위젯들을 다뤄본 프로젝트입니다.

## Stateless Widget

> 가장 기본적인 위젯
> 아무런 데이터를 가지고있지 않고, 화면에 그리는 역할만 하는 위젯

## Stateful Widget

> 상태를 가지고있는 위젯 상태가 바뀌어 화면이 바뀌는 위젯
> State가 바뀔때마다 build 메소드를 다시 실행해 화면이 다시 그려짐

> setState

setState 함수를 이용해서 상태를 변경해야 화면이 다시 그려짐 리액트의 setState와 비슷한 역할을 함

화면이 변하지 않기를 원한다면 state를 바꾸고 setState를 호출하지 않으면 화면이 바뀌지 않음

생각보다 React에서와는 달리 Flutter에서는 그렇게까지 많이는 사용하지 않음

### life cycle

> Flutter Stateful Widget도 생명주기를 가진다.

StatefulWidget은 build 메소드 이외에도 다양한 생명주기 메소드를 가짐

1. initState
   상태를 초기화해주기 위한 메소드, 필수로 사용하진 않아도 됨, 대부분의 상황에서 사용하지 않으나 부모 요소에 의존하는 데이터를 초기화할 때 사용
   항상 build 메소드보다 먼저 호출되어야하고 단 한번만 호출됨

2. dispose
   위젯이 제거될 때 호출되는 메소드, 메모리 누수를 방지하기 위해 사용, useEffect의 return, ComponentWillUnmount와 비슷한 역할을 함

이외에 많은 생명주기 메소드들이 있음

## VSCode Setting

"dart.previewFlutterUiGuides": true, 설정으로 VSCODE에서 트리 형태로 위젯들을 볼 수 있습니다.

## DevTools

돋보기,

## Build Context

> 앱의 모든 스타일을 한 곳에 저장할 수 있음

앱의 모든 위젯들이 BuildContext를 가지고 있음  
Context란 이전에 있는 상위 요소들의 모든 정보를 가지고 있음 -> 부모 요소에 접근할 수 있고 이를 통해 themeDate를 가져올 수 있음

```dart
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        home: Scaffold(
            ...
}


class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}

```

App의 ThemeData를 가져와서 MyLargeTitle의 TextStyle에 적용시키기 위해 MyLargeTitle에서 Theme.of(context)문법을 사용해서 상위의 ThemeData를 가져옴
