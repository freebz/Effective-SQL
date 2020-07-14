-- 코드 9-20 Appointments 테이블 생성 DDL

CREATE TABLE Appointments (
  AppointmentID int IDENTITY (1, 1) PRIMARY KEY,
  ApptStartDate date NOT NULL,
  ApptStartTime time NOT NULL,
  ApptEndDate date NOT NULL,
  ApptEndTime time NOT NULL,
  ApptDescription varchar(50) NULL
  );
