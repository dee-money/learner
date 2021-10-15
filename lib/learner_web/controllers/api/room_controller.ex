defmodule LearnerWeb.Api.RoomController do
  use LearnerWeb, :controller
  
  import Ecto.Query, only: [where: 3]
  
  alias Learner.{
    Venues,
    Repo
  }
  
  alias Venues.Room
  
  def index(conn, %{"building_id" => building_id}) do
    rooms =
      Room
      |> where([r], r.building_id == ^building_id)
      |> Repo.all()
      
    render(conn, "index.json", rooms: rooms)
  end
end