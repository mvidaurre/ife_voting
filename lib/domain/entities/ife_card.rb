class IfeCard
  attr_accessor :first_name, :last_name, :dob, :state_of_birth, :sex
  
  def initialize
    
  end

  def clave
    clave = last_name[0..1] \
          + first_name[0..1] \
          + dob.year.to_s[2..3] \
          + dob.month.to_s \
          + dob.day.to_s \
          + sex \
          + state_of_birth \
          + first_name[2..3] \
          + last_name[2..3] \
          + last_name.length.to_s \
          + first_name.length.to_s
    clave.upcase
  end
end