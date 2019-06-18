class Pokemon
  attr_accessor :name, :type, :id, :db

  def initialize(id:, name:, type:, db:)
  @id
  @name
  @type
  @db
  end

  def self.save
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
      SQL

    DB[:conn].execute(sql, self.name, self.type)
  end
end
