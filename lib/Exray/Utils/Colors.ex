defmodule Exray.Utils.Colors do
  @moduledoc """
  Helper functions in order to stamp default colour definitions as Exray.Structs.Color structs
  """

  @doc "lightgray() == %Exray.Structs.Color{r: 200, g: 200, b: 200, a: 255}"
  @spec lightgray() :: Exray.Structs.Color.t()
  def lightgray(), do: %Exray.Structs.Color{r: 200, g: 200, b: 200, a: 255}

  @doc "gray() == %Exray.Structs.Color{r: 130, g: 130, b: 130, a: 255}"
  @spec gray() :: Exray.Structs.Color.t()
  def gray(), do: %Exray.Structs.Color{r: 130, g: 130, b: 130, a: 255}

  @doc "darkgray() == %Exray.Structs.Color{r: 80, g: 80, b: 80, a: 255}"
  @spec darkgray() :: Exray.Structs.Color.t()
  def darkgray(), do: %Exray.Structs.Color{r: 80, g: 80, b: 80, a: 255}

  @doc "yellow() == %Exray.Structs.Color{r: 253, g: 249, b: 0, a: 255}"
  @spec yellow() :: Exray.Structs.Color.t()
  def yellow(), do: %Exray.Structs.Color{r: 253, g: 249, b: 0, a: 255}

  @doc "gold() == %Exray.Structs.Color{r: 255, g: 203, b: 0, a: 255}"
  @spec gold() :: Exray.Structs.Color.t()
  def gold(), do: %Exray.Structs.Color{r: 255, g: 203, b: 0, a: 255}

  @doc "orange() == %Exray.Structs.Color{r: 255, g: 161, b: 0, a: 255}"
  @spec orange() :: Exray.Structs.Color.t()
  def orange(), do: %Exray.Structs.Color{r: 255, g: 161, b: 0, a: 255}

  @doc "pink() == %Exray.Structs.Color{r: 255, g: 109, b: 194, a: 255}"
  @spec pink() :: Exray.Structs.Color.t()
  def pink(), do: %Exray.Structs.Color{r: 255, g: 109, b: 194, a: 255}

  @doc "red() == %Exray.Structs.Color{r: 230, g: 41, b: 55, a: 255}"
  @spec red() :: Exray.Structs.Color.t()
  def red(), do: %Exray.Structs.Color{r: 230, g: 41, b: 55, a: 255}

  @doc "maroon() == %Exray.Structs.Color{r: 190, g: 33, b: 55, a: 255}"
  @spec maroon() :: Exray.Structs.Color.t()
  def maroon(), do: %Exray.Structs.Color{r: 190, g: 33, b: 55, a: 255}

  @doc "green() == %Exray.Structs.Color{r: 0, g: 228, b: 48, a: 255}"
  @spec green() :: Exray.Structs.Color.t()
  def green(), do: %Exray.Structs.Color{r: 0, g: 228, b: 48, a: 255}

  @doc "lime() == %Exray.Structs.Color{r: 0, g: 158, b: 47, a: 255}"
  @spec lime() :: Exray.Structs.Color.t()
  def lime(), do: %Exray.Structs.Color{r: 0, g: 158, b: 47, a: 255}

  @doc "darkgreen() == %Exray.Structs.Color{r: 0, g: 117, b: 44, a: 255}"
  @spec darkgreen() :: Exray.Structs.Color.t()
  def darkgreen(), do: %Exray.Structs.Color{r: 0, g: 117, b: 44, a: 255}

  @doc "skyblue() == %Exray.Structs.Color{r: 102, g: 191, b: 255, a: 255}"
  @spec skyblue() :: Exray.Structs.Color.t()
  def skyblue(), do: %Exray.Structs.Color{r: 102, g: 191, b: 255, a: 255}

  @doc "blue() == %Exray.Structs.Color{r: 0, g: 121, b: 241, a: 255}"
  @spec blue() :: Exray.Structs.Color.t()
  def blue(), do: %Exray.Structs.Color{r: 0, g: 121, b: 241, a: 255}

  @doc "darkblue() == %Exray.Structs.Color{r: 0, g: 82, b: 172, a: 255}"
  @spec darkblue() :: Exray.Structs.Color.t()
  def darkblue(), do: %Exray.Structs.Color{r: 0, g: 82, b: 172, a: 255}

  @doc "purple() == %Exray.Structs.Color{r: 200, g: 122, b: 255, a: 255}"
  @spec purple() :: Exray.Structs.Color.t()
  def purple(), do: %Exray.Structs.Color{r: 200, g: 122, b: 255, a: 255}

  @doc "violet() == %Exray.Structs.Color{r: 135, g: 60, b: 190, a: 255}"
  @spec violet() :: Exray.Structs.Color.t()
  def violet(), do: %Exray.Structs.Color{r: 135, g: 60, b: 190, a: 255}

  @doc "darkpurple() == %Exray.Structs.Color{r: 112, g: 31, b: 126, a: 255}"
  @spec darkpurple() :: Exray.Structs.Color.t()
  def darkpurple(), do: %Exray.Structs.Color{r: 112, g: 31, b: 126, a: 255}

  @doc "beige() == %Exray.Structs.Color{r: 211, g: 176, b: 131, a: 255}"
  @spec beige() :: Exray.Structs.Color.t()
  def beige(), do: %Exray.Structs.Color{r: 211, g: 176, b: 131, a: 255}

  @doc "brown() == %Exray.Structs.Color{r: 127, g: 106, b: 79, a: 255}"
  @spec brown() :: Exray.Structs.Color.t()
  def brown(), do: %Exray.Structs.Color{r: 127, g: 106, b: 79, a: 255}

  @doc "darkbrown() == %Exray.Structs.Color{r: 76, g: 63, b: 47, a: 255}"
  @spec darkbrown() :: Exray.Structs.Color.t()
  def darkbrown(), do: %Exray.Structs.Color{r: 76, g: 63, b: 47, a: 255}

  @doc "white() == %Exray.Structs.Color{r: 255, g: 255, b: 255, a: 255}"
  @spec white() :: Exray.Structs.Color.t()
  def white(), do: %Exray.Structs.Color{r: 255, g: 255, b: 255, a: 255}

  @doc "black() == %Exray.Structs.Color{r: 0, g: 0, b: 0, a: 255}"
  @spec black() :: Exray.Structs.Color.t()
  def black(), do: %Exray.Structs.Color{r: 0, g: 0, b: 0, a: 255}

  @doc "blank() == %Exray.Structs.Color{r: 0, g: 0, b: 0, a: 0}"
  @spec blank() :: Exray.Structs.Color.t()
  def blank(), do: %Exray.Structs.Color{r: 0, g: 0, b: 0, a: 0}

  @doc "magenta() == %Exray.Structs.Color{r: 255, g: 0, b: 255, a: 255}"
  @spec magenta() :: Exray.Structs.Color.t()
  def magenta(), do: %Exray.Structs.Color{r: 255, g: 0, b: 255, a: 255}

  @doc "raywhite() == %Exray.Structs.Color{r: 245, g: 245, b: 245, a: 255}"
  @spec raywhite() :: Exray.Structs.Color.t()
  def raywhite(), do: %Exray.Structs.Color{r: 245, g: 245, b: 245, a: 255}
end
