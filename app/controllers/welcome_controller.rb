class WelcomeController < ApplicationController
  def index
    @temperature = Mbed.read['temperature']['current_value']
    render
  end
end
