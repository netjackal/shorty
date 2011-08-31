class ShortcutsController < ApplicationController
  def new
    @shortcut = Shortcut.new
  end

  def create
    @shortcut = Shortcut.new(params[:shortcut])
    @shortcut.hash = '/qwe123'
    if @shortcut.save
      redirect_to shortcuts_path
    end
  end

  def index
    @shortcuts = Shortcut.all
  end
end
