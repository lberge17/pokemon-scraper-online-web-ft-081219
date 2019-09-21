class Pokemon
  attr_accessor :name, :type, :db, :id
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    id = db.execute("SELECT last_insert_rowid() FROM students")[0][0]
    pokemon = Pokemon.new(id, name, type, db)
  end
  
end
