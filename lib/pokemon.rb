class Pokemon
  attr_accessor :name, :type, :db, :id
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    sql = <<-SQL
      SELECT * FROM pokemon
      WHERE id = ?
      SQL
    row = db.execute(sql, id)
    Pokemon.new(row[0], row[1], row[2], row[3])
  end
  
end
