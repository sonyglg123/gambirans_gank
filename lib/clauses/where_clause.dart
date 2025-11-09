import '../core/query.dart';

class WhereClause extends Query {
  String column;
  String operator;
  dynamic value;

  WhereClause(this.column, this.operator, this.value);

  @override
  String build() {
    if (value is String) {
      return "WHERE $column $operator '$value'";
    } else {
      return "WHERE $column $operator $value";
    }
  }
}
