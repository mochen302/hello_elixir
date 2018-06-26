defmodule Router do
  use Plug.Router
  use Plug.ErrorHandler

  alias VerifyRequest

  plug(Plug.Parsers, parsers: [:urlencoded, :multipart])

  plug(
    VerifyRequest,
    fields: ["Content", "mimetype"],
    paths: ["/upload"]
  )

  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "Welcome"))
  post("/upload", do: send_resp(conn, 201, "Uploaded"))
  match(_, do: send_resp(conn, 404, "Oops!"))
end
