require 'yaml'
require 'net/http'
require 'json'

class Mbed
  def self.read
    credentials = YAML.load(File.read(File.expand_path('../../config/credentials.yml', __FILE__)))
    id = credentials['id']
    key = credentials['key']
    # TODO HTTPS (Net::HTTP protests about certificate)
    uri = URI("http://api.xively.com/v2/feeds/#{id}?key=#{key}")
    resp = Net::HTTP.get_response(uri)
    raise unless resp.code == '200' # Could be 403
    JSON.parse(resp.body)
  end
end
