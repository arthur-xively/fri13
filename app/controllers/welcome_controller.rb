class WelcomeController < ApplicationController
  def index
    @mbed = Mbed.new
    @id = @mbed.id
    @key = @mbed.key
    @temperature = @mbed.read['temperature']['current_value']
    render
  end
end
