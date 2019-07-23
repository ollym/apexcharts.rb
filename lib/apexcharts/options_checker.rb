# frozen_string_literal: true

module ApexCharts
  module OptionsChecker
    def check(hash)
      schema = new[hash]
      if schema.failure?
        raise schema.errors.to_h.inspect
      else
        hash
      end
    end
  end
end
