defmodule LearnerWeb.Api.BuildingView do
  use LearnerWeb, :view
  
  def render("index.json", %{buildings: buildings}) do
    %{data: render_many(buildings, __MODULE__, "building.json")}  
  end
  
  def render("building.json", %{building: building}) do
    %{
      id: building.id,
      name: building.name,
      inserted_at: building.inserted_at,
      updated_at: building.updated_at
    }  
  end
end