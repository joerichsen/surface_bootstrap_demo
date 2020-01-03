defmodule SurfaceDemoWeb.Spinner do
  @moduledoc """
  See https://getbootstrap.com/docs/4.4/components/spinners/
  """

  use Surface.Component

  property variant, :string, default: "dark"
  property center, :boolean

  def render(%{ center: true } = assigns) do
    ~H"""
    <div class="d-flex justify-content-center">
      <div class="spinner-border text-{{assigns.variant}}" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    """
  end

  def render(assigns) do
    ~H"""
    <div class="spinner-border text-{{assigns.variant}}" role="status">
      <span class="sr-only">Loading...</span>
    </div>
    """
  end
end