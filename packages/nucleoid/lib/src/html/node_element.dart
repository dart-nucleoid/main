import '../../html.dart';

abstract class NodeElement {
  const NodeElement();

  String build();
}

abstract class ChildNodeElement extends NodeElement {
  final NodeElement? child;
  final List<NodeElement>? children;

  const ChildNodeElement({this.child, this.children});

  @override
  String build() {
    if (child != null) {
      return child!.build();
    } else if (children != null) {
      return children!.map((child) => child.build()).toList().join('\n');
    } else {
      return '';
    }
  }
}

abstract class NoEvents {}

class Text extends NodeElement {
  final String text;

  Text(this.text);

  @override
  String build() => text;
}

class Br extends NodeElement {
  @override
  String build() => '<br>';
}

class StyleElement {
  final String? name;
  final StyleCSS? style;
  final Map<int, StyleCSS>? width;
  final Map<String, StyleCSS>? theme;
  final StyleElement? child;
  final List<StyleElement>? children;
  final String? combinator;

  const StyleElement({
    this.name,
    this.style,
    this.width,
    this.theme,
    this.child,
    this.children,
    String? combinator,
  }) : combinator = combinator ?? ' ';

  String get nameStyle => '$name';

  StyleElement.fromText(String textData, {this.name, this.combinator})
    : style = StyleCSS.fromText(textData),
      width = null,
      theme = null,
      child = null,
      children = null;
}

class StyleId extends StyleElement {
  const StyleId({
    required String name,
    StyleCSS? style,
    Map<int, StyleCSS>? width,
    Map<String, StyleCSS>? theme,
    StyleElement? child,
    List<StyleElement>? children,
    String? combinator,
  }) : super(
         name: name,
         style: style,
         width: width,
         theme: theme,
         child: child,
         children: children,
         combinator: combinator,
       );

  @override
  String get nameStyle => '#$name';
}

class StyleClass extends StyleElement {
  const StyleClass({
    required String name,
    StyleCSS? style,
    Map<int, StyleCSS>? width,
    Map<String, StyleCSS>? theme,
    StyleElement? child,
    List<StyleElement>? children,
    String? combinator,
  }) : super(
         name: name,
         style: style,
         width: width,
         theme: theme,
         child: child,
         children: children,
         combinator: combinator,
       );

  @override
  String get nameStyle => '.$name';
}

String _echoCombinator(String combinator) {
  switch (combinator) {
    case '':
    case ':':
    case '::':
    case ' ':
      return combinator;
    default:
      return ' $combinator ';
  }
}

String _echoStyleName(StyleElement el, [String? pathName]) {
  return [
    if (pathName != null) pathName,
    if (pathName != null && el.combinator != null)
      _echoCombinator(el.combinator!),
    el.nameStyle,
  ].join();
}

String echoAllStyleClass(List<StyleElement> list) {
  var map = <int, List<_StyleElementWithPathName>>{};
  var resultList = _getAllStyleElementWithPathName(list);

  resultList
      .where((element) => element.styleElement.width != null)
      .toList()
      .forEach((element) {
        element.styleElement.width?.keys.forEach((width) {
          if (!map.containsKey(width)) {
            map[width] = <_StyleElementWithPathName>[];
          }

          map[width]!.add(element);
        });
      });

  var keys = map.keys.toList();
  keys.sort();
  // ,
  return [
    _mergeEchoStyle(
      resultList.where((e) => e.styleElement.style != null).toList(),
    ),
    keys.reversed
        .map(
          (width) => [
            '@media screen and (max-width: ${width}px) {\n',
            _mergeEchoStyle(map[width]!, width),
            '}\n',
          ].join(),
        )
        .toList()
        .join('\n'),
  ].join('\n');
}

