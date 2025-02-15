class BmiBrain {
  final int Weight;
  final double Height;
  BmiBrain({required this.Weight, required this.Height});
  double CalcBMI() {
    double heightinmeter = Height / 100;
    double BMI = Weight / (heightinmeter * heightinmeter);
    return BMI;
  }

  String getTextTitle() {
    double bmi = CalcBMI();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getdescriptionText() {
    double bmi = CalcBMI();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. try to exercise more ';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
