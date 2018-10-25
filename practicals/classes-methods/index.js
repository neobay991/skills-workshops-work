// this is a Super class
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }

  get name() {
    return this._name;
  }

  get remainingVacationDays() {
    return this._remainingVacationDays;
  }

  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }

  static generatePassword() {
    return Math.floor(Math.random() * 10000);
  }
}

// this is a sub-class of the Super class HospitalEmployee
// The super keyword calls the constructor of the parent class. In this case,
// super(name) passes the name argument of the Nurse class to the constructor
// of the HospitalEmployee class. When the HospitalEmployee constructor runs,
// it sets this._name = name; for new Nurse instances.
class Nurse extends HospitalEmployee {
  constructor(name, certifications) {
    super(name);
    this._certifications = certifications;
  }

  get certifications() {
    return this._certifications;
  }

  addCertification(newCertification) {
    this.certifications.push(newCertification);
  }
}

// create an instance of the Nurse class
const nurseOlynyk = new Nurse('Olynyk', ['Trauma','Pediatrics']);
nurseOlynyk.takeVacationDays(5);
console.log(nurseOlynyk.remainingVacationDays);
nurseOlynyk.addCertification('Genetics');
console.log(nurseOlynyk.certifications);

// call the static method
console.log(HospitalEmployee.generatePassword())

// call the static method on a sub-class
console.log(Nurse.generatePassword())

// TypeError , cannot call the static method on an instance of a class
console.log(nurseOlynyk.generatePassword())
