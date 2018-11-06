defmodule Dictionary do

  alias Dictionary.QuestionList

  defdelegate start(), to: QuestionList, as: :question_list
  defdelegate random_question(question_list), to: QuestionList 

end
