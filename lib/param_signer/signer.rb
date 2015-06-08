module ParamSigner
  class Signer

    def self.sign(params, secret)
      Digest::SHA1.hexdigest(params.sort.join('&') + secret)
    end

    def self.valid?(params, secret, signature)
      signature == sign(params, secret)
    end

    def initialize(secret)
      @secret = secret
    end

    def sign(params)
      self.class.sign(params, secret)
    end

    def valid?(params, signature)
      signature == sign(params)
    end

    protected

    attr_reader :secret

  end
end