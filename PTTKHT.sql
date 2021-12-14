create database btl_pttkht;
use btl_pttkht;

create table nhanvien
(
	manv varchar(10) primary key,
	tennv nvarchar(50) not null,
	ngaysinh datetime not null,
	gioitinh nvarchar(5) not null,
	diachi nvarchar(150) not null,
	sdt varchar(11) not null,
	chucvu nvarchar(30) not null,
	matkhau varchar(100) not null,
);
select * from phieuxuat
insert into nhanvien(manv, tennv, ngaysinh, gioitinh, sdt, chucvu, matkhau, diachi) values
('210001', N'Phan Khánh Duy','1984-01-01', N'Nam', '0383254130', N'Giám Đốc', '123456', N'11 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210002', N'Nguyễn Hữu An','1986-02-01', N'Nam', '0383254131', N'Phó Giám Đốc', '123456', N'21 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210003', N'Phạm Minh Hiếu','1989-03-11', N'Nam', '0383254132', N'Thủ Kho', '123456', N'31 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210004', N'Trần Mặc Khải','1989-04-21', N'Nam', '0383254133', N'Kế Toán Trưởng', '123456', N'41 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210005', N'Trần Tấn Nhựt','1989-05-05', N'Nam', '0383254134', N'Quản Lý', '123456', N'51 Lê Văn Việt, Tăng Nhơn Phú A, Thành phố Hồ Chí Minh'),
('210006', N'Trần Đăng Chương','1989-02-01', N'Nam', '0383254135', N'Bếp Trưởng', '123456', N'61 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210007', N'Lê Quang Khánh','1999-03-01', N'Nam', '0383254136', N'Bếp Phó', '123456', N'71 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210008', N'Lê Anh Tú','1999-04-01', N'Nam', '0383254137', N'Đầu Bếp', '123456', N'81 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210009', N'Nguyễn Anh Tú','1999-01-01', N'Nam', '0383254138', N'Đầu Bếp', '123456', N'91 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210010', N'Trần Văn Tùng','1999-11-01', N'Nam', '0383254139', N'Nhân Viên Bếp', '123456', N'101 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210011', N'Nguyễn Phú Quốc','1999-07-01', N'Nam', '0383254140', N'Nhân Viên Bếp', '123456', N'111 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210012', N'Lê Thị Ngọc','1994-01-06', N'Nữ', '0383254141', N'Nhân Viên Kế Toán', '123456', N'121 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210013', N'Nguyễn Thị Thanh','1995-07-11', N'Nữ', '0383254142', N'Lễ Tân', '123456', N'131 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210014', N'Phạm Tuấn Tú','1998-06-06', N'Nam', '0383254143', N'Nhân Viên Kho', '123456', N'141 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210015', N'Phan Thị Thanh','1997-07-22', N'Nữ', '0383254144', N'Nhân Viên Phục Vụ', '123456', N'151 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh'),
('210016', N'Trần Văn Toàn','1993-11-06', N'Nam', '0383254145', N'Bảo vệ', '123456', N'161 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh');


create table nhommon
(
	manhom varchar(10) primary key,
	tennhom nvarchar(50) not null
);
drop table nhommon
insert into nhommon(manhom, tennhom) values
('G01', N'Gỏi'),('G02', N'Hàu'),(3, N'Vẹm'),(4, N'Sò Điệp'),(5, N'Sò Dương'),(6, N'Sò Huyết'),
('G07', N'Ốc'),(8, N'Ốc Vòi Voi'),(9, N'Nghêu'),(10, N'Nghêu Hai Cồi'),(11, N'Tôm Càng'),(12, N'Tôm Hùm'),
('G13', N'Tôm Hùm Alaska'),(14, N'Tôm Tích'),(15, N'Tôm Sú'),(16, N'Tôm Mũ Ni'),(17, N'Ghẹ'),(18, N'Cua'),
('G19', N'Cua Hoàng Đế'),(20, N'Cua Hai Da'),(21, N'Cá'),(22, N'Mực'),(23, N'Các Loại Cuốn'),(24, N'Lươn'),
('G25', N'Xà Lách'),('G26', N'Các Loại Rau'),('G27', N'Súp'),(28, N'Cháo'),(29, N'Lẩu'),(30, N'Các Món Ăn Kèm'),
('G31', N'Cơm'),('G32', N'Mì');

