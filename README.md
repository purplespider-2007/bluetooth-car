<p align="center">
  <img src="./img.png" alt="Project Banner" width="100%">
</p>

# Smart Accident Prevention and Alert Robot Car

## Basic Details

### Team Name Robocore

### Team Members
- Member 1: Haritha Rani - College of Engineering Trivandrum
- Member 2: Devika M G - College of Engineering Trivandrum

### Hosted Project Link
[mention your project hosted link here]

### Project Description
This project uses an Arduino Uno with two IR sensors and a Bluetooth module to design a smart robot car that stops automatically when an obstacle is detected, preventing accidents.


### The Problem statement
Accidents and collisions may occur in manually controlled robot cars due to delayed human reaction or unnoticed obstacles. To improve safety, there is a need for a system that can automatically detect obstacles and stop the vehicle immediately.

### The Solution
We solve the problem by detecting obstacles early using IR sensors and automatically stopping or changing direction to prevent collisions. The Bluetooth module allows wireless control, making the system both safe and user-friendly.

---

## Technical Details

### Technologies/Components Used

**For Software:**
- Languages used: c++
- Frameworks used: NIL
- Libraries used: NIL
- Tools used: Arduino IDE

**For Hardware:**
- Main components: Arduino UNO,Motor driver(LN298),HC-05 bluetooth module,motors(4WD),IR sensors
- Specifications: Microcontroller: Arduino Uno (5V, 16 MHz),Bluetooth: HC-05 / HC-06 (2.4 GHz, ~10 m range),Obstacle Sensors: IR Sensors (2–30 cm range, 5V),Motor Driver: L298N (5–35V, 2A per channel),Motors: 6–12V DC geared motors,Power Supply: 7–12V battery,Functions: Automatic obstacle avoidance + Bluetooth control + Alert indication (LED/Buzzer)
- Tools required: Soldering iron, solder wire, screwdriver set, wire stripper, cutter, breadboard, multimeter, hot glue gun,

---

## Features

List the key features of your project:
- Feature 1: Automatic obstacle detection
- Feature 2: Collision prevention (auto stop / direction change)
- Feature 3: Bluetooth wireless control


---

## Implementation

### For Software:

#### Installation
```bash
[Installation commands - e.g., npm install, pip install -r requirements.txt]
```

#### Run
```bash
[Run commands - e.g., npm start, python app.py]
```

### For Hardware:

#### Components Required
Arduino Uno, HC-05 / HC-06, IR obstacle sensors, L298N, DC motors, robot chassis with wheels, 9V/12V battery, jumper wires

#### Circuit Setup
IR Sensors: VCC → 5V, GND → GND, OUT → Arduino digital pins (e.g., D2, D3)

Bluetooth Module (HC-05/HC-06): VCC → 5V, GND → GND, TX → RX, RX → TX (use voltage divider if needed)

Motor Driver (L298N): IN1–IN4 → Arduino digital pins, OUT1–OUT4 → DC motors, 12V → Battery, GND → Common ground

Power: Arduino powered via battery or VIN; all grounds connected together

---

## Project Documentation

### For Software:

#### Screenshots (Add at least 3)

![Screenshot1](Add screenshot 1 here with proper name)
*Add caption explaining what this shows*

![Screenshot2](Add screenshot 2 here with proper name)
*Add caption explaining what this shows*

![Screenshot3](Add screenshot 3 here with proper name)
*Add caption explaining what this shows*

#### Diagrams

**System Architecture:**

![Architecture Diagram](docs/architecture.png)
*Explain your system architecture - components, data flow, tech stack interaction*

**Application Workflow:**

![Workflow](docs/workflow.png)
*Add caption explaining your workflow*

---

### For Hardware:

#### Schematic & Circuit

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/33c895bd-ec2d-4d82-821a-0ec2c33ad39b" />
1️⃣ Arduino Uno – Main Controller
Controls the entire system by reading sensor inputs and sending signals to the motor driver and Bluetooth module.

