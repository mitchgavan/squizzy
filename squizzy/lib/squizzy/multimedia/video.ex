defmodule Squizzy.Multimedia.Video do
  use Ecto.Schema
  import Ecto.Changeset


  schema "videos" do
    field :description, :string
    field :title, :string
    field :url, :string
  
    belongs_to :user, Squizzy.Accounts.User
    belongs_to :category, Squizzy.Multimedia.Category

    timestamps()
  end

  @doc false
  def changeset(video, attrs) do
    video
    |> cast(attrs, [:url, :title, :description, :category_id])
    |> validate_required([:url, :title, :description])
  end
end
