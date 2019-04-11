<<<<<<< HEAD
=======
require 'pry'
>>>>>>> fd806ff7f85be0acd7149b203accb149096b9f18
class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def new_appointment(patient, date)
<<<<<<< HEAD
    new_aptmt = Appointment.new(date, patient, self)
    self.appointments << new_aptmt
    new_aptmt
=======
    self.appointments << Appointment.new(date, patient, self)
>>>>>>> fd806ff7f85be0acd7149b203accb149096b9f18
  end

  def patients
    self.appointments.collect {|aptmt| aptmt.patient}
  end
end
