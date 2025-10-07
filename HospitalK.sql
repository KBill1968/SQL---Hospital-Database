Create Database HospitalK;

use HospitalK;

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 0),
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    emergency_contact VARCHAR(100),
    diagnosis VARCHAR(100),
    admission_date DATE NOT NULL,
    expected_discharge_date DATE,
    actual_discharge_date DATE,
    insurance_type ENUM('Private', 'Public') NOT NULL
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Nurses (
    nurse_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    shift VARCHAR(20) NOT NULL
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    address VARCHAR(255),
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2) CHECK (salary >= 0),
    vacation_schedule VARCHAR(100)
);

CREATE TABLE Rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    ward_type ENUM('Regular', 'ICU') NOT NULL,
    capacity INT CHECK (capacity > 0),
    occupied_beds INT CHECK (occupied_beds >= 0),
    CHECK (occupied_beds <= capacity)  
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    nurse_id INT,
    appointment_date DATE NOT NULL,
    appointment_type VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (nurse_id) REFERENCES Nurses(nurse_id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Medications (
    medication_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    medication_name VARCHAR(100) NOT NULL,
    dosage VARCHAR(50) NOT NULL,
    administration_time TIME NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Medical_Equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    equipment_name VARCHAR(100) NOT NULL,
    assigned_staff_id INT,
    usage_time TIME NOT NULL,
    FOREIGN KEY (assigned_staff_id) REFERENCES Staff(staff_id) ON DELETE SET NULL ON UPDATE CASCADE
);

use HospitalK;

ALTER TABLE Doctors
ADD COLUMN room_id INT,
ADD CONSTRAINT fk_doctor_room
FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE Patients
ADD COLUMN room_id INT,
ADD CONSTRAINT fk_patient_room
FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE Staff
ADD COLUMN room_id INT,
ADD CONSTRAINT fk_staff_room
FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE Medical_Equipment
ADD COLUMN room_id INT,
ADD CONSTRAINT fk_equipment_room
FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
ON DELETE SET NULL
ON UPDATE CASCADE;



