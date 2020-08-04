// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url.dart';

// **************************************************************************
// ModelMysqlGenerator
// **************************************************************************

// Code for "abstract class UrlModelMySQL extends BuiltModelMySQL<CrmFieldsDataBase>"
class UrlModel implements UrlModelMySQL {
  const UrlModel(
      {this.id,
      this.edit,
      this.disabled,
      this.protected,
      this.domain,
      this.url,
      this.categoryId,
      this.pageId,
      this.title,
      this.h1,
      this.keywords,
      this.description,
      this.image,
      this.noindex});

  final int id;
  final DateTime edit;
  final bool disabled;
  final bool protected;
  final int domain;
  final String url;
  final int categoryId;
  final int pageId;
  final String title;
  final String h1;
  final String keywords;
  final String description;
  final String image;
  final bool noindex;

  static Future<UrlModel> byId(int id) async {
    var results = await UrlModelMySQL.db.query(
        'SELECT * FROM `${UrlModelMySQL.table}` WHERE `id` = ? LIMIT 1', [id]);
    if (results.isNotEmpty) {
      var json = results.first;

      return UrlModel.fromJSON(json.fields);
    } else {
      return null;
    }
  }

  static Future<List<UrlModel>> select({
    @required UrlModelQuery where,
    int offset,
    int count,
    OrderMySQL<UrlModelField> order,
    List<UrlModelField> select,
  }) =>
      selectJoin<UrlModel>(
        where: where,
        builder: (json) => UrlModel.fromJSON(json),
        offset: offset,
        count: count,
        order: order,
        select: select,
      );

  static Future<List<T>> selectJoin<T>({
    @required UrlModelQuery where,
    @required FunctionBuilderFromJson<T> builder,
    int offset,
    int count,
    OrderMySQL<FieldMySQL> order,
    List<FieldMySQL> select,
    List<ModelQueryMySQL> joinList,
    JoinTypeMySQL joinType,
    String alias,
  }) async {
    final modelQueryMySQL = ModelQueryMySQL(
        table: UrlModelMySQL.table,
        queryWhere: where,
        offset: offset,
        count: count,
        order: order,
        select: select,
        joinList: joinList,
        joinType: joinType,
        alias: alias);
    var results = await UrlModelMySQL.db
        .query(modelQueryMySQL.selectSql, modelQueryMySQL.selectValues);
    return [for (var row in results) builder(row.fields)];
  }

  static Future<void> updateQuery({
    @required UrlModelQuery set,
    UrlModelQuery where,
    int offset,
    int count,
    OrderMySQL<FieldMySQL> order,
  }) async {
    final modelQueryMySQL = ModelQueryMySQL(
        table: UrlModelMySQL.table,
        queryWhere: where,
        querySet: set,
        offset: offset,
        count: count,
        order: order);
    await UrlModelMySQL.db
        .query(modelQueryMySQL.updateSql, modelQueryMySQL.updateValues);
  }

  static Future<void> insertSql({
    @required UrlModelQuery insert,
  }) async {
    final modelQueryMySQL =
        ModelQueryMySQL(table: UrlModelMySQL.table, querySet: insert);
    final result = await UrlModelMySQL.db
        .query(modelQueryMySQL.insertSql, modelQueryMySQL.insertValues);
  }

  factory UrlModel.fromJSON(Map<String, dynamic> json, [String aliasTable]) {
    final prefix = aliasTable != null ? '${aliasTable}__' : '';
    return UrlModel(
        id: json['${prefix}id'],
        edit: json['${prefix}edit'],
        disabled: FieldType.bool.fromMySQL(json['${prefix}disabled']),
        protected: FieldType.bool.fromMySQL(json['${prefix}protected']),
        domain: json['${prefix}domain'],
        url: json['${prefix}url'],
        categoryId: json['${prefix}category_id'],
        pageId: json['${prefix}page_id'],
        title: json['${prefix}title'],
        h1: json['${prefix}h1'],
        keywords: json['${prefix}keywords'],
        description: json['${prefix}description'],
        image: json['${prefix}image'],
        noindex: FieldType.bool.fromMySQL(json['${prefix}noindex']));
  }
}

class UrlModelQuery extends QueryMySQL {
  UrlModelQuery.list(String connector, List<UrlModelQuery> list)
      : super.list(connector, list);

  factory UrlModelQuery(String connector, String operator,
          {int id,
          DateTime edit,
          bool disabled,
          bool protected,
          int domain,
          String url,
          int categoryId,
          int pageId,
          String title,
          String h1,
          String keywords,
          String description,
          String image,
          bool noindex,
          bool editISNULL}) =>
      UrlModelQuery.alias(connector, operator, null,
          id: id,
          edit: edit,
          disabled: disabled,
          protected: protected,
          domain: domain,
          url: url,
          categoryId: categoryId,
          pageId: pageId,
          title: title,
          h1: h1,
          keywords: keywords,
          description: description,
          image: image,
          noindex: noindex,
          editISNULL: editISNULL);

