module GoogleDistanceMatrix
  # Public: Thin wrapper class for an element in the matrix.
  #
  # The route has the data the element contains, pluss it references
  # it's origin and destination.
  #
  class Route
    attr_reader :origin, :destination
    attr_reader :status, :distance_text, :distance_value, :duration_text, :duration_value

    def initialize(attributes = {})
      attributes = attributes.with_indifferent_access

      @origin = attributes[:origin]
      @destination = attributes[:destination]

      @status = attributes[:status]
      @distance_text = attributes[:distance][:text]
      @distance_value = attributes[:distance][:value]
      @duration_text = attributes[:duration][:text]
      @duration_value = attributes[:duration][:value]
    end
  end
end