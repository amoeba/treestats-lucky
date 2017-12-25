module Shared::FlashComponent
  def render_flash
    @flash.each do |flash_type, flash_message|
      div class: "flash-#{flash_type}" do
        text flash_message
      end
    end
  end
end
