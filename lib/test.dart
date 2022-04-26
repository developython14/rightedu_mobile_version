
  request.files.add(http.MultipartFile('cv',
                              cv!.readAsBytes().asStream(), cv!.lengthSync(),
                              filename: cv!.path.split("/").last));
                          request.files.add(http.MultipartFile(
                              'degree',
                              degree!.readAsBytes().asStream(),
                              cv!.lengthSync(),
                              filename: degree!.path.split("/").last));
                          request.files.add(http.MultipartFile(
                              'experience',
                              experience!.readAsBytes().asStream(),
                              cv!.lengthSync(),
                              filename: experience!.path.split("/").last));
                          request.files.add(http.MultipartFile('identity',
                              cv!.readAsBytes().asStream(), cv!.lengthSync(),
                              filename: identity!.path.split("/").last));