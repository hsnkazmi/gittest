import 'dart:async';

download() {
  Future<String> pass = Future.delayed(const Duration(milliseconds: 500), () {
    return "love";
  });
  return pass;
}

printflie() async {
  String fromdownload = await download();
  print(fromdownload);
}

main() {
  print("staryt");
  printflie();
  print('end');
}
