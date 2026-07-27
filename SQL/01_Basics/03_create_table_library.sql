CREATE TABLE library.borrow_records (
    record_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    borrow_date DATE DEFAULT CURRENT_DATE,
    return_date DATE,
    status VARCHAR(20) DEFAULT 'Borrowed' 
        CHECK (status IN ('Borrowed', 'Returned', 'Overdue')),
    
    CONSTRAINT fk_student 
        FOREIGN KEY (student_id) 
        REFERENCES library.students(student_id),
    
    CONSTRAINT fk_book 
        FOREIGN KEY (book_id) 
        REFERENCES library.books(book_id),
    
    CONSTRAINT unique_borrow 
        UNIQUE (student_id, book_id)
);
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'library';