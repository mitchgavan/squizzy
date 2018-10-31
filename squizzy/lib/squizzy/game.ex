defmodule Squizzy.Game do
  
  defstruct(
    id: nil,
    game_state: :initializing,
    players: [],
    questions: [],
    seconds: nil,
    winner: nil,
  )

  def new_game() do
    %Squizzy.Game{}
  end

end