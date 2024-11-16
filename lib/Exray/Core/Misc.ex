defmodule Exray.Core.Misc do
  @moduledoc """
  Take a screenshot, load config flags and open a URL with the user's default browser.
  """

  @doc """
  Takes a screenshot of current screen (filename extension defines format)
  """
  @spec take_screenshot(file_name :: binary) :: :ok
  defdelegate take_screenshot(file_name), to: Exray.Core.Misc.Loader

  @doc """
  Setup init configuration flags (view FLAGS)
  """
  @spec set_config_flags(flags :: non_neg_integer) :: :ok
  defdelegate set_config_flags(flags), to: Exray.Core.Misc.Loader

  @doc """
  Open URL with default system browser (if available)
  """
  @spec open_url(url :: binary) :: :ok
  defdelegate open_url(url), to: Exray.Core.Misc.Loader
end
