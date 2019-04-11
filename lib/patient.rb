class Patient
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

  def new_appointment(doctor, date)
<<<<<<< HEAD
    new_aptmt = Appointment.new(date, self, doctor)
    self.appointments << new_aptmt
    new_aptmt
=======
    self.appointments << Appointment.new(date, self, doctor)
>>>>>>> fd806ff7f85be0acd7149b203accb149096b9f18
  end

  def doctors
    self.appointments.collect {|aptmt| aptmt.doctor}
  end
end
