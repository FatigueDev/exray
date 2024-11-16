# Your first Exray application

## Baby Steps - Running from IEX to get the vibe

Once you have ensured that you are setup by adding `:exray` to your [mix dependencies](../../README.md#adding-exray-to-your-mixexs-dependencies) and [compiled your NIFs](../../README.md#compiling-exray-nifs), you're ready to rumble.

Begin by running `iex -S mix` in the root of your project, then try the following:

```elixir

$> iex -S mix
#> Generated exray app
#> Interactive Elixir (1.17.3) - press Ctrl+C to exit (type h() ENTER for help)

## We first import Exray.Core.Window so we can call it's functions.
iex> import Exray.Core.Window
#> Exray.Core.Window

## Then, we can call init_window/3, which takes a width / height / title.
iex> init_window(200, 200, "Hello World!")
#> [INFO] : Initializing raylib 5.0
#> [INFO] : Platform backend: DESKTOP (GLFW)
#> [INFO] : Supported raylib modules:
#> [INFO] :     > rcore:..... loaded (mandatory)
#> ... SNIP ...
#> [INFO] : RLGL: Default OpenGL state initialized successfully
#> [INFO] : TEXTURE: [ID 2] Texture loaded successfully (128x128 | GRAY_ALPHA | 1 mipmaps)
#> [INFO] : FONT: Default font loaded successfully (224 glyphs)
#> :ok

## Without a running loop, it makes update & draw calls difficult. So for now, we'll close it up.
iex> close_window()
#> Segmentation fault (core dumped)
```

Wait- What? Segmentation fault (core dumped)??

Don't worry, we didn't exactly close it 'clean'; we called close_window but we hadn't done anything with the window, so it was pretty much holding itself together in a state of ".. Please, update and draw me".

Segmentation faults are unfortunately something that will trigger the entire BEAM VM to crash and there just isn't a good way to debug them. Thankfully, with a bit of knowledge working with the NIFs I've found a pretty decent way to at least get the game running and callback the Raylib C without it deciding it doesn't feel like it today, causing a segfault.

## Basic Game Loop

So we're going to create a new file (exs|ex) and open it up to flesh it out.

### Stage 1; initial module setup & function structure

Start with defining the module:
```elixir
defmodule SuperCoolGame do

end
```

Then adding in a few functions, which will make sense shortly:
```elixir
defmodule SuperCoolGame do
  
  def run() do

  end

  defp main_loop() do

  end

  defp update() do

  end

  defp draw() do

  end

end
```

Now what we've just done is create 3 private functions; `main_loop()`, `update()` and `draw()` as well as a public function named `run()` which is where we're actually going to enter this module from.

Let's add a little more structure, so the functions can call correctly:
```elixir
defmodule SuperCoolGame do
  
  def run(width \\ 200, height \\ 200, title \\ "Hello World!") do
    main_loop()
    :ok # :ok, because we're :ok :)
  end

  defp main_loop() do
    update()
    draw()

    main_loop()
  end

  defp update() do

  end

  defp draw() do

  end

end
```

### Stage 2; adding Raylib stuff

And finally, let's organize some logic so we can setup a window, poll input and exit safely:
```elixir
defmodule SuperCoolGame do

  # We import Exray.Core.Window, like we did in IEX.
  import Exray.Core.Window
  # But, we also import Exray.Core.Drawing, to have access to begin_draw() and end_draw() calls.
  # This is to poll for window_should_close?() events, as without end_draw() no inputs will be polled at all.
  import Exray.Core.Drawing
  # We also need to import Exray.Core.Timing in order to set our FPS. This is VERY important.
  import Exray.Core.Timing
  
  def run(width \\ 200, height \\ 200, title \\ "Hello World!") do
    init_window(width, height, title)
    set_target_fps(60) # <-- SUPER important! Call this just after you init_window, or segfaults are gonna happen a lot.
    main_loop()

    # As another layer of safety, if for some reason our window *didn't* close, we can do it here in this check.
    if window_should_close?() do
      close_window()
    end

    :ok # :ok, because we're :ok :)
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
```

Granted, you may still `segfault`, however you're doing the best you can to avoid it. As Exray develops, I'm hoping to add a lot more defenses against this illusive (and transient) problem, but for now it's kind of just something that happens. I've found it's safest when running from a `.exs` file, but I'm not really sure why.

In any case, you can now run this module by restarting your IEX and calling `SuperCoolGame.run()`.

```elixir
$> iex -S mix
#> Generated exray app
#> Interactive Elixir (1.17.3) - press Ctrl+C to exit (type h() ENTER for help)

iex> SuperCoolGame.run()
#> [INFO] : Initializing raylib 5.0
#> [INFO] : Platform backend: DESKTOP (GLFW)
#> [INFO] : Supported raylib modules:
#> [INFO] :     > rcore:..... loaded (mandatory)
#> [INFO] :     > rlgl:...... loaded (mandatory)
#> [INFO] :     > rshapes:... loaded (optional)
#> .......
```

At that point, a window should pop up with a clear black screen, 200x200 across with the title "Hello World!". You can close it by pressing ESCAPE.