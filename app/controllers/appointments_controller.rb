require_relative '../views/appointments_view'

class AppointmentsController
  def initialize(appointment_repository, doctor_repository, patient_repository)
    @appointment_repository = appointment_repository
    @doctor_repository = doctor_repository
    @patient_repository = patient_repository
    @view = AppointmentsView.new
    @doctors_view = DoctorsView.new
    @patients_view = PatientsView.new
  end

  def create
    date = @view.ask_date
    # Listar os doctors
    doctors = @doctor_repository.all
    @doctors_view.list(doctors)
    index = @view.ask_index
    doctor = doctors[index]

    patients = @patient_repository.all
    @patients_view.list(patients)
    index = @view.ask_index
    patient = patients[index]



    new_appointment = Appointment.new(date: date, doctor: doctor, patient: patient)

    @appointment_repository.add(new_appointment)


  end

  def list
    appointments = @appointment_repository.all
    @view.list(appointments)
  end

end
