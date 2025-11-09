
-- 1. TẠO BẢNG Employee
CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    hire_date DATE
);


INSERT INTO Employee (full_name, department, salary, hire_date) VALUES
('Nguyễn Văn An', 'IT', 20000000, '2023-05-15'),
('Trần Thị Bình', 'Sales', 15000000, '2024-01-20'),
('Lê Văn Chung', 'IT', 18000000, '2023-01-01'),
('Phạm Thị Huệ', 'HR', 12000000, '2024-03-10'),
('Vũ Đình Khiêm', 'Sales', 5500000, '2023-11-20');


INSERT INTO Employee (full_name, department, salary, hire_date) VALUES
('Hoàng Thị Lan', 'HR', 13000000, '2024-04-01'),
('Đặng Quốc Anh', 'IT', 22000000, '2023-08-20'),
('Nguyễn Thị Mai', 'Marketing', 14000000, '2024-05-01'),
('Lý Thu An', 'Sales', 16000000, '2023-10-10'),
('Trần Văn Phát', 'IT', 6500000, '2024-06-01'),
('Đỗ Hùng Anh', 'HR', 5800000, '2023-12-31');


-- 2. Cập nhật mức lương tăng 10% cho nhân viên thuộc phòng IT
UPDATE Employee
SET salary = salary * 1.10
WHERE department = 'IT';
-- Ghi chú: Sau khi update, lương của nhân viên IT sẽ tăng 10%.


-- 3. Xóa nhân viên có mức lương dưới 6.000.000

DELETE FROM Employee
WHERE salary < 6000000;

-- 4. Liệt kê các nhân viên có tên chứa chữ “An” (không phân biệt hoa thường)
SELECT
    id,
    full_name,
    department
FROM
    Employee
WHERE
    full_name ILIKE '%An%';


-- 5. Hiển thị các nhân viên có ngày vào làm việc trong khoảng từ '2023-01-01' đến '2023-12-31'
SELECT
    id,
    full_name,
    hire_date
FROM
    Employee
WHERE
    hire_date BETWEEN '2023-01-01' AND '2023-12-31';