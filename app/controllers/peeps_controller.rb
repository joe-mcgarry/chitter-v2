class PeepsController < ApplicationController

  def index
    peeps = peeps.all
  end
end