create table monan
(
	mamon varchar(10) primary key,
	tenmon nvarchar(50) not null,
	giatien decimal not null,
	dvt nvarchar(10) not null,
	manhom varchar(10),
	foreign key (manhom) references nhommon(manhom) on delete cascade
);
drop table monan
insert into monan (mamon, tenmon, giatien, dvt, manhom) values
('P001', N'Gỏi cá mai', 250000, N'Dĩa', 'G01'),('P002', N'Gỏi sò huyết', 285000, N'Dĩa', 'G01'),
('P003', N'Gỏi sứa tôm thịt', 260000, N'Dĩa', 'G01'),('P004', N'Gỏi lươn', 230000, N'Dĩa', 'G01'),
('P005', N'Hàu sống', 38000, N'Con', 'G02'),('P006', N'Hàu chưng tàu xì', 45000, N'Con', 'G02'),
('P007', N'Hàu nướng mọi', 40000, N'Con', 'G02'),('P008', N'Hàu chiên trứng', 45000, N'Con', 'G02'),
('P009', N'Hàu nướng mở hành', 450000, N'Con', 'G02'),('P010', N'Hàu đút lò hạnh nhân', 45000, N'Con', 'G02'),
('P011', N'Vẹm hấp kiểu Pháp', 265000, N'Dĩa', 'G03'),('P012', N'Vẹm nướng mỡ hành', 265000, N'Dĩa', 'G03'),
('P013', N'Vẹm đút lò phô mai', 265000, N'Dĩa', 'G03'),('P014', N'Vẹm xào bơ', 265000, N'Dĩa', 'G03'),
('P015', N'Sò điệp xào tỏi', 55000, N'Con', 'G04'),('P016', N'Sò điệp nướng mỡ hàng', 55000, N'Con', 'G04'),
('P017', N'Sò điệp nướng sa tế', 55000, N'Con', 'G04'),('P018', N'Sò điệp đút lò phô mai', 55000, N'Con', 'G04'),
('P019', N'Sò điệp nướng', 55000, N'Con', 'G04'),('P020', N'Sò điệp xào bơ', 55000, N'Con', 'G04'),
('P021', N'Sò dương xào bơ', 95000, N'Con', 'G05'),('P022', N'Sò dương nướng mỡ hàng', 95000, N'Con', 'G05'),
('P023', N'Sò dương đút lò phô mai', 95000, N'Con', 'G05'),('P024', N'Sò huyết nướng', 240000, N'Dĩa', 'G06'),
('P025', N'Sò huyết rang tiêu', 260000, N'Dĩa', 'G06'),('P026', N'Sò huyết rang me', 260000, N'Dĩa', 'G06'),
('P027', N'Sò huyết Tứ Xuyên', 260000, N'Dĩa', 'G06'),('P028', N'Ốc hương nướng', 570000, N'Dĩa', 'G07'),
('P029', N'Ốc nhảy nướng', 275000, N'Dĩa', 'G07'),('P030', N'Ốc móng tay xào tỏi', 225000, N'Dĩa', 'G07'),
('P031', N'Ốc móng tay xào rau muống', 225000, N'Dĩa', 'G07'),('P032', N'Ốc móng tay xào sa tế', 225000, N'Dĩa', 'G07'),
('P033', N'Ốc móng tay rang me', 225000, N'Dĩa', 'G07'),('P034', N'Ốc vòi voi ăn sống', 399000, N'100g', 'G08'),
('P035', N'Ốc vòi voi nấu cháo', 399000, N'100g', 'G08'),('P036', N'Tu hài hấp sả', 225000, N'Con', 'G08'),
('P037', N'Nghêu nướng bơ', 240000, N'Dĩa', 'G09'),('P038', N'Nghêu đút lò phô mai', 240000, N'Dĩa', 'G09'),
('P039', N'Nghêu hai cồi hấp sả', 59000, N'100g', 'G10'),('P040', N'Nghêu hai cồi xào tỏi', 59000, N'100g', 'G10'),
('P041', N'Nghêu hai cồi nướng mỡ hành', 59000, N'100g', 'G10'),('P042', N'Nghêu hai cồi đút lò phô mai', 59000, N'100g', 'G10'),
('P043', N'Tôm càng hấp', 179000, N'100g', 'G11'),('P044', N'Tôm càng dầu giấm', 179000, N'100g', 'G11'),
('P045', N'Tôm càng nướng', 179000, N'100g', 'G11'),('P046', N'Tôm càng rang me', 179000, N'100g', 'G11'),
('P047', N'Tôm càng đút lò phô mai', 179000, N'100g', 'G11'),('P048', N'Tôm càng rang tỏi', 179000, N'100g', 'G11'),
('P049', N'Tôm hùm 3 món đặc biệt', 445000, N'100g', 'G12'),('P050', N'Tôm hùm sống', 415000, N'100g', 'G12'),
('P051', N'Tôm hùm đút lò phô mai', 415000, N'100g', 'G12'),('P052', N'Tôm hùm rang tỏi', 415000, N'100g', 'G12'),
('P053', N'Tôm hùm Alaska hấp', 280000, N'100g', 'G13'),('P054', N'Tôm hùm Alaska đút lò phô mai', 280000, N'100g', 'G13'),
('P055', N'Tôm hùm Alaska nướng', 280000, N'100g', 'G13'),('P056', N'Tôm hùm Alaska rang tỏi', 280000, N'100g', 'G13'),
('P057', N'Tôm tích cháy tỏi', 315000, N'100g', 'G14'),('P058', N'Tôm tích nướng', 315000, N'100g', 'G14'),
('P059', N'Tôm tích rang muối', 315000, N'100g', 'G14'),('P060', N'Tôm tích hấp', 315000, N'100g', 'G14'),
('P061', N'Tôm sú sống', 95000, N'100g', 'G15'),('P062', N'Tôm sú đốt rượu', 95000, N'100g', 'G15'),
('P063', N'Tôm sú rang muối', 95000, N'100g', 'G15'),('P064', N'Tôm sú hấp bia', 95000, N'100g', 'G15'),
('P065', N'Tôm mũ ni hấp', 220000, N'100g', 'G16'),('P066', N'Tôm mũ ni đút lò phô mai', 220000, N'100g', 'G16'),
('P067', N'Tôm mũ ni nướng', 220000, N'100g', 'G16'),('P068', N'Tôm mũ ni rang tỏi', 220000, N'100g', 'G16'),
('P069', N'Ghẹ nướng', 165000, N'100g', 'G17'),('P070', N'Ghẹ hấp', 165000, N'100g', 'G17'),
('P071', N'Ghẹ rang muối', 165000, N'100g', 'G17'),('P072', N'Ghẹ rang me', 165000, N'100g', 'G17'),
('P073', N'Cua nướng', 95000, N'100g', 'G18'),('P074', N'Cua sốt ớt Singapore', 95000, N'100g', 'G18'),
('P075', N'Cua rang muối', 95000, N'100g', 'G18'),('P076', N'Cua hấp bia', 95000, N'100g', 'G18'),
('P077', N'Cua hoàng đế 3 món', 480000, N'100g', 'G19'),('P078', N'Cua hoàng đế hấp', 480000, N'100g', 'G19'),
('P079', N'Cua hoàng đế nướng', 480000, N'100g', 'G19'),('P080', N'Cua hoàng đế rang muối', 480000, N'100g', 'G19'),
('P081', N'Cua hai da hấp', 180000, N'100g', 'G20'),('P082', N'Cua hai da nướng', 180000, N'100g', 'G20'),
('P083', N'Cá trứng nướng', 20000, N'Con', 'G21'),('P084', N'Cá trứng chiên giòn', 20000, N'Con', 'G21'),
('P085', N'Cá bớp nướng', 335000, N'Dĩa', 'G21'),('P086', N'Cá mú sống nướng', 85000, N'100g', 'G21'),
('P087', N'Cá mú hấp Đài Loan', 85000, N'100g', 'G21'),('P088', N'Cá chình xào lăn', 130000, N'100g', 'G21'),
('P089', N'Cá chình nấu măng chua', 130000, N'100g', 'G21'),('P090', N'Cá mặt quỷ nướng muối ớt', 225000, N'100g', 'G21'),
('P091', N'Cá mặt quỷ hấp Đài Loan', 225000, N'100g', 'G21'),('P092', N'Cá mặt quỷ chưng tương', 225000, N'100g', 'G21'),
('P093', N'Mực ống chiên nước mắm', 235000, N'Dĩa', 'G22'),('P094', N'Mực ống hấp', 235000, N'Dĩa', 'G22'),
('P095', N'Mực ống nướng', 235000, N'Dĩa', 'G22'),('P096', N'Mực trứng nướng', 235000, N'Dĩa', 'G22'),
('P097', N'Mực trứng hấp', 235000, N'Dĩa', 'G22'),('P098', N'Râu mực chiên giòn', 235000, N'Dĩa', 'G22'),
('P099', N'Râu mực chiên muối ớt', 225000, N'Dĩa', 'G22'),('P100', N'Chả giò tôm thịt', 235000, N'Dĩa', 'G23'),
('P101', N'Chả giò hải sản', 49000, N'Cuốn', 'G23'),('P102', N'Gỏi cuốn tôm thịt', 45000, N'Cuốn', 'G23'),
('P103', N'Lươn nướng muối ớt', 230000, N'Dĩa', 'G24'),('P104', N'Lươn um nước dừa', 230000, N'Dĩa', 'G24'),
('P105', N'Lươn xào lăn', 230000, N'Dĩa', 'G24'),('P106', N'Lươn chiên giòn', 175000, N'Dĩa', 'G24'),
('P107', N'Xà lách dầu giấm', 105000, N'Dĩa', 'G25'),('P108', N'Xà lách cá ngừ', 235000, N'Dĩa', 'G25'),
('P109', N'Xà lách cá hồi xông khói', 210000, N'Dĩa', 'G25'),('P110', N'Xà lách cá hồi Teriyaki', 270000, N'Dĩa', 'G25'),
('P111', N'Rau muống xào tỏi', 105000, N'Dĩa', 'G26'),('P112', N'Bông bí xào tỏi', 105000, N'Dĩa', 'G26'),
('P113', N'Rau luộc thập cẩm kho quẹt', 165000, N'Dĩa', 'G26'),('P114', N'Chả giò tôm thịt', 105000, N'Dĩa', 'G26'),
('P115', N'Khổ qua xào trứng', 105000, N'Dĩa', 'G26'),('P116', N'Rau lang hấp', 105000, N'Dĩa', 'G26'),
('P117', N'Súp cua bắp măng', 65000, N'Chén', 'G27'),('P118', N'Súp cua vi cá', 32000, N'Chén', 'G27'),
('P119', N'Súp rong biển hải sản', 65000, N'Chén', 'G27'),('P120', N'Súp bong bóng cá cua', 65000, N'Chén', 'G27'),
('P121', N'Cháo cá', 75000, N'Chén', 'G28'),('P122', N'Cháo tôm', 75000, N'Chén', 'G28'),
('P123', N'Cháo cua', 75000, N'Chén', 'G28'),('P124', N'Cháo lươn', 75000, N'Chén', 'G28'),
('P125', N'Cháo hải sản', 75000, N'Chén', 'G28'),('P126', N'Cháo bào ngư', 160000, N'Chén', 'G28'),
('P127', N'Lẩu canh chua truyền thống', 450000, N'Lẩu', 'G29'),('P128', N'Lẩu măng chua đầu cá hồi', 405000, N'Lẩu', 'G29'),
('P129', N'Lẩu hải sản', 540000, N'Lẩu', 'G29'),('P130', N'Lẩu Thái Lan hải sản', 540000, N'Lẩu', 'G29'),
('P131', N'Lẩu nấm hải sản', 495000, N'Lẩu', 'G29'),('P132', N'Lẩu gà lá giang', 450000, N'Lẩu', 'G29'),
('P133', N'Cơm trắng', 49000, N'Thố', 'G30'),('P134', N'Bánh mì', 49000, N'Dĩa', 'G30'),
('P135', N'Bánh mì bơ tỏi', 69000, N'Dĩa', 'G30'),('P136', N'Bánh mì đút lò phô mai', 69000, N'Dĩa', 'G30'),
('P137', N'Rau lẩu', 49000, N'Dĩa', 'G30'),('P138', N'Bún', 49000, N'Dĩa', 'G30'),
('P139', N'Cơm chiên tỏi', 145000, N'Thố', 'G31'),('P140', N'Cơm chiên cá mặn', 225000, N'Thố', 'G31'),
('P141', N'Cơm chiên cua', 225000, N'Thố', 'G31'),('P142', N'Cơm chiên tôm', 225000, N'Thố', 'G31'),
('P143', N'Cơm Dương Châu', 225000, N'Thố', 'G31'),('P144', N'Cơm tay cầm hải sản', 255000, N'Thố', 'G31'),
('P145', N'Cơm tay cầm bò', 255000, N'Thố', 'G31'),('P146', N'Cơm cháy hải sản', 275000, N'Thố', 'G31'),
('P147', N'Mì xào thập cẩm', 250000, N'Dĩa', 'G32'),('P148', N'Bún gạo xào thập cẩm', 250000, N'Dĩa', 'G32'),
('P149', N'Miến xào thịt cua', 320000, N'Thố', 'G32'),('P150', N'Miến xào cua con', 95000, N'100g', 'G32');

