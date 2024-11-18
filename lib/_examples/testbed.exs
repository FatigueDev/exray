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
  alias Exray.Structs.Font

  import Exray.Core.Window
  import Exray.Core.Drawing
  import Exray.Core.Timing
  import Exray.Core.Cursor
  import Exray.Core.Drawing
  import Exray.Core.Random
  import Exray.Core.KeyCodes
  import Exray.Core.Misc
  import Exray.Core.Input.Keyboard
  import Exray.Core.Input.Mouse
  import Exray.Shapes.Basic
  import Exray.Text.Drawing
  import Exray.Textures.Image.Loading
  import Exray.Textures.Texture.Loading

  def init() do
    init_window(500, 500, "Testbed.exs")
    set_target_fps(60)
    # img = Exray.Textures.Image.Loader.load_image("./priv/assets/image.png")
    # texture = Exray.Textures.Image.Loader.load_texture_from_image(img)

    # img = load_image_raw("./priv/assets/image.png", 32, 32, 7, 8) |> image_is_ready?() |> dbg

    img = load_texture("./priv/assets/image.png") |> texture_is_ready?() |> dbg

    game_loop(%{font: nil, should_load: false, texture: img})
  end

  def game_loop(state) do
    unless window_is_ready?() do
      game_loop(state)
    end

    unless window_should_close?() do
      state = update(state)
      state = draw(state)
      game_loop(state)
    end

    :ok
  end

  def update(state) do
    if mouse_button_is_pressed?(0) do
      IO.puts("Clickity clack you pressed mouse 0")
    end

    if key_is_pressed?(key_space()) do
      dbg(get_random_value(1, 10))
      dbg(load_random_sequence(5, 1, 10))
    end

    if key_is_pressed?(key_s()) do
      take_screenshot("exray_image.png")
    end

    if key_is_pressed?(key_q()) do
      open_url("https://github.com/FatigueDev/exray")
    end

    # state = if key_is_pressed?(key_space()) do
    #   if state.should_load, do: IO.puts("Disabling Loader")
    #   %{state | should_load: !state.should_load}
    # end
    # font = %Exray.Structs.Font{}
    # font = Exray.Text.Font.load_font("./priv/assets/romulus.png")

    # state = if state.should_load do

    # else
    #   state
    # end

    # else
    #   state
    # end

    state
  end

  def draw(state) do
    clear_background(Exray.Utils.Colors.black())
    begin_drawing()

    draw_fps(4, 4)

    # dbg state

    # if length(state.textures) > 0 do
    #   Enum.each(state.textures, fn tex ->

    # Exray.Textures.Image.Loader.draw_texture(state.texture, 2, 25, Exray.Colors.white())

    #   end)
    # end

    # if state.font do
    #   if Exray.Text.Font.font_is_ready?(state.font) do
    # test = %Exray.Structs.Font{
    #   baseSize: 1,
    #   glyphCount: 2,
    #   glyphPadding: 3,
    #   texture: nil,
    #   recs: [nil],
    #   glyphs: [nil]
    # }
    # Exray.Text.Drawing.Loader.draw_text_ex(test, "Cool Font uwu Nice!", %Vector2{x: 10.0, y: 200.0}, 20.0, 5.0, %Color{r: 0, g: 255, b: 100, a: 255})
    #   end
    # end

    # lines = [
    #   %Vector2{x: 50.0, y: 50.0},
    #   %Vector2{x: 200.0, y: 50.0},
    #   %Vector2{x: 200.0, y: 200.0},
    # ]

    # draw_line_strip(lines, line_color)
    draw_circle(250, 250, 50.0, Exray.Utils.Colors.pink())

    draw_line_v(%Vector2{x: 0.0, y: 64.0}, %Vector2{x: 50.0, y: 64.0}, Exray.Utils.Colors.red())

    # Works like a charm.
    # Enum.each(1..200, fn num ->
    #   Exray.Shapes.Basic.Loader.draw_pixel_v(%Exray.Structs.Vector2{x: num / 1, y: (num * 2) / 1}, %Color{r: 255, g: 0, b: 0, a: 255})
    # end)

    # Exray.Shapes.Basic.Loader.draw_pixel(1, 1, %Color{r: 255, g: 0, b: 0, a: 255})
    # Exray.Shapes.Basic.Loader.draw_pixel(5, 5, %Color{r: 255, g: 0, b: 0, a: 255})
    # Exray.Shapes.Basic.Loader.draw_pixel(10, 10, %Color{r: 255, g: 0, b: 0, a: 255})

    end_drawing()

    state
  end
end

Testbed.init()
