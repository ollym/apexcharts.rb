# frozen_string_literal: true

module ApexCharts
  class AnnotationsOptions < ::Dry::Schema::Params
    define do
      optional(:position).value(included_in?: ['front', 'back'])

      optional(:yaxis).array(:hash, min_size?: 1) do
        required(:y) { int? | float? | decimal? }

        optional(:y2) { int? | float? | decimal? }
        optional(:strokeDashArray) { int? | float? | decimal? }
        optional(:borderColor) { str? }
        optional(:fillColor) { str? }
        optional(:opacity) { int? | float? | decimal? }
        optional(:offsetX) { int? | float? | decimal? }
        optional(:offsetY) { int? | float? | decimal? }
        optional(:yAxisIndex) { int? | float? | decimal? }
        optional(:label).value(:hash).schema do
          required(:text) { str? }

          optional(:borderColor) { str? }
          optional(:borderWidth) { int? | float? | decimal? }
          optional(:textAnchor) { str? }
          optional(:position) { str? }
          optional(:offsetX) { int? | float? | decimal? }
          optional(:offsetY) { int? | float? | decimal? }
          optional(:style).value(:hash).schema do
            optional(:background) { str? }
            optional(:color) { str? }
            optional(:fontSize) { str? }
            optional(:cssClass) { str? }
          end
        end
      end

      optional(:xaxis).array(:hash, min_size?: 1) do
        required(:x) { int? | float? | decimal? }

        optional(:x2) { int? | float? | decimal? }
        optional(:strokeDashArray) { int? | float? | decimal? }
        optional(:borderColor) { str? }
        optional(:fillColor) { str? }
        optional(:opacity) { int? | float? | decimal? }
        optional(:offsetX) { int? | float? | decimal? }
        optional(:offsetY) { int? | float? | decimal? }
        optional(:label).value(:hash).schema do
          required(:text) { str? }

          optional(:borderColor) { str? }
          optional(:borderWidth) { int? | float? | decimal? }
          optional(:textAnchor) { str? }
          optional(:position) { str? }
          optional(:orientation) { str? }
          optional(:offsetX) { int? | float? | decimal? }
          optional(:offsetY) { int? | float? | decimal? }
          optional(:style).value(:hash).schema do
            optional(:color) { str? }
            optional(:fontSize) { str? }
            optional(:cssClass) { str? }
          end
        end
      end

      optional(:points).value(:hash).schema do
        required(:x) { int? | float? | decimal? | str? }
        required(:y) { int? | float? | decimal? }

        optional(:yAxisIndex) { int? | float? | decimal? }
        optional(:seriesIndex) { int? | float? | decimal? }
        optional(:marker).value(:hash).schema do
          optional(:size) { int? | float? | decimal? }
          optional(:fillColor) { str? }
          optional(:strokeColor) { str? }
          optional(:strokeWidth) { int? | float? | decimal? }
          optional(:shape) { str? }
          optional(:radius) { int? | float? | decimal? }
          optional(:offsetX) { int? | float? | decimal? }
          optional(:offsetY) { int? | float? | decimal? }
        end
        optional(:label).value(:hash).schema do
          required(:text) { str? }

          optional(:borderColor) { str? }
          optional(:borderWidth) { int? | float? | decimal? }
          optional(:textAnchor) { str? }
          optional(:position) { str? }
          optional(:orientation) { str? }
          optional(:offsetX) { int? | float? | decimal? }
          optional(:offsetY) { int? | float? | decimal? }
          optional(:style).value(:hash).schema do
            optional(:background) { str? }
            optional(:color) { str? }
            optional(:fontSize) { str? }
            optional(:cssClass) { str? }
            optional(:padding).value(:hash).schema do
              optional(:left) { int? | float? | decimal? }
              optional(:right) { int? | float? | decimal? }
              optional(:top) { int? | float? | decimal? }
              optional(:bottom) { int? | float? | decimal? }
            end
          end
        end
      end
    end

    extend OptionsChecker
  end
end
