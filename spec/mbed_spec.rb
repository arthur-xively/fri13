require 'spec_helper'

describe Mbed do
  describe ".read" do
    it "doesn’t crash" do
      Mbed.read
    end

    it "returns a hash" do
      Mbed.read.should be_a Hash
    end

    it "does not raise" do
      expect { Mbed.read }.to_not raise_error
    end
  end
end
