class Pokemon
  attr_accessor :name, :type, :id

  def initialize(id:, name:, type:)
    @id = id
    @name = name
    @type = type
  end
end
