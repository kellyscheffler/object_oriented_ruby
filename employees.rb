class Employee
  attr_reader :first_name, :last_name, :salary, :active
  # def first_name
  #   @first_name
  # end
  # employee1.first_name
  attr_writer :first_name, :last_name, :active
  # def first_name=(fn)
  #   @first_name = fn
  # end
  # employee1.first_name = "something"
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary] ||=55000
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{last_name} makes #{salary} per year"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def full_name
    #length = last_name.length - 1
    if last_name[-1] == "s"
      p "#{first_name} #{last_name}, Esquire"
    else
      p "#{first_name} #{last_name}"
    end
  end
end


# explicit version
employee1 = Employee.new({:first_name => "Majora",
                         :last_name => "Carter",
                         #:salary => 80000,
                         :active => true})

employee1.print_info

# "real life" version
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)

employee2.full_name
# p employee2.first_name
# employee2.first_name = "Jones"
# p employee2.first_name
