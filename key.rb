require 'securerandom'

class Key
  attr_accessor :key
  def initialize
    @key = SecureRandom.hex(32)
  end
  def show_key
    puts "HMAC key: #{@key}"
  end
end

