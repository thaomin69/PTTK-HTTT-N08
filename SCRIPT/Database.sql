--DROP TABLE IF IT IS EXISTS
DECLARE
   TEMP_COUNT INT;
BEGIN
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'DoiTac';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE DoiTac';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'TourDuLich';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE TourDuLich';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'TaiKhoan';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE TaiKhoan';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'HanhLy';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE HanhLy';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'KhachHang';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE KhachHang';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'DK_TourDuLich';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE DK_TourDuLich';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'LoaiPhong';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE LoaiPhong';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'Phong';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE Phong';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'PhieuDatPhong';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE PhieuDatPhong';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'DichVu';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE DichVu';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'DK_Dich_Vu';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE DK_Dich_Vu';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'HoaDonTong';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE HoaDonTong';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'PhieuVanChuyenHanhLy';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE PhieuVanChuyenHanhLy';
   END IF;
   SELECT COUNT(*) INTO TEMP_COUNT FROM USER_TABLES WHERE TABLE_NAME = 'NhanVien';
   IF TEMP_COUNT = 1 THEN
      EXECUTE IMMEDIATE 'DROP TABLE NhanVien';
   END IF;
END;


CREATE TABLE DoiTac (
    MaDT VARCHAR(10) PRIMARY KEY,
    TenDT NVARCHAR2(20),
    SDT VARCHAR(13),
    MaTour VARCHAR(10)
);

CREATE TABLE TourDuLich (
    MaTour VARCHAR(10) PRIMARY KEY,
    Mota NVARCHAR2(200),
    GiaDichVu FLOAT,
    image VARCHAR(500),
    NgayBatDau DATE,
    NgayKetThuc DATE,
    MaDT VARCHAR(10),
    FOREIGN KEY (MaDT) REFERENCES DoiTac(MaDT)
);

CREATE TABLE TaiKhoan (
    Username VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(50),
    Type INT
);

CREATE TABLE KhachHang (
    CMND VARCHAR(20) PRIMARY KEY,
    TenKH NVARCHAR2(50),
    DiaChi NVARCHAR2(100),
    SDT NVARCHAR2(20),
    Email NVARCHAR2(50),
    HoChieu NVARCHAR2(20),
    ChiaKhoa NVARCHAR2(20),
    Avatar VARCHAR(500),
    USERNAME VARCHAR(50) NOT NULL,
    FOREIGN KEY (USERNAME) REFERENCES TAIKHOAN(USERNAME)
);

CREATE TABLE HanhLy (
    MaHL VARCHAR(10) PRIMARY KEY,
    TrongLuong FLOAT,
    MauSac NVARCHAR2(50),
    MaKH VARCHAR(20),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(CMND)
);

CREATE TABLE DK_TourDuLich (
    MaDKTDL VARCHAR(10) PRIMARY KEY,
    SoLuongNguoi INT,
    LoaiDichVuDuaDon NVARCHAR2(50),
    MaTour VARCHAR(10),
    CMND VARCHAR(20),
    FOREIGN KEY (MaTour) REFERENCES TourDuLich(MaTour),
    FOREIGN KEY (CMND) REFERENCES KHACHHANG(CMND)
);


CREATE TABLE LoaiPhong (
    MaLoaiPhong VARCHAR(10) PRIMARY KEY,
    TenLoaiPhong NVARCHAR2(50),
    MoTa NVARCHAR2(100),
    image VARCHAR(200),
    Gia Float
);


CREATE TABLE Phong (
    MaPhong VARCHAR(10) PRIMARY KEY,
    SLNguoi int,
    TinhTrang INT,
    QuyDinhPhong NVARCHAR2(100),
    TienNghi NVARCHAR2(100),
    LoaiP VARCHAR(10) NOT NULL,
    FOREIGN KEY (LoaiP) REFERENCES LoaiPhong(MaLoaiPhong)
);

CREATE TABLE PhieuDatPhong (
    MaPDP VARCHAR(10) PRIMARY KEY,
    NgayDen DATE,
    SoDemLuTru INT,
    YeuCauDacBiet NVARCHAR2(100),
    PhuongThucThanhToan NUMBER(1),
    SoLuongNguoi INT,
    SoTienDatCoc FLOAT,
    CheckDC NUMBER(1) DEFAULT 0,
    MaPhong VARCHAR(10)NOT NULL,
    MaKH VARCHAR(20) NOT NULL,
    FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
    FOREIGN KEY (MaKH) REFERENCES KHACHHANG(CMND)
);

CREATE TABLE DichVu (
    MaDV VARCHAR(10) PRIMARY KEY,
    MoTa VARCHAR(500),
    TenDV NVARCHAR2(50),
    GiaDV FLOAT,
    image VARCHAR(200)
);

CREATE TABLE DK_Dich_Vu (
    MaDKDV VARCHAR(10) PRIMARY KEY,
    MaKH VARCHAR(20),
    MaDV VARCHAR(10),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(CMND),
    FOREIGN KEY (MaDV) REFERENCES DichVu(MaDV)
);

CREATE TABLE HoaDonTong (
    MaHD VARCHAR(10) PRIMARY KEY,
    GiaTien FLOAT,
    SoTienDaCoc FLOAT,
    --MaPDP VARCHAR(10) NOT NULL,
    --MaDKDV VARCHAR(10),
    --MaDKTDL VARCHAR(10),
    MaKH VARCHAR(20) NOT NULL,
    --FOREIGN KEY (MaPDP) REFERENCES PhieuDatPhong(MaPDP),
    --FOREIGN KEY (MaDKDV) REFERENCES DK_Dich_Vu(MaDKDV),
    --FOREIGN KEY (MaDKTDL) REFERENCES DK_TourDuLich(MaDKTDL)
    FOREIGN KEY (MaKH) REFERENCES KhachHang(CMND)
);

CREATE TABLE PhieuVanChuyenHanhLy (
    MaPVC VARCHAR(10) PRIMARY KEY,
    NgayLap DATE,
    SoLuongHanhLy INT,
    MaHL VARCHAR(10),
    FOREIGN KEY (MaHL) REFERENCES HanhLy(MaHL)
);

CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    TenNV NVARCHAR2(50),
    GioiTinh NVARCHAR2(10),
    Email VARCHAR(100),
    SDT VARCHAR(20),
    DiaChi NVARCHAR2(100),
    MaPDP VARCHAR(10),
    MaHD VARCHAR(10),
    MaPVC VARCHAR(10),
    USERNAME VARCHAR(20),
    FOREIGN KEY (MaPDP) REFERENCES PhieuDatPhong(MaPDP),
    FOREIGN KEY (MaHD) REFERENCES HoaDonTong(MaHD),
    FOREIGN KEY (MaPVC) REFERENCES PhieuVanChuyenHanhLy(MaPVC),
    FOREIGN KEY (USERNAME) REFERENCES TAIKHOAN(USERNAME)
); 


ALTER TABLE NhanVien ADD CONSTRAINT RB_GioiTinh CHECK (GioiTinh IN ('Nam', 'Nu'));
ALTER TABLE TaiKhoan ADD CONSTRAINT RB_Type CHECK (Type IN (1, 2, 3));





