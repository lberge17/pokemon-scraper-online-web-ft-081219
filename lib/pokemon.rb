class Pokemon
  attr_accessor :name, :type, :db, :id
  
  def initialize(id:, name:, type:, db:)
    
  end
  
  def self.save(name, type, db)
    id = DB[:conn].execute("")
    pokemon = Pokemon.new(name, type, db)
  end
  
end
