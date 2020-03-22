appLogs(Object object, {String tag = 'APPLOGS'}) {
  String message = "$object";
  int maxLogSize = 1000;
  for (int i = 0; i <= message.length / maxLogSize; i++) {
    int start = i * maxLogSize;
    int end = (i + 1) * maxLogSize;
    end = end > message.length ? message.length : end;
    print("$tag : ${message.substring(start, end)}");
  }
}
