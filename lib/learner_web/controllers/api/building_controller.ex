defmodule LearnerWeb.Api.BuildingController do
  use LearnerWeb, :controller
  
  alias Learner.Repo
  
  def index(conn, _params) do
    buildings = Repo.all(Learner.Venues.Building)
    
    render(conn, "index.json", buildings: buildings)  
  end
end