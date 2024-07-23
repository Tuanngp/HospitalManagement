USE [PRN212_HospitalManagement]
GO

-- Thêm dữ liệu cho bảng Doctors
INSERT INTO Doctors (Name, Fee, IsDoctorSelected) VALUES 
(N'Nguyễn Văn An', 500000, 0),
(N'Trần Thị Bình', 450000, 0),
(N'Lê Hoàng Cường', 550000, 0),
(N'Phạm Thị Dung', 480000, 0),
(N'Hoàng Văn Em', 520000, 0);

-- Thêm dữ liệu cho bảng Patients
INSERT INTO Patients (FullName, Email, BirthDay, Phone, Gender, BloodGroup, Address, Weight, Height, AdmittedDate, IsPatientSelected) VALUES
(N'Lý Thị Hoa', 'hoa.ly@email.com', '1985-05-15', '0901234567', N'F', 'A+', N'123 Nguyễn Huệ, Q1, TP.HCM', 55.5, 160, '2024-07-20', 0),
(N'Trần Văn Khánh', 'khanh.tran@email.com', '1990-08-22', '0912345678', N'M', 'O-', N'456 Lê Lợi, Q5, TP.HCM', 70.2, 175, '2024-07-21', 0),
(N'Nguyễn Thị Lan', 'lan.nguyen@email.com', '1978-12-03', '0923456789', N'F', 'B+', N'789 Trần Hưng Đạo, Q3, TP.HCM', 62.8, 165, '2024-07-22', 0);

-- Thêm dữ liệu cho bảng Appointments
INSERT INTO Appointments (AppointedDate, IsAppointmentSelected, DoctorId, PatientId) VALUES
('2024-07-23 09:00:00', 0, 1, 1),
('2024-07-24 10:30:00', 0, 2, 2),
('2024-07-25 14:00:00', 0, 3, 3);

-- Thêm dữ liệu cho bảng Bills
INSERT INTO Bills (BillAmount, PaymentMode, Status, PaymentDate, IsBillSelected, PatientId) VALUES
(1500000, N'Tiền mặt', 1, '2024-07-23', 0, 1),
(2000000, N'Chuyển khoản', 1, '2024-07-24', 0, 2),
(1800000, N'Thẻ tín dụng', 0, '2024-07-25', 0, 3);

-- Thêm dữ liệu cho bảng Drugs
INSERT INTO Drugs (TradeName, GenericName, IsDrugSelected) VALUES
(N'Panadol', N'Paracetamol', 0),
(N'Augmentin', N'Amoxicillin/Clavulanic acid', 0),
(N'Omeprazole', N'Omeprazole', 0);

-- Thêm dữ liệu cho bảng Prescriptions
INSERT INTO Prescriptions (PrescribedDate, IsPrescriptionSelected, PatientId) VALUES
('2024-07-23', 0, 1),
('2024-07-24', 0, 2),
('2024-07-25', 0, 3);

-- Thêm dữ liệu cho bảng Dosages
INSERT INTO Dosages (DrugType, Dose, Duration, Comments, IsDosageSelected, DrugId, PrescriptionId) VALUES
(N'Viên nén', 500, 5, N'Uống sau khi ăn', 0, 1, 1),
(N'Viên nén', 625, 7, N'Uống 2 lần/ngày', 0, 2, 2),
(N'Viên nang', 20, 14, N'Uống trước khi ăn 30 phút', 0, 3, 3);

-- Thêm dữ liệu cho bảng Tests
INSERT INTO Tests (TestName, Description, Fee, IsTestSelected) VALUES
(N'Xét nghiệm máu', N'Kiểm tra các chỉ số trong máu', 250000, 0),
(N'X-quang ngực', N'Chụp X-quang vùng ngực', 300000, 0),
(N'Siêu âm ổ bụng', N'Kiểm tra các cơ quan trong ổ bụng', 400000, 0);

-- Thêm dữ liệu cho bảng MedicalTests
INSERT INTO MedicalTests (Description, IsMedicalTestSelected, TestId, PrescriptionId) VALUES
(N'Kiểm tra chức năng gan, thận', 0, 1, 1),
(N'Kiểm tra tình trạng phổi', 0, 2, 2),
(N'Kiểm tra gan, túi mật, thận', 0, 3, 3);

-- Thêm dữ liệu cho bảng Users
INSERT INTO Users (UserName, Password, IsSuperUser, IsSelectedUser) VALUES
(N'admin', '123', 1, 0),
(N'bacsi01', 'bs123456', 0, 0),
(N'yta01', 'yta123456', 0, 0);