module Umeng
  module JsonBody
    def android_params(opts={})
      {
        payload: {
          display_type: opts[:display_type],
          body: opts[:body],
          extra: opts[:key_value]
        }
      }
    end

    def ios_params(opts={})
      {
        payload: {
          aps: opts[:aps]
        }.merge(opts[:key_value])
      }
    end
  end
end

