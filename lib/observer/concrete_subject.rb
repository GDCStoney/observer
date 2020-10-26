class ConcreteSubject < Subject
  attr_accessor :state

  def initialize
    @observers = []
  end

# code to manage subscriptions
  def attach(observer)
    puts 'Subject: Attached an observer'
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    puts 'Subject: Notifying observers ...'
    @observers.each { |observer| observer.update(self) }
  end

# actual business process that might want observing
  def some_business_logic
    puts "\nSubject: I am doing something important."
    @state = rand(0..10)

    puts "Subject: My state has just changed to: #{state}"
    notify
  end
end
