// ignore_for_file: file_names


 import 'Observer.dart';

class Observable {

	late Set<Observer> observers;
Observable(){
	observers = Set();
}

	 void addObserver(Observer o) {
		if(!observers.contains(o)){
			observers.add(o);
		}
	}

 void deleteObserver(Observer o) {
	 if(observers.contains(o)){
		 observers.remove(o);
	 }
	}

 void notifyObservers() {
		observers.forEach((element) {
			element.update(this);
		});
	}

}