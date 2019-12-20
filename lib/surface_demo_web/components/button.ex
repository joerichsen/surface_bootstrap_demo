defmodule Button do
  @moduledoc """
  See https://getbootstrap.com/docs/4.4/components/buttons/
  """

  use Surface.Component

  property variant, :string, default: "primary"
  property size, :string, default: nil

  def render(assigns) do
    ~H"""
    <button type="button" class={{ :btn, "btn_#{assigns.variant}", size(assigns) }}>
      {{ @inner_content.() }}
    </button>
    """
  end

  defp size(%{size: nil}), do: nil
  defp size(assigns), do: "btn_#{assigns.size}"
end