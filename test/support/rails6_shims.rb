# frozen_string_literal: true

module Rails6Shims
  module ControllerResponse
    def media_type
      if ActionDispatch::Response.instance_methods(false).include?(:media_type)
        super
      else
        content_type
      end
    end
  end
end

ActionDispatch::TestResponse.prepend Rails6Shims::ControllerResponse
