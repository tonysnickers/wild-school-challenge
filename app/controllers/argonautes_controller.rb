class ArgonautesController < ApplicationController
  def index
    @argonautes = Argonaute.all
  end
end