create table ban
(
	soban int primary key,
	trangthai bit not null
);

insert into ban(soban, trangthai) values
(1,1),(2,1),(3,1),(4,1),(5,0),(6,1),(7,1),(8,1),(9,1),
(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),
(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1);

create table hoadon
(
	sohd varchar(10) primary key,
	giovao datetime,
	giora datetime,
	manv varchar(10),
	soban int,
	foreign key (manv) references nhanvien(manv) on delete cascade,
	foreign key (soban) references ban(soban) on delete cascade
);

create table chitiethoadon
(
	sohd varchar(10),
	mamon varchar(10),
	soluong int,
	foreign key (sohd) references hoadon(sohd) on delete cascade,
	foreign key (mamon) references monan(mamon) on delete cascade,
);

create table nhacungcap
(
	mancc varchar(10) primary key,
	tenncc nvarchar(100) not null,
	diachi nvarchar(100) not null,
	sdt varchar(11) not null
);

create table nguyenlieu
(
	manl varchar(10) primary key,
	tennl nvarchar(50) not null,
	giatien decimal not null,
	dvt nvarchar(10) not null,
	mancc varchar(10),
	foreign key (mancc) references nhacungcap(mancc) on delete cascade
);

create table phieunhap
(
	sopn varchar(10) primary key,
	ngaynhap datetime not null,
	manv varchar(10),
	foreign key (manv) references nhanvien(manv) on delete cascade
);


