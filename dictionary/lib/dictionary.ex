defmodule Dictionary do

  alias Dictionary.QuestionList

  defdelegate random_question(), to: QuestionList 

end
