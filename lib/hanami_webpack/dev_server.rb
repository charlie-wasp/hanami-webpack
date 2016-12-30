require_relative 'config'

module HanamiWebpack
  module DevServer
    def start
      if HanamiWebpack::Config.using_dev_server? && HanamiWebpack::Config.inbuilt_dev_server?
        spawn('./node_modules/.bin/webpack-dev-server --host=0.0.0.0')
      end
      super
    end
  end
end
