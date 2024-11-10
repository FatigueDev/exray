defmodule Exray.Core.Cursor do
  import DelegateUtils

  @loader Exray.Core.Cursor.Loader

  @doc """
  Shows cursor
  """
  @spec show_cursor() :: {:ok}
  defdelegate show_cursor(), to: @loader

  @doc """
  Hides cursor
  """
  @spec hide_cursor() :: {:ok}
  defdelegate hide_cursor(), to: @loader

  @doc """
  Check if cursor is not visible
  """
  @spec cursor_hidden?() :: true | false
  def cursor_hidden?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_cursor_hidden()
    )
  end

  @doc """
  Enables cursor (unlock cursor)
  """
  @spec enable_cursor() :: {:ok}
  defdelegate enable_cursor(), to: @loader

  @doc """
  Disables cursor (lock cursor)
  """
  @spec disable_cursor() :: {:ok}
  defdelegate disable_cursor(), to: @loader

  @doc """
  Check if cursor is on the screen
  """
  @spec cursor_on_screen?() :: true | false
  def cursor_on_screen?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_cursor_on_screen()
    )
  end

end
