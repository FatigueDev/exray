defmodule Testbed do
  @moduledoc """
  This is an exs file just to mess around with some of the functionality of Exray.
  I run this with `clear && mix run ./lib/_examples/testbed.exs` from the root of the Exray project,
  which will clear the console of the last run (and it's errors) so we can catch new ones that pop up
  as we test the functionality of the bindings.

  So far, so good. :)
  """
  alias Exray.Structs.Vector2
  alias Exray.Structs.Color
  import Exray.Core.Window
  import Exray.Core.Cursor
  import Exray.Core.Drawing
  import Exray.Core.Input.Keyboard

  def init() do
    init_window(500, 500, "Beans")
    game_loop()
  end

  def game_loop() do

    update()
    draw()

    if not window_should_close?(), do: game_loop()
  end

  def update() do

    if window_should_close?() do
      IO.puts("Window should close now.")
    end

    if {:ok, true} == is_key_pressed(32) do
      IO.puts("Pressed space!")
    end

  end

  def draw() do
    if is_window_ready() do
      color = %Color{r: 50, g: 50, b: 50, a: 100}
      clear_background(color)
      begin_drawing()

      lines = [
        %Vector2{x: 50.0, y: 25.0},
        %Vector2{x: 30.0, y: 10.0},
        %Vector2{x: 70.0, y: 40.0}
      ]

      Exray.Shapes.Basic.Loader.draw_line_strip(lines, 3, %Color{r: 0, g: 255, b: 100, a: 255})

      # Works like a charm.
      # Enum.each(1..200, fn num ->
      #   Exray.Shapes.Basic.Loader.draw_pixel_v(%Exray.Structs.Vector2{x: num / 1, y: (num * 2) / 1}, %Color{r: 255, g: 0, b: 0, a: 255})
      # end)

      # Exray.Shapes.Basic.Loader.draw_pixel(1, 1, %Color{r: 255, g: 0, b: 0, a: 255})
      # Exray.Shapes.Basic.Loader.draw_pixel(5, 5, %Color{r: 255, g: 0, b: 0, a: 255})
      # Exray.Shapes.Basic.Loader.draw_pixel(10, 10, %Color{r: 255, g: 0, b: 0, a: 255})

      end_drawing()
    end
  end
end

dbg Testbed.init()
