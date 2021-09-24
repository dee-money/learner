defmodule LearnerWeb.PageController do
  use LearnerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
