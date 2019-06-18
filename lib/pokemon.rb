class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

   def initialize(id: nil, name:, type:, db:, hp: nil)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find(id)
    sql = <<-SQL
      SELECT * FROM pokemon
      WHERE id = ?
      LIMIT 1
    SQL
  end
end
