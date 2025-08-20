/// Класс, содержащий информацию о странице с ключом [pageKeyToInsert], которую необходимо поместить перед
/// страницей с ключём [pageKeyBeforeWhichInsert] в стеке страниц.
/// Используется в CrBeamLocation.
class InsertPageInfo {
  final String pageKeyToInsert;
  final String pageKeyBeforeWhichInsert;

  const InsertPageInfo({
    required this.pageKeyToInsert,
    required this.pageKeyBeforeWhichInsert,
  });
}