  UrlModelQuery.alias(String connector, String operator, String alias,
      {int id,
      DateTime edit,
      bool disabled,
      bool protected,
      int domain,
      String url,
      int categoryId,
      int pageId,
      String title,
      String h1,
      String keywords,
      String description,
      String image,
      bool noindex,
      bool editISNULL})
      : super(
            [
              if (id != null)
                '${alias != null ? '$alias.' : ''}`id` $operator ?',
              if (edit != null)
                '${alias != null ? '$alias.' : ''}`edit` $operator ?',
              if (edit == null && editISNULL != null)
                '`edit` ${editISNULL ? 'IS NULL' : 'IS NOT NULL'}',
              if (disabled != null)
                '${alias != null ? '$alias.' : ''}`disabled` $operator ?',
              if (protected != null)
                '${alias != null ? '$alias.' : ''}`protected` $operator ?',
              if (domain != null)
                '${alias != null ? '$alias.' : ''}`domain` $operator ?',
              if (url != null)
                '${alias != null ? '$alias.' : ''}`url` $operator ?',
              if (categoryId != null)
                '${alias != null ? '$alias.' : ''}`category_id` $operator ?',
              if (pageId != null)
                '${alias != null ? '$alias.' : ''}`page_id` $operator ?',
              if (title != null)
                '${alias != null ? '$alias.' : ''}`title` $operator ?',
              if (h1 != null)
                '${alias != null ? '$alias.' : ''}`h1` $operator ?',
              if (keywords != null)
                '${alias != null ? '$alias.' : ''}`keywords` $operator ?',
              if (description != null)
                '${alias != null ? '$alias.' : ''}`description` $operator ?',
              if (image != null)
                '${alias != null ? '$alias.' : ''}`image` $operator ?',
              if (noindex != null)
                '${alias != null ? '$alias.' : ''}`noindex` $operator ?'
            ].join(' $connector '),
            [
              if (id != null) id,
              if (edit != null) edit,
              if (disabled != null) disabled,
              if (protected != null) protected,
              if (domain != null) domain,
              if (url != null) url,
              if (categoryId != null) categoryId,
              if (pageId != null) pageId,
              if (title != null) title,
              if (h1 != null) h1,
              if (keywords != null) keywords,
              if (description != null) description,
              if (image != null) image,
              if (noindex != null) noindex
            ]);

  UrlModelQuery.fields(String connector, String operator, String alias,
      {FieldMySQL id,
      FieldMySQL edit,
      FieldMySQL disabled,
      FieldMySQL protected,
      FieldMySQL domain,
      FieldMySQL url,
      FieldMySQL categoryId,
      FieldMySQL pageId,
      FieldMySQL title,
      FieldMySQL h1,
      FieldMySQL keywords,
      FieldMySQL description,
      FieldMySQL image,
      FieldMySQL noindex,
      bool editISNULL})
      : super([
          if (id != null)
            '`id` $operator ${alias != null ? '$alias.' : ''}${id.name}',
          if (edit != null)
            '`edit` $operator ${alias != null ? '$alias.' : ''}${edit.name}',
          if (edit == null && editISNULL != null)
            '`edit` ${editISNULL ? 'IS NULL' : 'IS NOT NULL'}',
          if (disabled != null)
            '`disabled` $operator ${alias != null ? '$alias.' : ''}${disabled.name}',
          if (protected != null)
            '`protected` $operator ${alias != null ? '$alias.' : ''}${protected.name}',
          if (domain != null)
            '`domain` $operator ${alias != null ? '$alias.' : ''}${domain.name}',
          if (url != null)
            '`url` $operator ${alias != null ? '$alias.' : ''}${url.name}',
          if (categoryId != null)
            '`category_id` $operator ${alias != null ? '$alias.' : ''}${categoryId.name}',
          if (pageId != null)
            '`page_id` $operator ${alias != null ? '$alias.' : ''}${pageId.name}',
          if (title != null)
            '`title` $operator ${alias != null ? '$alias.' : ''}${title.name}',
          if (h1 != null)
            '`h1` $operator ${alias != null ? '$alias.' : ''}${h1.name}',
          if (keywords != null)
            '`keywords` $operator ${alias != null ? '$alias.' : ''}${keywords.name}',
          if (description != null)
            '`description` $operator ${alias != null ? '$alias.' : ''}${description.name}',
          if (image != null)
            '`image` $operator ${alias != null ? '$alias.' : ''}${image.name}',
          if (noindex != null)
            '`noindex` $operator ${alias != null ? '$alias.' : ''}${noindex.name}'
        ].join(' $connector '));

