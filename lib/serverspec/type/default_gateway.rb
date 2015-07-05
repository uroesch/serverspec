module Serverspec::Type
  class DefaultGateway < Base
    def ipv6_ipaddress
      @runner.get_default_gateway(:ipv6_gateway)
    end

    def ipaddress
      @runner.get_default_gateway(:gateway)
    end

    alias :ipv4_ipaddress :ipaddress

    def ipv6_interface
      @runner.get_default_gateway(:ipv6_interface)
    end

    def interface
      @runner.get_default_gateway(:interface)
    end

    alias :ipv4_interface :interface

    def to_s
      'Default Gateway'
    end
  end
end
