defmodule Learner.Venues.Building do
  use Ecto.Schema
  import Ecto.Changeset
  
  alias Learner.Venues.Room

  schema "buildings" do
    field :name, :string
    
    has_many :rooms, Room

    timestamps()
  end

  @doc false
  def changeset(building, attrs) do
    building
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
