defmodule NavItem do
  use Surface.DataComponent

  property url, :string
  property title, :string
  property active, :boolean
  property disabled, :boolean
end