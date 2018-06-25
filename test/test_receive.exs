defmodule TestReceive do
  use ExUnit.Case

  test "receive ping" do
    SendingProcess.run(self())
    assert_received :ping1
  end

end
