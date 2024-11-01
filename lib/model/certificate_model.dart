class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Development',
    organization: 'Uzair Technology Kohat',
    date: 'April 2023',
    skills: "Flutter . Dart . API's Integration . Firebase",
    credential:  '',
  ),

  // CertificateModel(
  //   name: 'Complete Dart Learning',
  //   organization: 'Uzair Technology Kohat',
  //   date: 'JUN 2022',
  //   skills: 'Flutter . Dart . Programming',
  //   credential:  '',
  // ),


  // CertificateModel(
  //   name: 'Powering Your App with Live Web Data',
  //   organization: 'Uzair Technology Kohat',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . API\'s',
  //   credential:  '',
  // ),
  // CertificateModel(
  //   name: 'Firebase Cloud Firestore',
  //   organization: 'Self Learning',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . FireStore',
  //   credential:  '',
  // ),










];
