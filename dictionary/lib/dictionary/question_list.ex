defmodule Dictionary.QuestionList do
  
  def question_list do
    "../../assets/quiz.json"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> Poison.Parser.parse!()
  end

  def random_question(question_list) do
    question_list
    |> Enum.random()
  end

end
