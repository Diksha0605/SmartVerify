# SmartVerify Database Design

## Student Table

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
