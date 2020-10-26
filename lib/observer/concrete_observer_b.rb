class ConcreteObserverB < Observer
  def update(subject)
    puts 'ConcreteObserverB: Reated to the event' if subject.state.zero? || subject.state >= 2
  end
end
