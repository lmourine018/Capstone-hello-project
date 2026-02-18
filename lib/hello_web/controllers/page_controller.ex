defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  plug HelloWeb.Plugs.Locale, "en"


  # def home(conn, _params) do
  #   render(conn, :home)
  #   # send_resp(conn, 201, "Testing the send response")

  # end
  # def home(conn, _params) do
  #   conn
  #   |> put_resp_content_type("text/plain")
  #   |> send_resp(201, "")
  # end

  # def home(conn, _params) do
  #   conn
  #   |> put_resp_content_type("text/xml")
  #   |> render(:home)
  # end
  # def home(conn, _params) do
  #   conn
  #   |> put_status(202)
  #   |> render(:home)
  # end
  ##redirection to a new path
  def home(conn, _params) do
    redirect(conn, to: ~p"/redirect_test")
  end
  def redirect_test(conn, _params) do
    render(conn, :home)
  end


  ## redirection to a url
  # def home(conn, _params) do
  #   redirect(conn, external: "https://ordinarycoders.com/blog/article/django-user-register-login-logout")
  # end
  # def redirect_test(conn, _params) do
  #   render(conn, :home)
  # end



end