create table chitietphieunhap
(
	sopn varchar(10),
	manl varchar(10),
	soluong int,
	foreign key (sopn) references phieunhap(sopn) on delete cascade,
	foreign key (manl) references nguyenlieu(manl) on delete cascade
);

create table phieuxuat
(
	sopx varchar(10) primary key,
	ngayxuat datetime not null,
	manv varchar(10),
	foreign key (manv) references nhanvien(manv) on delete cascade
);
create table chitietphieuxuat
(
	sopx varchar(10),
	manl varchar(10),
	soluong int,
	foreign key (sopx) references phieuxuat(sopx) on delete cascade,
	foreign key (manl) references nguyenlieu(manl) on delete cascade
);
----------------------------------------Stored Procedure------------------------------------------------------------------------------------------------------------------------

--Danh sách món ăn của bàn
create proc sp_DanhSachMonAnCuaBan
(@soban int)
as
	begin
		--Lấy ra danh sách món ăn
		select hd.sohd, m.mamon, m.tenmon, cthd.soluong , m.dvt, m.giatien, (cthd.soluong * m.giatien) as 'thanhtien'
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giora = hd.giovao and hd.soban = @soban
	end
--Thanh Toán
create proc sp_ThanhToan
(@sohd varchar(10), @giora datetime )
as
	begin
		--Khai báo biến
		declare @soban int;
		--Gán giá trị
		select @soban = soban from hoadon where sohd = @sohd;
		--Cập nhật thời gian thanh toán của hoá đơn
		update hoadon set giora = @giora where sohd = @sohd;
		--Cập nhật trạng thái của bàn
		update ban set trangthai = 1 where soban = @soban;
	end

