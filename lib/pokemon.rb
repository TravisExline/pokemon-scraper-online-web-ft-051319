class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

   def initialize(id: nil, name:, type:, db:, hp: nil)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
      SQL

    DB[:conn].execute(sql, self.name, self.type)
  end

  def self.find(id)
    sql = <<-SQL
      SELECT * FROM pokemon
      WHERE id = ?
      LIMIT 1
    SQL
  end
end
