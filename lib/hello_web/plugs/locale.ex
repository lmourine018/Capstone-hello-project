defmodule HelloWeb.Plugs.Locale do
  import Plug.Conn
  @locales ["en","fr","de","swahili"]
  def init(default), do: default
  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, __default) when loc in @locales do
    assign(conn, :locale, loc)
  end
  def call(conn,default) do
    assign(conn, :locale, default)
  end
end
