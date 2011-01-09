class PagesController < ApplicationController
  skip_filter :authorize

  def home
  end
end
