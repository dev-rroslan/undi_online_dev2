defmodule UndiOnlineWeb.TokenController do
  use UndiOnlineWeb, :controller


  def show(conn, _params) do

    token = :crypto.strong_rand_bytes(16) |> Base.encode64
    #expiration_time = :timer.minutes(10) + :erlang.timestamp
    #:ets.insert(:tokens, {token, true}, {expiration_time, true})
    :ets.insert(:tokens, true)

    conn = assign(conn, :token, token)
    render(conn, :show)
  end
end
