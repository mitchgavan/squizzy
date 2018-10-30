defmodule Squizzy do

  alias Squizzy.Game

  defdelegate new_game(), to: Game

end
