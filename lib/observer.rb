require_relative './observer/subject'
require_relative './observer/observer'
require_relative './observer/concrete_subject'
require_relative './observer/concrete_observer_a'
require_relative './observer/concrete_observer_b'

subject = ConcreteSubject.new

observer_a = ConcreteObserverA.new
subject.attach(observer_a)

observer_b = ConcreteObserverB.new
subject.attach(observer_b)

subject.some_business_logic
subject.some_business_logic

subject.detach(observer_a)

subject.some_business_logic