create proc sp_datBan 
(@sohd varchar(10), @soban int, @giodat datetime, @manv varchar(10))
as
	begin
		declare @now datetime;
		set @now = getdate();
		update ban set trangthai = 0 where soban = @soban;
		insert into hoadon(sohd, giovao,giora, soban, manv) 
		values (@sohd, @giodat,@giodat,@soban, @manv); 
	end

--Doanh thu từ ngày đến ngày 
create proc sp_DoanhThuTuNgayDenNgay 
(@tungay datetime, @denngay datetime )
as
	begin
		--Khai báo biến
		declare @doanhthu decimal
		--Tính doanh thu
		select @doanhthu = sum(m.giatien * cthd.soluong) 
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and giora between @tungay and @denngay
		--Trả về
		select @doanhthu
	end

--Tính tổng tiền của 1 hoá đơn
create proc sp_TinhTienCuaHoaDon
(@sohd varchar(10))
as
	begin
		declare @tongtien decimal
		
		select @tongtien = sum(m.giatien * cthd.soluong) 
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and 
			m.mamon = cthd.mamon and hd.sohd = @sohd
		
		select @tongtien
	end

--Lấy ra số lượng bán được của từng món ăn từ ngày đến ngày
create proc sp_ThongKeSoLuongMonAnBanDuocTuNgayDenNgay
(@tungay datetime, @denngay datetime)
as
	begin
		select n.manhom, n.tennhom, m.mamon, m.tenmon, m.dvt, m.giatien , x.soluong
		from monan m, nhommon n, (select c.mamon, sum(c.soluong) as 'soluong'
									from hoadon h, chitiethoadon c
									where
										h.sohd = c.sohd and
										h.giora between @tungay and @denngay and
										h.giovao != h.giora
									group by c.mamon ) as x
		where x.mamon = m.mamon and m.manhom = n.manhom
		order by x.soluong desc
	end

