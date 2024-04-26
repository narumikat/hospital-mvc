class Patient
  attr_reader :name, :age
  attr_accessor :id, :room

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
  end

end



# roberto = Patient.new(name: "Roberto", age: 22)
# # roberto.room = room52 (Usar o room.add_pacient)

# room52 = Room.new(number: 52, capacity: 3)
# room52.add_paciente(roberto)

# room52.patients # => [<'Roberto'>, ...]

# roberto.room.number => 52
