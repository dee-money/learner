defmodule Learner.Venues.Room do
  use Ecto.Schema
  import Ecto.Changeset
  
  alias Learner.Venues.Building

  schema "rooms" do
    field :name, :string
    
    belongs_to :building, Building

    timestamps()
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
