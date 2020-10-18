class GksBrain {
  final int eyeRespons;
  final int verbalRespons;
  final int motorRespons;
  int _result;

  GksBrain({this.eyeRespons, this.motorRespons, this.verbalRespons});

  int result() {
    _result = eyeRespons + verbalRespons + motorRespons;

    return _result;
  }

  String comment() {
    if (_result <= 8) {
      return 'A trauma patient with a GCS ≤8 and there is clinical concern that they are unable to protect their airway or that they have an expected worsening clinical course based on exam or imaging findings, then intubation can be considered.';
    }
  }
}
