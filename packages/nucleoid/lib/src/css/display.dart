enum DisplayCSS {
  block,
  inline,
  inlineBlock,
  inlineTable,
  inlineFlex,
  inlineGrid,
  listItem,
  none,
  runIn,
  table,
  tableCaption,
  tableCell,
  tableColumnGroup,
  tableColumn,
  tableFooterGroup,
  tableHeaderGroup,
  tableRow,
  tableRowGroup,
  flowRoot,
  flex,
  grid,
  contents,
  unset,
}

String mapperDisplayCSS(DisplayCSS value) {
  switch (value) {
    case DisplayCSS.block:
      return 'block';
    case DisplayCSS.inline:
      return 'inline';
    case DisplayCSS.inlineBlock:
      return 'inline-block';
    case DisplayCSS.inlineTable:
      return 'inline-table';
    case DisplayCSS.inlineFlex:
      return 'inline-flex';
    case DisplayCSS.inlineGrid:
      return 'inline-grid';
    case DisplayCSS.listItem:
      return 'list-item';
    case DisplayCSS.none:
      return 'none';
    case DisplayCSS.runIn:
      return 'run-in';
    case DisplayCSS.table:
      return 'table';
    case DisplayCSS.tableCaption:
      return 'table-caption';
    case DisplayCSS.tableCell:
      return 'table-cell';
    case DisplayCSS.tableColumnGroup:
      return 'table-column-group';
    case DisplayCSS.tableColumn:
      return 'table-column';
    case DisplayCSS.tableFooterGroup:
      return 'table-footer-group';
    case DisplayCSS.tableHeaderGroup:
      return 'table-header-group';
    case DisplayCSS.tableRow:
      return 'table-row';
    case DisplayCSS.tableRowGroup:
      return 'table-row-group';
    case DisplayCSS.flowRoot:
      return 'flow-root';
    case DisplayCSS.flex:
      return 'flex';
    case DisplayCSS.grid:
      return 'grid';
    case DisplayCSS.contents:
      return 'contents';
    case DisplayCSS.unset:
      return 'unset';
  }
}
