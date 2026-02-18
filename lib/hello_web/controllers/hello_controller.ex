defmodule HelloWeb.HelloController do
    use HelloWeb, :controller\

    def index(conn, _params) do

        render(conn, :index)
    end
    # def show(conn, %{"messenger" => messenger}) do
    #   text(conn, "From messenger #{messenger}")
    # end

    # def show(conn, %{"messenger" => messenger} = params) do
    #   render(conn, :show, messenger: messenger)
    # end
    # def show(conn, %{"messenger" => messenger}) do
    #   conn
    #   |> Plug.Conn.assign(:messenger, messenger)
    #   |> render(:show)
    # end

    def show(conn, %{"messenger" => messenger}) do
         render(conn, :show, messenger: messenger, receiver: "Dweezil")
    end

end
