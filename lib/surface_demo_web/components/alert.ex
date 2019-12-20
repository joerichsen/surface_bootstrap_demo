defmodule Alert do
  @moduledoc """
  See https://getbootstrap.com/docs/4.4/components/alerts/
  """

  use Surface.Component

  property variant, :string, default: "primary"

  def render(assigns) do
    ~H"""
    <div class="alert alert-{{ @variant }}" role="alert">
      {{ @inner_content.() }}
    </div>
    """
  end
end