--Lấy tồn kho của nguyên liệu
create proc sp_TonKhoCuaNguyenLieu
(@nguyenlieu int)
as 
	begin
		declare @soluongtrongphieunhap int;
		declare @soluongtrongphieuxuat int;
		declare @tonkho int;
		--Lấy số lượng đã nhập
		select @soluongtrongphieunhap = sum(soluong)
		from chitietphieunhap ct
		where manl = @nguyenlieu
		group by manl
		--Lấy số lượng đã xuất
		select @soluongtrongphieuxuat = sum(soluong)
		from chitietphieuxuat
		where manl = @nguyenlieu
		group by manl
		--Nếu chưa xuất thì là null -> số lượng = 0
		if(@soluongtrongphieuxuat is null)
			begin
				set @soluongtrongphieuxuat = 0
			end
		--Tồn kho là số lượng đã nhập - số lượng đã xuất
		set @tonkho = @soluongtrongphieunhap - @soluongtrongphieuxuat;
		if(@tonkho is null) 
			begin
				set @tonkho = 0
			end
		select @tonkho
	end

--Doanh thu các ngày trong tuần
create proc sp_DoanhThuCacNgayTrongTuan
(@ngay datetime)
as
begin
	declare @CacNgayTrongTuan table (thu int, doanhthu decimal);
	declare @doanhthu decimal;
	declare @loop_before int;
	declare @loop_after int;
		
	--Lấy ra doanh thu của @ngay
	select @doanhthu = sum(m.giatien * cthd.soluong)
	from hoadon hd, monan m, chitiethoadon cthd
	where 
		hd.sohd = cthd.sohd and 
		m.mamon = cthd.mamon and 
		hd.giovao != hd.giora and 
		DAY(hd.giora) = DAY(@ngay) and 
		MONTH(hd.giora) = MONTH(@ngay) and 
		YEAR(hd.giora) = YEAR(@ngay)

	if(DATEPART(dw,@ngay) = 1)
		begin
			set @loop_before = 6;
			set @loop_after = 0;
		end
	else
		begin
			set @loop_before = DATEPART(dw,@ngay) - 2;
			set @loop_after = 7 - DATEPART(dw,@ngay) + 1;
		end
		

	declare @ngayxet datetime;
	set @ngayxet = @ngay
	declare @doanhthuxet decimal;
	while @loop_before != 0
		begin
			set @ngayxet = DATEADD(day, -1, CAST(@ngayxet AS date));

				
			select @doanhthuxet = sum(m.giatien * cthd.soluong)
			from hoadon hd, monan m, chitiethoadon cthd
			where 
				hd.sohd = cthd.sohd and 
				m.mamon = cthd.mamon and 
				hd.giovao != hd.giora and 
				DAY(hd.giora) = DAY(@ngayxet) and 
				MONTH(hd.giora) = MONTH(@ngayxet) and 
				YEAR(hd.giora) = YEAR(@ngayxet)

			if(@doanhthuxet is null)
			begin
				set @doanhthuxet = 0
			end

			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngayxet), @doanhthuxet);

			set @loop_before = @loop_before -1;

		end
		
		
	if(@doanhthu is null)
		begin
			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngay), 0);
		end
	else
		begin
			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngay), @doanhthu);
		end

	set @ngayxet = @ngay
	while @loop_after != 0
		begin
			set @ngayxet = DATEADD(day, 1, CAST(@ngayxet AS date));

				
			select @doanhthuxet = sum(m.giatien * cthd.soluong)
			from hoadon hd, monan m, chitiethoadon cthd
			where 
				hd.sohd = cthd.sohd and 
				m.mamon = cthd.mamon and 
				hd.giovao != hd.giora and 
				DAY(hd.giora) = DAY(@ngayxet) and 
				MONTH(hd.giora) = MONTH(@ngayxet) and 
				YEAR(hd.giora) = YEAR(@ngayxet)

			if(@doanhthuxet is null)
			begin
				set @doanhthuxet = 0
			end

			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngayxet), @doanhthuxet);

			set @loop_after = @loop_after - 1;
		end

	select * from @CacNgayTrongTuan order by thu;
