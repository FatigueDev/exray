defmodule Exray.Examples.SuperCoolGame do
  @moduledoc false

  # We import Exray.Core.Window, like we did in IEX.
  import Exray.Core.Window
  # But, we also import Exray.Core.Drawing, to have access to begin_draw() and end_draw() calls.
  # This is to poll for window_should_close?() events, as without end_draw() no inputs will be polled at all.
  import Exray.Core.Drawing
  # We also need to import Exray.Core.Timing in order to set our FPS. This is VERY important.
  import Exray.Core.Timing

  def run(width \\ 200, height \\ 200, title \\ "Hello World!") do
    init_window(width, height, title)

    # SUPER important! Call set_target_fps(number) just after you init_window, or segfaults are gonna happen a lot.
    set_target_fps(60)
    main_loop()

    # As another layer of safety, if for some reason our window *didn't* close, we can do it here in this check.
    if window_should_close?() do
      close_window()
    end

    # :ok, because we're :ok :)
    :ok
  end

  defp main_loop() do
    # Stay out of update and draw unless our window is ready to update and draw.
    unless window_is_ready?(), do: main_loop()

    # If at any point we press Raylib's default "Quit Application" key, (ESCAPE), stop looping and exit.
    unless window_should_close?() do
      update()
      draw()
      main_loop()
    end
  end

  defp update() do
    # Nothing yet!
  end

  defp draw() do
    # Before drawing, we'll clear the background with the Exray.Colors.black function result- Which is %Exray.Structs.Color{r: 0, g: 0, b: 0, a: 255}.
    clear_background(Exray.Colors.black())
    begin_drawing()

    # Nothing yet!

    end_drawing()
  end
end
