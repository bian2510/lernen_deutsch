defmodule GermanWordsWeb.PageController do
  use GermanWordsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
