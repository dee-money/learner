defmodule LearnerWeb.Api.RoomView do
  use LearnerWeb, :view
  
  def render("index.json", %{rooms: rooms}) do
    %{data: render_many(rooms, __MODULE__, "room.json")}  
  end
  
  def render("room.json", %{room: room}) do
    %{
      id: room.id,
      name: room.name
    }
  end
end