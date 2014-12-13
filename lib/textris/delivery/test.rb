module Textris
  module Delivery
    class Test < Textris::Delivery::Base
      class << self
        def deliveries
          @deliveries ||= []
        end

        private

        def send_message(to, message)
          deliveries.push(::Textris::Message.new(
            :content    => message.content,
            :from_name  => message.from_name,
            :from_phone => message.from_phone,
            :texter     => message.texter,
            :action     => message.action,
            :to         => to))
        end
      end
    end
  end
end
