require 'spec_helper'

describe Mbed do
  describe ".read" do
    it "doesn’t crash" do
      Mbed.read
    end

    it "returns a hash" do
      Mbed.read.should be_a Hash
    end

    it "does contains “Unauthorized” in the hash" do
      response = Mbed.read
      response['title'].should_not == "Unauthorized"
    end
  end
end
