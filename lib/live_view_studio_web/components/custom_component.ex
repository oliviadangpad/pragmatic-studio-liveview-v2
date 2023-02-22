# defmod, then tab for autocomplete
defmodule LiveViewStudioWeb.CustomComponent do
  use Phoenix.Component
  attr :expiration, :integer, default: 24
  slot :legal, required: true
  slot :inner_block, required: true

  def promo(assigns) do
    # Shortcut: type "h", then tab
    ~H"""
    <div class="promo">
      <div class="deal">
        <%= render_slot(@inner_block) %>
      </div>
      <div class="expiration">Deal expires in <%= @expiration %> hours</div>
      <div class="legal">
        <%= render_slot(@legal) %>
      </div>
    </div>
    """
  end

end
