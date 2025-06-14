class CursorCSS {
  final String? url;
  final _TypeCursorCSS? type;

  const CursorCSS({this.url, this.type});

  String build() {
    if (url != null) {
      return [
        'url($url)',
        if (type != null) _mapperTypeCursorCSS(type!),
      ].join(',');
    } else {
      return _mapperTypeCursorCSS(type!);
    }
  }

  String _mapperTypeCursorCSS(_TypeCursorCSS value) {
    switch (value) {
      case _TypeCursorCSS.alias:
        return 'alias';
      case _TypeCursorCSS.allScroll:
        return 'all-scroll';
      case _TypeCursorCSS.auto:
        return 'auto';
      case _TypeCursorCSS.cell:
        return 'cell';
      case _TypeCursorCSS.contextMenu:
        return 'context-menu';
      case _TypeCursorCSS.colResize:
        return 'col-resize';
      case _TypeCursorCSS.copy:
        return 'copy';
      case _TypeCursorCSS.crossHair:
        return 'cross-hair';
      case _TypeCursorCSS.defaultCursor:
        return 'default';
      case _TypeCursorCSS.eResize:
        return 'e-resize';
      case _TypeCursorCSS.ewResize:
        return 'ew-resize';
      case _TypeCursorCSS.grab:
        return 'grab';
      case _TypeCursorCSS.grabbing:
        return 'grabbing';
      case _TypeCursorCSS.help:
        return 'help';
      case _TypeCursorCSS.move:
        return 'move';
      case _TypeCursorCSS.nResize:
        return 'n-resize';
      case _TypeCursorCSS.neResize:
        return 'ne-resize';
      case _TypeCursorCSS.neswResize:
        return 'nesw-resize';
      case _TypeCursorCSS.nsResize:
        return 'ns-resize';
      case _TypeCursorCSS.nwResize:
        return 'nw-resize';
      case _TypeCursorCSS.nwseResize:
        return 'nwse-resize';
      case _TypeCursorCSS.noDrop:
        return 'no-drop';
      case _TypeCursorCSS.none:
        return 'none';
      case _TypeCursorCSS.notAllowed:
        return 'not-allowed';
      case _TypeCursorCSS.pointer:
        return 'pointer';
      case _TypeCursorCSS.progress:
        return 'progress';
      case _TypeCursorCSS.rowResize:
        return 'row-resize';
      case _TypeCursorCSS.sResize:
        return 's-resize';
      case _TypeCursorCSS.seResize:
        return 'se-resize';
      case _TypeCursorCSS.swResize:
        return 'sw-resize';
      case _TypeCursorCSS.text:
        return 'text';
      case _TypeCursorCSS.autoCursor:
        return 'auto';
      case _TypeCursorCSS.verticalText:
        return 'vertical-text';
      case _TypeCursorCSS.wResize:
        return 'w-resize';
      case _TypeCursorCSS.wait:
        return 'wait';
      case _TypeCursorCSS.zoomIn:
        return 'zoom-in';
      case _TypeCursorCSS.zoomOut:
        return 'zoom-out';
    }
  }

  static const alias = CursorCSS(type: _TypeCursorCSS.alias);
  static const allScroll = CursorCSS(type: _TypeCursorCSS.allScroll);
  static const auto = CursorCSS(type: _TypeCursorCSS.auto);
  static const cell = CursorCSS(type: _TypeCursorCSS.cell);
  static const contextMenu = CursorCSS(type: _TypeCursorCSS.contextMenu);
  static const colResize = CursorCSS(type: _TypeCursorCSS.colResize);
  static const copy = CursorCSS(type: _TypeCursorCSS.copy);
  static const crossHair = CursorCSS(type: _TypeCursorCSS.crossHair);
  static const defaultCursor = CursorCSS(type: _TypeCursorCSS.defaultCursor);
  static const eResize = CursorCSS(type: _TypeCursorCSS.eResize);
  static const ewResize = CursorCSS(type: _TypeCursorCSS.ewResize);
  static const grab = CursorCSS(type: _TypeCursorCSS.grab);
  static const grabbing = CursorCSS(type: _TypeCursorCSS.grabbing);
  static const help = CursorCSS(type: _TypeCursorCSS.help);
  static const move = CursorCSS(type: _TypeCursorCSS.move);
  static const nResize = CursorCSS(type: _TypeCursorCSS.nResize);
  static const neResize = CursorCSS(type: _TypeCursorCSS.neResize);
  static const neswResize = CursorCSS(type: _TypeCursorCSS.neswResize);
  static const nsResize = CursorCSS(type: _TypeCursorCSS.nsResize);
  static const nwResize = CursorCSS(type: _TypeCursorCSS.nwResize);
  static const nwseResize = CursorCSS(type: _TypeCursorCSS.nwseResize);
  static const noDrop = CursorCSS(type: _TypeCursorCSS.noDrop);
  static const none = CursorCSS(type: _TypeCursorCSS.none);
  static const notAllowed = CursorCSS(type: _TypeCursorCSS.notAllowed);
  static const pointer = CursorCSS(type: _TypeCursorCSS.pointer);
  static const progress = CursorCSS(type: _TypeCursorCSS.progress);
  static const rowResize = CursorCSS(type: _TypeCursorCSS.rowResize);
  static const sResize = CursorCSS(type: _TypeCursorCSS.sResize);
  static const seResize = CursorCSS(type: _TypeCursorCSS.seResize);
  static const swResize = CursorCSS(type: _TypeCursorCSS.swResize);
  static const textCursor = CursorCSS(type: _TypeCursorCSS.text);
  static const autoCursor = CursorCSS(type: _TypeCursorCSS.autoCursor);
  static const verticalText = CursorCSS(type: _TypeCursorCSS.verticalText);
  static const wResize = CursorCSS(type: _TypeCursorCSS.wResize);
  static const wait = CursorCSS(type: _TypeCursorCSS.wait);
  static const zoomIn = CursorCSS(type: _TypeCursorCSS.zoomIn);
  static const zoomOut = CursorCSS(type: _TypeCursorCSS.zoomOut);
}

enum _TypeCursorCSS {
  alias,
  allScroll,
  auto,
  cell,
  contextMenu,
  colResize,
  copy,
  crossHair,
  defaultCursor,
  eResize,
  ewResize,
  grab,
  grabbing,
  help,
  move,
  nResize,
  neResize,
  neswResize,
  nsResize,
  nwResize,
  nwseResize,
  noDrop,
  none,
  notAllowed,
  pointer,
  progress,
  rowResize,
  sResize,
  seResize,
  swResize,
  text,
  autoCursor,
  verticalText,
  wResize,
  wait,
  zoomIn,
  zoomOut,
}