String _mergeEchoStyle(List<_StyleElementWithPathName> list, [int? width]) {
  var processedList = <StyleCSS>[];
  var buffer = [];

  if (width == null) {
    list.forEach((e) {
      if (!processedList.contains(e.styleElement.style)) {
        processedList.add(e.styleElement.style!);

        buffer.add(
          [
            list
                .where((el) => el.styleElement.style == e.styleElement.style)
                .map((e) => e.nameStyle)
                .join(', '),
            ' {',
            e.styleElement.style!.build(),
            '}\n',
          ].join(),
        );
      }
    });
  } else {
    list.forEach((e) {
      if (!processedList.contains(e.styleElement.width![width])) {
        processedList.add(e.styleElement.width![width]!);

        buffer.add(
          [
            list
                .where(
                  (el) =>
                      el.styleElement.width![width] ==
                      e.styleElement.width![width],
                )
                .map((e) => e.nameStyle)
                .join(', '),
            ' {',
            e.styleElement.width![width]!.build(),
            '}\n',
          ].join(),
        );
      }
    });
  }

  return buffer.join();
}

class _StyleElementWithPathName {
  final String? pathName;
  final StyleElement styleElement;

  _StyleElementWithPathName(this.styleElement, this.pathName);

  String get nameStyle => _echoStyleName(styleElement, pathName);

  Map<int, StyleCSS>? get width => styleElement.width;
}

List<_StyleElementWithPathName> _getAllStyleElementWithPathName(
  List<StyleElement> list, [
  String? pathName,
]) {
  var resultList = <_StyleElementWithPathName>[];

  list.forEach((element) {
    resultList.add(_StyleElementWithPathName(element, pathName));

    if (element.child != null || element.children != null) {
      resultList.addAll(
        _getAllStyleElementWithPathName(
          element.child != null ? [element.child!] : element.children!,
          _echoStyleName(element, pathName),
        ),
      );
    }

    if (element.theme != null) {
      resultList.addAll(
        element.theme!.map((key, value) {
          var pathNameTheme = 'html[data-theme=\'$key\'] ${pathName ?? ''}';
          return MapEntry(
            key,
            _StyleElementWithPathName(
              StyleElement(
                combinator: element.combinator,
                name: '${element.nameStyle == 'html' ? '' : element.nameStyle}',
                style: value,
              ),
              pathNameTheme,
            ),
          );
        }).values,
      );
    }
  });

  return resultList;
}

enum InputType {
  button,
  checkbox,
  file,
  hidden,
  image,
  password,
  radio,
  reset,
  submit,
  text,
}

String mapperInputType(InputType inputType) {
  switch (inputType) {
    case InputType.button:
      return 'button';
    case InputType.checkbox:
      return 'checkbox';
    case InputType.file:
      return 'file';
    case InputType.hidden:
      return 'hidden';
    case InputType.image:
      return 'image';
    case InputType.password:
      return 'password';
    case InputType.radio:
      return 'radio';
    case InputType.reset:
      return 'reset';
    case InputType.submit:
      return 'submit';
    case InputType.text:
      return 'text';
  }
}

enum InputAutocomplete { on, off }

String mapperInputAutocomplete(InputAutocomplete inputAutocomplete) {
  switch (inputAutocomplete) {
    case InputAutocomplete.on:
      return 'on';
    case InputAutocomplete.off:
      return 'off';
  }
}

enum FormMethod { get, post }

String mapperFormMethod(FormMethod formMethod) {
  switch (formMethod) {
    case FormMethod.get:
      return 'get';
    case FormMethod.post:
      return 'post';
  }
}

enum ButtonType { button, reset, submit }

String mapperButtonType(ButtonType buttonType) {
  switch (buttonType) {
    case ButtonType.button:
      return 'button';
    case ButtonType.reset:
      return 'reset';
    case ButtonType.submit:
      return 'submit';
  }
}

enum WrapTextarea { soft, hard }

String mapperWrapTextarea(WrapTextarea wrapTextarea) {
  switch (wrapTextarea) {
    case WrapTextarea.soft:
      return 'soft';
    case WrapTextarea.hard:
      return 'hard';
  }
}