end

--Doanh thu các ngày trong tháng
create proc sp_DoanhThuCacNgayTrongThang
(@thang int, @nam int)
as
	begin
		select day(hd.giora) as 'ngay', sum(m.giatien * cthd.soluong) as 'doanhthu'
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giovao != hd.giora and MONTH(hd.giora) = @thang and YEAR(hd.giora) = @nam
		group by day(hd.giora)
	end

--Doanh thu các tháng trong năm
create proc sp_DoanhThuCacThangTrongNam
(@nam int)
as
	begin
		declare @CacThangTrongNam table (thang int, doanhthu decimal);
		declare @thang int;
		declare @doanhthu decimal;

		set @thang = 1;

		while @thang <= 12
			begin
				select @doanhthu = sum(m.giatien * cthd.soluong)
				from hoadon hd, monan m, chitiethoadon cthd
				where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giovao != hd.giora and month(hd.giora) = @thang and YEAR(hd.giora) = @nam
				group by month(hd.giora)

				if(@doanhthu is null)
					begin
						insert into @CacThangTrongNam(thang, doanhthu) values (@thang, 0);
					end
				else
					begin
						insert into @CacThangTrongNam(thang, doanhthu) values (@thang, @doanhthu);
					end

				set @thang = @thang + 1;
			end

		select * from @CacThangTrongNam
	end

