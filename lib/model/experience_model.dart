class ExperienceModel {
  final String duration;
  final String position;
  final String company;

  ExperienceModel({
    required this.duration,
    required this.position,
    required this.company,
  });
}
List<ExperienceModel> experienceModel = [
  ExperienceModel(
    duration: 'April 2023-Present',
    position: 'Flutter Developer(Head)',
    company: 'Uzair Technology',
  ), ExperienceModel(
    duration: 'April 2024-Present',
    position: 'Flutter Developer',
    company: 'Origin Technology',
  ),
  ];