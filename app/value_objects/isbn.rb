class Isbn
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end

  def hyphen_removed
    @value.gsub(/-/, "")
  end
end
