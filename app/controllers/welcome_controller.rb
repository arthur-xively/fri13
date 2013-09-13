class WelcomeController < ApplicationController
  def index
    @mbed = Mbed.new
    @id = @mbed.id
    @key = @mbed.key
    @feed = @mbed.feed
    @temperature = @mbed.read['temperature']['current_value']
    render
  end
end
