defmodule Alert do
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