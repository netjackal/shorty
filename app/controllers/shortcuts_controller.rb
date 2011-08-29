class ShortcutsController < ApplicationController
  def new
    @shortcut = Shortcut.new
  end
end
