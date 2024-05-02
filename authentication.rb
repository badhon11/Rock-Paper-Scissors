require 'openssl'

class Authentication
  attr_accessor :mac
  def initialize(key, own_move)
    @mac = OpenSSL::HMAC.hexdigest("SHA3-256", key, own_move)
  end
  def show_mac
    puts "HMAC: #{@mac}"
  end
end