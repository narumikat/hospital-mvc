class AppointmentsView
  def ask_date
    puts "Enter appointment date (yyyy-mm-dd):"
    gets.chomp
  end

  def ask_index
    puts "Enter index:"
    gets.chomp.to_i - 1
  end

  def list(appointments)
    puts "\n" * 4 # 4 blank lines
    puts '-' * 30
    puts 'Appointments List'
    puts '-' * 30

    appointments.each do |appointment|
      puts "#{appointment.date} - Doctor: #{appointment.doctor.name} - Patient: #{appointment.patient.name}"
    end

    puts '-' * 30
    puts "\n" * 4 # 4 blank lines

  end
end
