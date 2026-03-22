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

List<Step> steps = [
  Step(
    title: 'Step 1',
    content: 'This is the content of Step 1.',
  ),
  Step(
    title: 'Step 2',
    content: 'This is the content of Step 2.',
  ),
  Step(
    title: 'Step 3',
    content: 'This is the content of Step 3.',
  ),
];