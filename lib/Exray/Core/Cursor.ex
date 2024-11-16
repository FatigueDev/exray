defmodule Exray.Core.Cursor do
  @moduledoc """
  Show, hide and make sure your cursor is on screen.
  """

  @doc """
  Shows cursor
  """
  @spec show_cursor() :: :ok
  defdelegate show_cursor(), to: Exray.Core.Cursor.Loader

  @doc """
  Hides cursor
  """
  @spec hide_cursor() :: :ok
  defdelegate hide_cursor(), to: Exray.Core.Cursor.Loader

  @doc """
  Check if cursor is not visible
  """
  @spec cursor_is_hidden?() :: cursor_is_hidden :: boolean
  defdelegate cursor_is_hidden?(), to: Exray.Core.Cursor.Loader, as: :cursor_is_hidden

  @doc """
  Enables cursor (unlock cursor)
  """
  @spec enable_cursor() :: :ok
  defdelegate enable_cursor(), to: Exray.Core.Cursor.Loader

  @doc """
  Disables cursor (lock cursor)
  """
  @spec disable_cursor() :: :ok
  defdelegate disable_cursor(), to: Exray.Core.Cursor.Loader

  @doc """
  Check if cursor is on the screen
  """
  @spec cursor_is_on_screen?() :: cursor_is_on_screen :: boolean
  defdelegate cursor_is_on_screen?(), to: Exray.Core.Cursor.Loader, as: :cursor_is_on_screen
end
