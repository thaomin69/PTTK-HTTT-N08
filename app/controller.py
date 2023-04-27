from ProjectHotel.settings import execute_query

class Phong_controller:
    def get_typeroom():
        sql = "select * from LoaiPhong"
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result
    
    def get_service():
        sql = "select * from dichvu"
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result
    
    def get_room_empty():
        sql = "select * from phong ph,loaiphong lp where lp.MALOAIPHONG = ph.LOAIP and TINHTRANG = 0"
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result
    
    def get_room():
        sql = "select * from phong ph,loaiphong lp where lp.MALOAIPHONG = ph.LOAIP"
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result

    def get_typeroom_item(malp):
        sql = "select * from phong ph join loaiphong lp on lp.MALOAIPHONG = ph.LOAIP where lp.MALOAIPHONG = '{0}'".format(malp)
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result
    def get_nametype(malp):
        sql = "select TENLOAIPHONG from LoaiPhong lp where lp.MALOAIPHONG = '{0}'".format(malp)
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result[0][0]



    
class tour_controller:
    def get_tour():
        sql = "select * from TourDuLich"
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result
    
class login_controller:
    def get_login():
        sql = "select * from taikhoan"
        result = execute_query('QLKhachSan', 'a' ,sql)
        return result
    
class signup_controller:
    def save_customer(cmnd, tenkh, diachi, sdt, email, username):
        sql = "INSERT INTO KhachHang (CMND, TenKH, DiaChi, SDT, Email, Avatar, USERNAME) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', 'https://cdn-icons-png.flaticon.com/512/219/219983.png', '{5}')".format(cmnd, tenkh, diachi, sdt, email, username)
        result, er = execute_query('QLKhachSan', 'a' ,sql)
        return result, er
    
    def save_account(username, password):
        sql = "INSERT INTO TaiKhoan (Username, Password, Type) VALUES ('{0}','{1}', 2)".format(username, password)
        result ,er= execute_query('QLKhachSan', 'a' ,sql)
        return result ,er