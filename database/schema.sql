-- Create Database
CREATE DATABASE IF NOT EXISTS smartverify_db;
USE smartverify_db;

-- 1. Student Table
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- 2. Documents Table
CREATE TABLE IF NOT EXISTS documents (
    document_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    document_type VARCHAR(50) NOT NULL,
    document_status VARCHAR(20) DEFAULT 'PENDING',
    file_path VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE
);


-- 3. Verification Results Table
CREATE TABLE IF NOT EXISTS verification_results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    document_id INT NOT NULL,
    verification_status VARCHAR(20) DEFAULT 'PENDING',
    confidence_score DECIMAL(5,2) DEFAULT 0.00,
    verified_by VARCHAR(50) DEFAULT 'SYSTEM',
    remarks TEXT,
    verified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (document_id) REFERENCES documents(document_id) ON DELETE CASCADE
);