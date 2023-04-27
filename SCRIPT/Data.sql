--insert data
INSERT INTO DoiTac (MaDT, TenDT, SDT) VALUES ('DT001', 'Công ty A', '0123456789');
INSERT INTO DoiTac (MaDT, TenDT, SDT) VALUES ('DT002', 'Công ty B', '0987654321');
INSERT INTO DoiTac (MaDT, TenDT, SDT) VALUES ('DT003', 'Công ty C', '0369852147');
INSERT INTO DoiTac (MaDT, TenDT, SDT) VALUES ('DT004', 'Công ty D', '0541236987');
INSERT INTO DoiTac (MaDT, TenDT, SDT) VALUES ('DT005', 'Công ty E', '0164875923');

INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL001', N'Du lịch biển Nha Trang', 2500000, 'https://example.com/tdl001.jpg', '05/06/2022', '10/06/2022','DT004');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL002', N'Du lịch văn hóa Hội An', 3200000, 'https://example.com/tdl002.jpg', '10/07/2022', '15/07/2022','DT002');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL003', N'Du lịch thiên nhiên Sapa', 4000000, 'https://example.com/tdl003.jpg', '20/08/2022', '25/08/2022','DT001');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL004', N'Du lịch lịch sử Huế', 2800000, 'https://example.com/tdl004.jpg', '05/09/2022', '10/09/2022','DT004');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL005', N'Du lịch mạo hiểm Đà Lạt', 4500000, 'https://example.com/tdl005.jpg', '12/10/2022', '17/10/2022','DT005');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL006', N'Du lịch ẩm thực Hà Nội', 3000000, 'https://example.com/tdl006.jpg', '20/11/2022', '25/11/2022','DT003');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL007', N'Du lịch sinh thái Cần Thơ', 3500000, 'https://example.com/tdl007.jpg', '05/12/2022', '10/12/2022','DT002');
INSERT INTO TourDuLich (MaTour, Mota, GiaDichVu, image, NgayBatDau, NgayKetThuc, MaDT)
VALUES ('TDL008', N'Du lịch đảo Phú Quốc', 4200000, 'https://example.com/tdl008.jpg', '10/01/2023', '15/01/2023','DT003');

INSERT INTO TaiKhoan VALUES ('admin', 'admin', 1);
INSERT INTO TaiKhoan VALUES ('KH1', '1', 2);
INSERT INTO TaiKhoan VALUES ('KH2', '1', 2);
INSERT INTO TaiKhoan VALUES ('KH3', '1', 3);
INSERT INTO TaiKhoan VALUES ('NV1', '1', 3);
INSERT INTO TaiKhoan VALUES ('NV2', '1', 3);

INSERT INTO KhachHang VALUES ('1234767890', N'Nguyễn Văn A', N'Hà Nội', '0987654321', 'nguyenvana@gmail.com', 'HC123456', 'CK123456', 'https://cdn-icons-png.flaticon.com/512/219/219983.png', 'KH1');
INSERT INTO KhachHang VALUES ('2345778901', N'Trần Thị B', N'Hồ Chí Minh', '0123456789', 'tranthib@gmail.com', 'HC234567', 'CK234567', 'https://cdn-icons-png.flaticon.com/512/219/219983.png', 'KH2');
INSERT INTO KhachHang VALUES ('3454789012', N'Lê Văn C', N'Đà Nẵng', '0987654321', 'levanc@gmail.com', 'HC345678', 'CK345678', 'https://cdn-icons-png.flaticon.com/512/219/219983.png', 'KH3');

INSERT INTO HanhLy VALUES ('HL001', 15.5, N'Den', '1234767890');
INSERT INTO HanhLy VALUES ('HL002', 12.2, N'Xam', '2345778901');
--MÁ =)))



INSERT INTO DK_TourDuLich VALUES ('DKTDL001', 2, N'Xe 5 chỗ', 'TDL001', '1234767890');
INSERT INTO DK_TourDuLich VALUES ('DKTDL002', 3, N'Xe 5 chỗ', 'TDL003', '2345778901');

INSERT INTO LoaiPhong VALUES ('LP001', N'Phòng đơn', N'Phòng có 1 giường đơn', 'https://grandoceanhotel.com.vn/wp-content/uploads/2019/06/canhr-60_Ll.jpg', '500');
INSERT INTO LoaiPhong VALUES ('LP002', N'Phòng đôi', N'Phòng có 1 giường đôi', 'https://grandoceanhotel.com.vn/wp-content/uploads/2019/06/canhr-60_Ll.jpg', '700');
INSERT INTO LoaiPhong VALUES ('LP003', N'Phòng thường', N'Phòng có 2 giường đơn', 'https://grandoceanhotel.com.vn/wp-content/uploads/2019/06/canhr-60_Ll.jpg', '650');
INSERT INTO LoaiPhong VALUES ('LP004', N'Phòng tập thể', N'Phòng có 4 giường đơn', 'https://grandoceanhotel.com.vn/wp-content/uploads/2019/06/canhr-60_Ll.jpg', '1200');
INSERT INTO LoaiPhong VALUES ('LP005', N'Phòng gia đình', N'Phòng có 1 giường đôi và 1 giường đơn phù hợp cho gia đình đi du lịch', 'https://grandoceanhotel.com.vn/wp-content/uploads/2019/06/canhr-60_Ll.jpg', '1000');
INSERT INTO LoaiPhong VALUES ('LP006', N'Phòng cao cấp', N'Phòng có không gian rộng rãi và trang thiết bị sang trọng', 'https://grandoceanhotel.com.vn/wp-content/uploads/2019/06/canhr-60_Ll.jpg', '1500');

INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P001', 2, 1, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP005');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P002', 3, 1, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP002');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P003', 2, 0, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP001');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P004', 3, 1, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP002');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P005', 4, 0, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh, Jacuzzi', 'LP003');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P006', 3, 0, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP001');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P007', 2, 1, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP006');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P008', 4, 0, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP001');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P009', 4, 1, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh, Jacuzzi', 'LP003');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P010', 2, 1, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP004');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P011', 2, 1, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP001');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P012', 3, 1, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP002');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P013', 2, 0, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP001');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P014', 3, 1, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP006');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P015', 4, 0, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh, Jacuzzi', 'LP003');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P016', 3, 0, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP006');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P017', 2, 1, N'Không hút thuốc', N'Điều hòa, Tivi', 'LP001');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P018', 4, 0, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh', 'LP002');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P019', 4, 1, N'Không hút thuốc', N'Điều hòa, Tivi, Tủ lạnh, Jacuzzi', 'LP003');
INSERT INTO Phong (MaPhong, SLNguoi, TinhTrang, QuyDinhPhong, TienNghi, LoaiP) VALUES ('P020', 2, 1, N'Không hút thuôc', N'Điều hòa, Tivi', 'LP005');


INSERT INTO PhieuDatPhong (MaPDP, NgayDen, SoDemLuTru, YeuCauDacBiet, PhuongThucThanhToan, SoLuongNguoi, SoTienDatCoc, MaPhong, MaKH)
VALUES ('PDP001', '20/05/2023', 2, NULL, 1, 2, 1000000, 'P006', '1234767890');
INSERT INTO PhieuDatPhong (MaPDP, NgayDen, SoDemLuTru, YeuCauDacBiet, PhuongThucThanhToan, SoLuongNguoi, SoTienDatCoc, MaPhong, MaKH)
VALUES ('PDP002', '25/05/2023', 3, NULL, 2, 3, 1500000, 'P003', '2345778901');

INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV001', N'Massage toàn thân', N'Massage', 500000, 'massage.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV002', N'Ch?m sóc da m?t', N'Ch?m sóc da', 700000, 'skincare.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV003', N'Cho thuê xe', N'Thuê xe', 500000, 'car-rental.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV004', N'Bán ?? ?n, th?c u?ng', N'Th?c u?ng', 350000, 'fast-food.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV005', 'H? B?i', N'H? b?i', 800000, 'swimming-pool.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV006', N'D??ng tóc', N'D??ng tóc', 600000, 'hair.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV007', N'Make-up', N'Make-up', 500000, 'cosmetics.png');
INSERT INTO DichVu (MaDV, MoTa, TenDV, GiaDV, image)
VALUES ('DV08', N'Xông h?i', N'Xông h?i', 300000, 'towel.png');

INSERT INTO DK_Dich_Vu VALUES ('DKDV001', '1234767890', 'DV006');
INSERT INTO DK_Dich_Vu VALUES ('DKDV002', '3454789012', 'DV003');
INSERT INTO DK_Dich_Vu VALUES ('DKDV003', '1234767890', 'DV004');

INSERT INTO HoaDonTong (MaHD, GiaTien, SoTienDaCoc, MaPDP, MaDKDV, MaDKTDL) VALUES ('HD001', 500000, 80000, 'PDP001', 'DKDV001', 'DKTDL001');

INSERT INTO PhieuVanChuyenHanhLy VALUES ('PVC001', '20/06/2022', 1, 'HL001');
INSERT INTO PhieuVanChuyenHanhLy VALUES ('PVC002', '22/06/2022', 2, 'HL002');


INSERT INTO NhanVien (MaNV, TenNV, GioiTinh, Email, SDT, DiaChi, MaPDP, MaHD, MaPVC, USERNAME)
VALUES ('NV001', N'Nguyễn Văn A', 'Nam', 'nvA@gmail.com', '0987654321', N'123 đường ABC, Quận 1, TP. HCM', NULL, 'HD001', 'PVC002', 'NV1');
INSERT INTO NhanVien (MaNV, TenNV, GioiTinh, Email, SDT, DiaChi, MaPDP, MaHD, MaPVC, USERNAME)
VALUES('NV002', N'Trần Thị B', 'Nu', 'ttb@gmail.com', '0123456789', N'456 đường XYZ, Quận 2, TP. HCM', 'PDP001', NULL, NULL, 'NV2');



sssss