int leftIR = 2;
int rightIR = 3;

int IN1 = 8;
int IN2 = 9;
int IN3 = 10;
int IN4 = 11;

char command;

void setup() {
  pinMode(leftIR, INPUT);
  pinMode(rightIR, INPUT);

  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);

  Serial.begin(9600);
}

void loop() {

  int leftObstacle = digitalRead(leftIR);
  int rightObstacle = digitalRead(rightIR);

  if (leftObstacle == LOW || rightObstacle == LOW) {
    stopCar();
  }
  else {
    if (Serial.available()) {
      command = Serial.read();

      if (command == 'F') forward();
      else if (command == 'B') backward();
      else if (command == 'L') left();
      else if (command == 'R') right();
      else if (command == 'S') stopCar();
    }
  }
}

void forward() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void backward() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void left() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void right() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void stopCar() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, LOW);
}