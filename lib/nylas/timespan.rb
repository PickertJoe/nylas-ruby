# frozen_string_literal: true

module NylasV2
  # Structure to represent a NylasV2 Timespan.
  # @see https://docs.nylas.com/reference#section-timespan
  class Timespan
    extend Forwardable

    include Model::Attributable
    attribute :object, :string
    attribute :start_time, :unix_timestamp
    attribute :end_time, :unix_timestamp

    def_delegators :range, :cover?

    def range
      @range ||= Range.new(start_time, end_time)
    end
  end
end