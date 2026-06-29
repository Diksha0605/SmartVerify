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

| Column              | Data Type    | Description                   |
|---------------------|--------------|-------------------------------|
| document_id         | INT          | Primary Key                   |
| student_id          | INT          | Student ID (Foreign Key)      |
| document_type       | VARCHAR(50)  | Aadhaar, 10th, 12th           |
| file_name           | VARCHAR(255) | Uploaded file name            |
| file_path           | VARCHAR(255) | File storage location         |
| upload_date         | TIMESTAMP    | Upload date and time          |
| verification_status | VARCHAR(20)  | Pending / Verified / Rejected |
| remarks             | TEXT         | Admin comments                |


## 3. Verification Results Table

| Column              | Data Type    | Description                                |
|---------------------|--------------|--------------------------------------------|
| result_id           | INT          | Primary Key (Auto Increment)               |
| document_id         | INT          | Foreign Key (References Documents Table)   |
| verification_status | VARCHAR(20)  | e.g., 'PASSED', 'FAILED', 'MANUAL_REVIEW'  |
| confidence_score    | DECIMAL(5,2) | AI Matching Score (e.g., 98.50%)           |
| verified_by         | VARCHAR(50)  | System/Admin ID who performed verification |
| remarks             | TEXT         | Reason for failure or specific notes       |
| verified_at         | TIMESTAMP    | Time when verification was completed       |