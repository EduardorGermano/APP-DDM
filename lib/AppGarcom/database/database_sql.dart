class DatabaseSql {
  DatabaseSql._();

  static const String criarTabelaMesa = '''
    CREATE TABLE mesa (
      id INTERGER PRIMARY KEY AUTOINCREMENT,
      nome_cliente TEXT NOT NULL,
      numero_mesa INTERGET NOT NULL,
      numero_celular CHAR(11) NOT NULL
    )
  ''';
}
