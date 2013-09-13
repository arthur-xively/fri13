require 'spec_helper'

describe Mbed do
  before(:each) do
    @mbed = Mbed.new
  end

  describe ".read" do
    it "doesn’t crash" do
      @mbed.read
    end

    it "returns a hash" do
      @mbed.read.should be_a Hash
    end

    it "does not raise" do
      expect { @mbed.read }.to_not raise_error
    end

    it "contains reading" do
      @mbed.read['temperature']['current_value'].should_not be_nil
    end
  end
end
