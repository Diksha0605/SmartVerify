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

| Column             | Data Type    | Description                            |
|--------------------|--------------|----------------------------------------|
| verification_id    | INT          | Primary Key (Auto Increment)           |
| student_id         | INT          | Foreign Key (References Student Table) |
| overall_status     | VARCHAR(20)  | Pending / Verified / Rejected          |
| verification_score | DECIMAL(5,2) | Verification score (e.g. 95.50)        |
| verified_by        | VARCHAR(100) | Admin name or ID                       |
| verification_date  | TIMESTAMP    | Date & Time of verification            |
| remarks            | TEXT         | Final verification remarks             |


## 4. Entity Relationship (ER) Diagram

```text
+----------------+
|    STUDENT     |
+----------------+
| student_id PK  |
| full_name      |
| email          |
| phone_number   |
| ...            |
+----------------+
         |
         | 1
         |
         |------< N
                |
      +------------------+
      |    DOCUMENTS     |
      +------------------+
      | document_id PK   |
      | student_id FK    |
      | document_type    |
      | file_path        |
      | ...              |
      +------------------+

         |
         | 1
         |
         |------1
                |
     +-------------------------+
     | VERIFICATION_RESULTS    |
     +-------------------------+
     | verification_id PK      |
     | student_id FK           |
     | overall_status          |
     | verification_score      |
     | ...                     |
     +-------------------------+
```