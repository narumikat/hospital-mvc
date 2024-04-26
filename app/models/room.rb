class Room
  attr_accessor :id
  attr_reader :number, :capacity, :patients
  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = []
  end

  def add_pacient(patient)
    patient.room = self
    @patients << patient
  end

end

# room52.patients.count