2️⃣ IR Obstacle Sensors – Object Detection
Connected to digital pins (D2, D3). They detect obstacles and send HIGH/LOW signals to the Arduino.

3️⃣ HC-05 – Wireless Communication
Connected to RX/TX pins for serial communication. Receives movement commands from the smartphone.

4️⃣ L298N – Motor Control Unit
Receives control signals (IN1–IN4) from Arduino and drives the left and right DC motors.

5️⃣ DC Motors – Movement
Connected to OUT1–OUT4 of L298N. Enable forward, backward, left, and right motion.

6️⃣ 12V Battery – Power Supply
Supplies power to the motor driver and Arduino (common ground shared across all components).

7️⃣ Common Ground Connection
All GND terminals are connected together to ensure proper circuit operation.

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/797484e6-7bb0-43d1-9d3c-bc9e4733dc0c" />


#### Build Photos

Devika MG : ![IMG-20260228-WA0004](https://github.com/user-attachments/assets/91c9342c-fe91-4741-b5fd-e930ca789ed4)
Haritha Rani J : ![IMG_20260227_194605](https://github.com/user-attachments/assets/7fd64dd9-06f2-4381-b633-acbd7e2d4f8b)



![Components](Add photo of your components here)
*List out all components shown*

![IMG-20260228-WA0005](https://github.com/user-attachments/assets/53044d08-1de3-4b52-8e6e-c40e068ac7a7)
![IMG20260228170051](https://github.com/user-attachments/assets/685d02cc-9ed8-48d0-86ba-aa7b2e60eeb6)



![IMG_20260228_174840](https://github.com/user-attachments/assets/486a9bdd-cf78-41c3-a9e4-6e312ad16fef)


---

## Additional Documentation

### For Web Projects with Backend:

#### API Documentation

**Base URL:** `https://api.yourproject.com`

##### Endpoints

**GET /api/endpoint**
- **Description:** [What it does]
- **Parameters:**
  - `param1` (string): [Description]
  - `param2` (integer): [Description]
- **Response:**
```json
{
  "status": "success",
  "data": {}
}
```

**POST /api/endpoint**
- **Description:** [What it does]
- **Request Body:**
```json
{
  "field1": "value1",
  "field2": "value2"
}
```
- **Response:**
```json
{
  "status": "success",
  "message": "Operation completed"
}
```

[Add more endpoints as needed...]

---

### For Mobile Apps:

#### App Flow Diagram

![App Flow](docs/app-flow.png)
*Explain the user flow through your application*

#### Installation Guide

**For Android (APK):**
1. Download the APK from [Release Link]
2. Enable "Install from Unknown Sources" in your device settings:
   - Go to Settings > Security
   - Enable "Unknown Sources"
3. Open the downloaded APK file
4. Follow the installation prompts
5. Open the app and enjoy!

**For iOS (IPA) - TestFlight:**
1. Download TestFlight from the App Store
2. Open this TestFlight link: [Your TestFlight Link]
3. Click "Install" or "Accept"
4. Wait for the app to install
5. Open the app from your home screen

**Building from Source:**
```bash
# For Android
flutter build apk
# or
./gradlew assembleDebug

# For iOS
flutter build ios
# or
xcodebuild -workspace App.xcworkspace -scheme App -configuration Debug
```

---

### For Hardware Projects:

#### Bill of Materials (BOM)

![IMG_20260228_180131](https://github.com/user-attachments/assets/ac4e0b4d-6006-4055-a645-63137874da22)


**Total Estimated Cost:** ₹2000

#### Assembly Instructions

Step 1: Prepare the Components
Collect all required components from the components list.
Verify voltage and rating specifications.
Arrange tools and components neatly on your workspace.


Step 2: Set Up the Power Connections

Connect the power rails on the breadboard (if used).
Connect the 5V output from the Arduino Uno to the positive rail.
Connect GND from Arduino to the negative rail (common ground).

Step 3: Connect IR Sensors

Connect VCC of IR sensors to 5V.
Connect GND to common ground.
Connect OUT pins to Arduino digital pins (e.g., D2, D3).


Step 4: Connect Bluetooth Module

Connect VCC to 5V and GND to GND.
Connect TX of HC-05 to Arduino RX.
Connect RX of HC-05 to Arduino TX (use voltage divider if required).


Step 5: Connect Motor Driver

Connect IN1–IN4 of L298N to Arduino digital pins.
Connect OUT1–OUT4 to left and right DC motors.
Connect 12V battery to motor driver power terminals.
Ensure all grounds are connected together.


Final Assembly

Mount all components securely on the robot chassis.
Insert battery and upload the Arduino program.
Test obstacle detection and Bluetooth control.

### For Scripts/CLI Tools:

#### Command Reference

**Basic Usage:**
```bash
python script.py [options] [arguments]
```

**Available Commands:**
- `command1 [args]` - Description of what command1 does
- `command2 [args]` - Description of what command2 does
- `command3 [args]` - Description of what command3 does

**Options:**
- `-h, --help` - Show help message and exit
- `-v, --verbose` - Enable verbose output
- `-o, --output FILE` - Specify output file path
- `-c, --config FILE` - Specify configuration file
- `--version` - Show version information

**Examples:**

```bash
# Example 1: Basic usage
python script.py input.txt

# Example 2: With verbose output
python script.py -v input.txt

# Example 3: Specify output file
python script.py -o output.txt input.txt

# Example 4: Using configuration
python script.py -c config.json --verbose input.txt
```

#### Demo Output

**Example 1: Basic Processing**

**Input:**
```
This is a sample input file
with multiple lines of text
for demonstration purposes
```

**Command:**
```bash
python script.py sample.txt
```

**Output:**
```
Processing: sample.txt
Lines processed: 3
Characters counted: 86
Status: Success
Output saved to: output.txt
```

**Example 2: Advanced Usage**

**Input:**
```json
{
  "name": "test",
  "value": 123
}
```

**Command:**
```bash
python script.py -v --format json data.json
```

**Output:**
```
[VERBOSE] Loading configuration...
[VERBOSE] Parsing JSON input...
[VERBOSE] Processing data...
{
  "status": "success",
  "processed": true,
  "result": {
    "name": "test",
    "value": 123,
    "timestamp": "2024-02-07T10:30:00"
  }
}
[VERBOSE] Operation completed in 0.23s
```

---

## Project Demo

### Video

https://drive.google.com/file/d/1i_znl64aOWdwDFneTNbhbjiHqsCi_GyB/view?usp=drive_link

### Additional Demos
[Add any extra demo materials/links - Live site, APK download, online demo, etc.]

---

## AI Tools Used (Optional - For Transparency Bonus)

If you used AI tools during development, document them here for transparency:

**Tool Used:** [e.g., GitHub Copilot, v0.dev, Cursor, ChatGPT, Claude]

**Purpose:** [What you used it for]
- Example: "Generated boilerplate React components"
- Example: "Debugging assistance for async functions"
- Example: "Code review and optimization suggestions"

**Key Prompts Used:**
- "Create a REST API endpoint for user authentication"
- "Debug this async function that's causing race conditions"
- "Optimize this database query for better performance"

**Percentage of AI-generated code:** [Approximately X%]

**Human Contributions:**
- Architecture design and planning
- Custom business logic implementation
- Integration and testing
- UI/UX design decisions

*Note: Proper documentation of AI usage demonstrates transparency and earns bonus points in evaluation!*

---

## Team Contributions

- [HARITHA RANI J]: Responsible for circuit connections, motor driver setup, sensor integration, chassis assembly, and overall hardware implementation.


- [DEVIKA M G]:Developed the Arduino code, integrated Bluetooth and obstacle detection features, performed testing, and prepared the project report and presentation.

---

## License

This project is licensed under the [LICENSE_NAME] License - see the [LICENSE](LICENSE) file for details.

**Common License Options:**
- MIT License (Permissive, widely used)
- Apache 2.0 (Permissive with patent grant)
- GPL v3 (Copyleft, requires derivative works to be open source)

---

Made with ❤️ at TinkerHub
