# SmartVerify Database Design

## 1. Student Table

| Column        | Data Type    | Description          |
| ------------- | ------------ | -------------------- |
| student_id    | INT          | Primary Key          |
| full_name     | VARCHAR(100) | Student Name         |
| email         | VARCHAR(100) | Email Address        |
| phone_number  | VARCHAR(15)  | Contact Number       |
| password      | VARCHAR(255) | Encrypted Password   |
| date_of_birth | DATE         | Date of Birth        |
| address       | TEXT         | Student Address      |
| created_at    | TIMESTAMP    | Account Created Time |
| updated_at    | TIMESTAMP    | Last Updated Time    |


## 2. Documents Table

| Column          | Data Type    | Description                                |
|-----------------|--------------|--------------------------------------------|
| document_id     | INT          | Primary Key (Auto Increment)               |
| student_id      | INT          | Foreign Key (References Student Table)     |
| document_type   | VARCHAR(50)  | e.g., 'AADHAAR', '10TH_MARKSHEET', '12TH_MARKSHEET', 'TRANSFER_CERTIFICATE' |
| document_status | VARCHAR(20)  | e.g., 'PENDING', 'VERIFIED', 'REJECTED'    |
| file_path       | VARCHAR(255) | Storage location path of the uploaded file |
| created_at      | TIMESTAMP    | Document Uploaded Time                     |
| updated_at      | TIMESTAMP    | Last Verification/Update Time              |

