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