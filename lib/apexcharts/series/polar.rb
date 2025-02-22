require_relative '../utils/copy'

module ApexCharts
  class PolarSeries
    include ApexCharts::Utils::Copy

    attr_reader :sanitized

    def initialize(data)
      build_labels_and_series(deep_copy(data))

      @sanitized = {
        labels: @labels.empty? ? nil : @labels,
        series: @series
      }.compact
    end

    def build_labels_and_series(data)
      @labels = []
      case data
      when Array
        case data.first
        when Numeric
          @series = data
        when Hash
          @labels = data.map {|m| m[:name] }.compact
          @series = data.map {|m| m[:data] }
        end
      when Hash
        @series = data[:data] if data[:data].is_a? Array
      end
    end
  end
end
