defmodule Exray.Core.Cursor do

  @moduledoc """
  Show, hide and make sure your cursor is on screen.
  """

  @loader Exray.Core.Cursor.Loader

  @doc """
  Shows cursor
  """
  @spec show_cursor() :: :ok
  defdelegate show_cursor(), to: @loader

  @doc """
  Hides cursor
  """
  @spec hide_cursor() :: :ok
  defdelegate hide_cursor(), to: @loader

  @doc """
  Check if cursor is not visible
  """
  @spec cursor_is_hidden?() :: cursor_is_hidden :: boolean
  defdelegate cursor_is_hidden?(), to: @loader, as: :cursor_is_hidden

  @doc """
  Enables cursor (unlock cursor)
  """
  @spec enable_cursor() :: :ok
  defdelegate enable_cursor(), to: @loader

  @doc """
  Disables cursor (lock cursor)
  """
  @spec disable_cursor() :: :ok
  defdelegate disable_cursor(), to: @loader

  @doc """
  Check if cursor is on the screen
  """
  @spec cursor_is_on_screen?() :: cursor_is_on_screen :: boolean
  defdelegate cursor_is_on_screen?(), to: @loader, as: :cursor_is_on_screen

end