  UrlModelQuery.set(
      {int id,
      DateTime edit,
      bool disabled,
      bool protected,
      int domain,
      String url,
      int categoryId,
      int pageId,
      String title,
      String h1,
      String keywords,
      String description,
      String image,
      bool noindex,
      bool editSETNULL = false})
      : super(
            [
              if (id != null) '`id` = ?',
              if (edit != null || editSETNULL) '`edit` = ?',
              if (disabled != null) '`disabled` = ?',
              if (protected != null) '`protected` = ?',
              if (domain != null) '`domain` = ?',
              if (url != null) '`url` = ?',
              if (categoryId != null) '`category_id` = ?',
              if (pageId != null) '`page_id` = ?',
              if (title != null) '`title` = ?',
              if (h1 != null) '`h1` = ?',
              if (keywords != null) '`keywords` = ?',
              if (description != null) '`description` = ?',
              if (image != null) '`image` = ?',
              if (noindex != null) '`noindex` = ?'
            ].join(' = '),
            [
              if (id != null) id,
              if (edit != null || editSETNULL) edit,
              if (disabled != null) disabled,
              if (protected != null) protected,
              if (domain != null) domain,
              if (url != null) url,
              if (categoryId != null) categoryId,
              if (pageId != null) pageId,
              if (title != null) title,
              if (h1 != null) h1,
              if (keywords != null) keywords,
              if (description != null) description,
              if (image != null) image,
              if (noindex != null) noindex
            ]);
}

class UrlModelField extends FieldMySQL {
  const UrlModelField(String name) : super(name: name);
  static const ALL = [
    id,
    edit,
    disabled,
    protected,
    domain,
    url,
    categoryId,
    pageId,
    title,
    h1,
    keywords,
    description,
    image,
    noindex
  ];
  static const id = UrlModelField('id');
  static const edit = UrlModelField('edit');
  static const disabled = UrlModelField('disabled');
  static const protected = UrlModelField('protected');
  static const domain = UrlModelField('domain');
  static const url = UrlModelField('url');
  static const categoryId = UrlModelField('category_id');
  static const pageId = UrlModelField('page_id');
  static const title = UrlModelField('title');
  static const h1 = UrlModelField('h1');
  static const keywords = UrlModelField('keywords');
  static const description = UrlModelField('description');
  static const image = UrlModelField('image');
  static const noindex = UrlModelField('noindex');
}

class UrlModelTest extends FieldMySQL {
  static Future<void> testTable({@required bool autoCorrect}) =>
      MySQLDataBase.testTable(UrlModelMySQL.db, UrlModelMySQL.table, fields,
          autoCorrect: autoCorrect);

  static const List<FieldMySQL> fields = [
    FieldMySQL(
        name: 'id',
        type: FieldType('int(12)', FieldTypeDart.int, 12),
        index: false,
        autoIncrement: true,
        primaryKey: true,
        nullable: false),
    FieldMySQL(
        name: 'edit',
        type: FieldType('datetime', FieldTypeDart.datetime),
        index: true,
        autoIncrement: false,
        primaryKey: false,
        nullable: true),
    FieldMySQL(
        name: 'disabled',
        type: FieldType('tinyint(1)', FieldTypeDart.bool, 1),
        index: true,
        defaultValue: false,
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'protected',
        type: FieldType('tinyint(1)', FieldTypeDart.bool, 1),
        index: false,
        defaultValue: false,
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'domain',
        type: FieldType('int(2)', FieldTypeDart.int, 2),
        index: true,
        defaultValue: 0,
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'url',
        type: FieldType('varchar(128)', FieldTypeDart.string, 128),
        index: true,
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'category_id',
        type: FieldType('int(12)', FieldTypeDart.int, 12),
        index: true,
        defaultValue: 0,
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'page_id',
        type: FieldType('int(12)', FieldTypeDart.int, 12),
        index: true,
        defaultValue: 1,
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'title',
        type: FieldType('varchar(256)', FieldTypeDart.string, 256),
        index: false,
        defaultValue: '',
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'h1',
        type: FieldType('varchar(256)', FieldTypeDart.string, 256),
        index: false,
        defaultValue: '',
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'keywords',
        type: FieldType('varchar(256)', FieldTypeDart.string, 256),
        index: false,
        defaultValue: '',
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'description',
        type: FieldType('varchar(256)', FieldTypeDart.string, 256),
        index: false,
        defaultValue: '',
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'image',
        type: FieldType('varchar(256)', FieldTypeDart.string, 256),
        index: false,
        defaultValue: '',
        autoIncrement: false,
        primaryKey: false,
        nullable: false),
    FieldMySQL(
        name: 'noindex',
        type: FieldType('tinyint(1)', FieldTypeDart.bool, 1),
        index: false,
        defaultValue: false,
        autoIncrement: false,
        primaryKey: false,
        nullable: false)
  ];
}
