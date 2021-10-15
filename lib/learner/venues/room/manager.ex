defmodule Learner.Venues.Room.Manager do
  alias Learner.Repo
  
  alias Learner.Venues.{
    Building,
    Room
  }
  
  def create(%Building{} = building, attrs) do
    # %Room{building_id: building_id}
    Ecto.build_assoc(building, :rooms)
    |> Room.changeset(attrs)
    |> Repo.insert()
  end
end