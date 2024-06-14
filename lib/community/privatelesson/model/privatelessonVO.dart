class privatelessonVO {
  late String pidx;
  late String idx;
  late String name;
  late int seq;
  late String val;

  privatelessonVO({required this.pidx, required this.idx, required this.name, required this.seq, required this.val});

  privatelessonVO.fromMap(Map<String, dynamic>? map) {
    pidx = map?['pidx'] ?? '';
    idx = map?['idx'] ?? '';
    name = map?['name'] ?? '';
    seq = map?['seq'] ?? 0;
    val = map?['val'] ?? '';
  }
}