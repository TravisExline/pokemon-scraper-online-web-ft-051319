class Pokemon
  attr_accessor :name, :type, :id

  def initialize(id:, name:, type:)
  @id
  @name
  @type
  end

  def self.save
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
      SQL

    DB[:conn].execute(sql, self.name, self.type)
  end
end
