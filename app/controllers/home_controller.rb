class HomeController < ApplicationController
  # for index.html.erb
  def index
  end

  # for about.html.erb
  def about
    # this is an instance variable with @ in front, will work everywhere on the respective page for that method(like this one is for about page)
    @about_me = "My name is Joker!"
    # refer about.html.erb

    @answer = 2+2

    # this is a local variable - will work only in this function
    # about_me = "Hello world"
  end
end
