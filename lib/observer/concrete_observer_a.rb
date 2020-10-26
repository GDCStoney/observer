class ConcreteObserverA < Observer
  def update(subject)
    puts 'ConcreteObserverA: Reated to the event' if subject.state < 3
  end
end 
