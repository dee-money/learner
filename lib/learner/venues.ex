defmodule Learner.Venues do
  alias Learner.Venues
  
  defdelegate get_building(id), 
    to: Venues.Building.Manager,
    as: :get 
  
  defdelegate create_building(params),
    to: Venues.Building.Manager,
    as: :create
end