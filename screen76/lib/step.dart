class Step {
  final String title;
  final String content;
   bool isExpanded;

  Step({
    required this.title,
    required this.content,
    this.isExpanded = false,
  });
}

List<Step> steps = List.generate(20, (index) {
  int stepNumber = index + 1;
  return Step(
    title: 'Step $stepNumber',
    content: 'This is the content of Step $stepNumber.',
  );
});