--Doanh thu các quý trong năm
create proc sp_DoanhThuCacQuyTrongNam
(@nam int)
as
	begin
		declare @CacQuyTrongNam table (quy int, doanhthu decimal);
		declare @quy int;
		declare @doanhthu decimal;

		set @quy = 1;

		while @quy <= 4
			begin
				select @doanhthu = sum(m.giatien * cthd.soluong)
				from hoadon hd, monan m, chitiethoadon cthd
				where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giovao != hd.giora and datepart(quarter,hd.giora) = @quy and YEAR(hd.giora) = @nam
				group by datepart(quarter,hd.giora)

				if(@doanhthu is null)
					begin
						insert into @CacQuyTrongNam(quy, doanhthu) values (@quy, 0);
					end
				else
					begin
						insert into @CacQuyTrongNam(quy, doanhthu) values (@quy, @doanhthu);
					end

				set @quy = @quy + 1;
			end

		select * from @CacQuyTrongNam
	end
--Doanh thu các năm gần đây
create proc sp_DoanhThuCacNamGanDay
(@count int)
as
	begin
		declare @CacNamGanDay table (nam int, doanhthu decimal);
		declare @nam int;
		declare @doanhthu decimal;
			

		while @count > 0
			begin
				set @nam = YEAR(DATEADD(year, 1 - @count, CAST(GETDATE() AS date)));

				select @doanhthu = sum(m.giatien * cthd.soluong)
				from hoadon hd, monan m, chitiethoadon cthd
				where hd.sohd = cthd.sohd and hd.giovao != hd.giora and m.mamon = cthd.mamon and year(hd.giora) = @nam;

				if(@doanhthu is null)
					begin
						insert into @CacNamGanDay(nam, doanhthu) values (@nam, 0);
					end
				else
					begin
						insert into @CacNamGanDay(nam, doanhthu) values (@nam, @doanhthu);
					end

				set @count = @count - 1;
			end

		select * from @CacNamGanDay
	end
-------------------------------------TRIGGER---------------------------------------------------------------------------------------------------------
create trigger tr_capNhatSoLuongNguyenLieuCuaChiTietPhieuNhapKhiThemTrung
on chitietphieunhap
for insert
as
begin
	declare @manl_i varchar(10);
	declare @sopn_i varchar(10);

	select @manl_i = manl, @sopn_i = sopn
	from inserted

	

	if((select count(sopn) from chitietphieunhap where sopn = @sopn_i and manl = @manl_i) > 1)
		begin
			declare @tongsoluong_ct int;

			select @tongsoluong_ct = sum(soluong)
			from chitietphieunhap
			where manl = @manl_i and sopn = @sopn_i
			group by manl, sopn

			delete from chitietphieunhap where manl = @manl_i and sopn = @sopn_i

			insert into chitietphieunhap(sopn, manl, soluong)
			values (@sopn_i, @manl_i, @tongsoluong_ct)
		end
end

create trigger tr_capNhatSoLuongNguyenLieuCuaChiTietPhieuXuatKhiThemTrung
on chitietphieuxuat
for insert
as
begin
	declare @manl_i varchar(10);
	declare @sopx_i varchar(10);

	select @manl_i = manl, @sopx_i = sopx
	from inserted

	if((select count(sopx) from chitietphieuxuat where sopx = @sopx_i and manl = @manl_i) > 1)
		begin
			declare @tongsoluong_ct int;

			select @tongsoluong_ct = sum(soluong)
			from chitietphieuxuat
			where manl = @manl_i and sopx = @sopx_i
			group by manl, sopx

			delete from chitietphieuxuat where manl = @manl_i and sopx = @sopx_i

			insert into chitietphieuxuat(sopx, manl, soluong)
			values (@sopx_i, @manl_i, @tongsoluong_ct)
		end
end
