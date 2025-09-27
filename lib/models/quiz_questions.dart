class QuizQuestions {

  const QuizQuestions(this.questions, this.answer);

  final String questions;
  final List<String> answer;

  List<String> getShuffledList(){
    final  shuffledList = List.of(answer);
    shuffledList.shuffle();
    
    return shuffledList;
  }

}