defmodule Learner.Venues.Building.Manager do
  alias Learner.{
    Venues,
    Repo
  }
  
  alias Venues.Building
  
  def get(id) do
    Repo.get(Building, id)  
  end
  
  def create(params) do
    %Building{}
    |> Building.changeset(params)
    |> Repo.insert()
  end
end