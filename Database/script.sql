USE [HotelJob]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 11/05/2013 20:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[timeID] [int] IDENTITY(1,1) NOT NULL,
	[timeInfo] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[timeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Time] ON
INSERT [dbo].[Time] ([timeID], [timeInfo]) VALUES (1, N'Chua co gi')
SET IDENTITY_INSERT [dbo].[Time] OFF
/****** Object:  Table [dbo].[Positions]    Script Date: 11/05/2013 20:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[positionID] [int] IDENTITY(1,1) NOT NULL,
	[positionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[positionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Positions] ON
INSERT [dbo].[Positions] ([positionID], [positionName]) VALUES (1, N'Chua co gi')
SET IDENTITY_INSERT [dbo].[Positions] OFF
/****** Object:  Table [dbo].[Jobs]    Script Date: 11/05/2013 20:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[jobID] [int] NOT NULL,
	[jobName] [nvarchar](500) NULL,
	[salary] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[required] [nvarchar](1000) NULL,
	[deadline] [nvarchar](50) NULL,
	[domainID] [nvarchar](5) NULL,
	[domainName] [nvarchar](500) NULL,
	[number] [nvarchar](500) NULL,
	[companyID] [int] NULL,
	[cityID] [nvarchar](5) NULL,
	[cityName] [nvarchar](500) NULL,
	[positionName] [nvarchar](500) NULL,
	[positionID] [nvarchar](5) NULL,
	[timeID] [nvarchar](5) NULL,
	[timeInfo] [nvarchar](500) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[jobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (16265, N'Nhân Viên Bàn', N'Thỏa thuận', N'Mô tả: Nhân viên bàn chuyên ghi order, giới thiệu món ăn cho khách hàng, bưng bê các món ăn, quét dọn , lau chùi phòng ăn sạch sẽ, ngăn nắp. Thật thà chịu khó trong công việc. Quyền lợi: Nhân viên được hưởng các chế độ theo luât lao động. Một tháng được nghỉ 2 ngày Yêu cầu: - Số năm kinh nghiệm: Chưa có kinh nghiệm - Yêu cầu độ tuổi: 25 - 29 tuổi - Ưu tiên nhân viên có kinh nghiệm làm việc trong các nhà hàng. Chịu áp lực cao, ý thức trong công việc. Nhân viên trực tiếp đến xin việc, không hỏi qua điện thoại. Hồ sơ bao gồm: - Một bộ hồ sơ đầy đủ, phỏng vấn tại 1073 La Thành, Ba Đình, Hà Nội.', N'', N'31/10/2012', NULL, N'Nhà hàng/ Bar/ Pub', N'3', 4035, NULL, N'Hà Nội', N'Ẩm thực/ Bàn/ Bar', NULL, NULL, N'Khác')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (16266, N'Nhân viên Quản trị website', N'Thỏa thuận', N'Mô tả: Nhân viên quản trị website chuyên đăng tin lên website theo nội dung yêu cầu. Sử dụng thành thạo photoshop, flash,các phần mềm đồ họa...Chịu áp lực cao trong công việc, thật thà chịu khó. Quyền lợi: - Nhân viên quản trị website làm việc theo sự chỉ đạo của quản lý. Một tháng được nghỉ tối đa 2 ngày. Yêu cầu: - Số năm kinh nghiệm: Chưa có kinh nghiệm - Yêu cầu độ tuổi: 25 - 29 tuổi - Ưu tiên nhân viên đã từng làm quản trị Wordpress, Joomla, PHP. Có kinh nghiệm về seo Website. Hồ sơ bao gồm: - Một bộ hồ sơ đầy đủ, các văn bằng liên quan.', N'', N'31/10/2012', NULL, N'Nhà hàng/ Bar/ Pub', N'3', 4035, NULL, N'Hà Nội', N'IT', NULL, NULL, N'Khác')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (24794, N'Nhân viên Bếp chính', N'Thỏa thuận', N'Mô tả công việc:    - Chế biến món ăn Á - Làm việc theo ca 8 tiếng Quyền lợi được hưởng:    - Ngoài các chế độ BHXH, BHYT, BH Thất Nghiệp theo luật định, còn có các chế độ như: - Được 1 bữa cơm, có bố trí bãi giữ xe cho CBNV, - Được cty mua BH tai nạn 24/24. - Thưởng định kỳ 6 tháng và 1 năm theo hiệu quả kinh doanh. - Thưởng các ngày lễ - Tham quan du lịch hàng năm - Khám sức khỏe định kỳ Yêu cầu: - Số năm kinh nghiệm: 3 năm - Yêu cầu bằng cấp: Không yêu cầu - Yêu cầu giới tính: Nam - Yêu cầu độ tuổi: Không yêu cầu Yêu cầu khác:    - Có sức khỏe tốt - Có kinh nghiệm chế biến món ăn Á nhiều năm. Hồ sơ bao gồm:    - Hồ sơ photo (không cần công chứng), sau khi có quyết định tuyển dụng chính thức, ứng viên sẽ bổ sung hồ sơ sau.', N'', N'31/10/2013', NULL, N'Nhà hàng/ Bar/ Pub', N'2', 4041, NULL, N'HCMC', N'Bếp/ Phụ bếp/ Rửa bát', NULL, NULL, N'Hành chính')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (29447, N'Nhân viên phục vụ nhà hàng', N'Thỏa thuận', N' Mô tả công việc: - Phục vụ bàn nhà hàng - Làm việc theo ca 8 tiếng (ca xoay hoặc ca cố định)   Quyền lợi được hưởng: - Được công ty cho 1 bữa cơm, có chổ giữ xe cho CBNV - Thưởng định kỳ và đột xuất   Yêu cầu: - Số năm kinh nghiệm: Chưa có kinh nghiệm - Yêu cầu bằng cấp: Trung học - Yêu cầu giới tính: Không yêu cầu - Yêu cầu độ tuổi: 18 - 24 tuổi   Yêu cầu khác: - Có sức khỏe tốt - Có Ngoại hình   Hồ sơ bao gồm: - Sơ yếu lý lịch (sao y) - Đơn xin việc  - Giấy khám sức khỏe - CMND và Hộ khẩu (sao y)', N'', N'31/10/2013', NULL, N'Nhà hàng/ Bar/ Pub', N'3', 4041, NULL, N'HCMC', N'Ẩm thực/ Bàn/ Bar', NULL, NULL, N'Ca gãy')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (29604, N'Nhân Viên bar', N'Thỏa thuận', N'Mô tả công việc:    - Dọn vệ sinh đầu ca - Setup CCDC chuẩn bị PV khách - Chuẩn bị đầy đủ nguyên vật liệu để phục vụ khách - Công việc cụ thể sẽ được trao đổi kỹ khi phỏng vấn Quyền lợi được hưởng:    - Được hưởng đầy đủ quyền lợi của công ty và nhà nước Yêu cầu: - Số năm kinh nghiệm: Dưới 1 năm - Yêu cầu bằng cấp: Trung học - Yêu cầu giới tính: Không yêu cầu - Yêu cầu độ tuổi: Không yêu cầu Yêu cầu khác:    - Nhanh nhẹn, hoạt bát - Trung thực thật thà - Ngoại hình tốt. Có kỹ năng giao tiếp tốt. - Có kinh nghieemk trong việc làm bar - Biết pha chế một số đồ uống Hồ sơ bao gồm:    - Sơ yếu lý lịch - Bằng cấp - Giấy khai sinh - Giấy khám sức khỏe - Sổ hộ khẩu - CMTND', N'', N'31/10/2013', NULL, N'Nhà hàng/ Bar/ Pub', N'2', 4015, NULL, N'Hà Nội', N'Ẩm thực/ Bàn/ Bar', NULL, NULL, N'Hành chính')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (29605, N'Nhân viên Phục vụ', N'Thỏa thuận', N'Mô tả công việc:    - Dọn vệ sinh đầu ca - Setup CCDC chuẩn bị PV khách - Tư vấn món và ghi món cho khách - Chăm sóc khách ăn suốt bữa ăn - Tính tiền - dọn đồ dơ và setup lại bàn Quyền lợi được hưởng:    - Được hưởng đầy đủ quyền lợi của công ty Yêu cầu: - Số năm kinh nghiệm: Dưới 1 năm - Yêu cầu bằng cấp: Trung học - Yêu cầu giới tính: Không yêu cầu - Yêu cầu độ tuổi: Không yêu cầu Yêu cầu khác:    - Nhanh nhẹn, hoạt bát - Trung thực thật thà - Ngoại hình tốt. Có kỹ năng giao tiếp tốt. - Tieng anh la 1 loi the. Hồ sơ bao gồm:    - Sơ yếu lý lịch - Bằng cấp - Giấy khai sinh - Giấy khám sức khỏe - Sổ hộ khẩu - CMTND (Chấp nhận hồ sơ phô tô để phỏng vấn)', N'', N'15/11/2013', NULL, N'Nhà hàng/ Bar/ Pub', N'3', 4015, NULL, N'Hà Nội', N'Ẩm thực/ Bàn/ Bar', NULL, NULL, N'Làm theo ca')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (31406, N'Nhân viên Phụ bếp', N'Thỏa thuận', N'Mô tả công việc:    - Vệ sinh và sắp xếp CCDC bếp ngăn nắp gọn gàng - Phụ việc cho những nhân viên các BP: Chảo; Salad... - Ngoài ra công việc cụ thể sẽ được trao đổi trong buổi phỏng vấn Quyền lợi được hưởng:    - Được hưởng đầy đủ quyền lợi của công ty Yêu cầu: - Số năm kinh nghiệm: Chưa có kinh nghiệm - Yêu cầu bằng cấp: Trung học - Yêu cầu giới tính: Khác - Yêu cầu độ tuổi: 18 - 24 tuổi Yêu cầu khác:    - Nhanh nhẹn, hoạt bát, sạch sẽ, gọn gàng - Trung thực thật thà - Ngoại hình tốt. Có kỹ năng giao tiếp tốt. Hồ sơ bao gồm:    - Sơ yếu lý lịch - Bằng cấp - Giấy khai sinh - Giấy khám sức khỏe - Sổ hộ khẩu - CMTND', N'', N'15/11/2013', NULL, N'Nhà hàng/ Bar/ Pub', N'3', 4015, NULL, N'Hà Nội', N'Bếp/ Phụ bếp/ Rửa bát', NULL, NULL, N'Hành chính')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (31997, N'Tour Operator German Speaking', N'Thỏa thuận', N'Mô tả công việc: - Dealing with suppliers and tour guide for fast confirmation. - Price negotiation with suppliers. - Dealing with trouble which may happen on tour implementing - Pre-checking services to make sure all services are reserved before client''s arrival - Co-operate with accounting Dept in payment to suppliers - Please contact to us for more detail. Yêu cầu công việc: - Vietnamese Nationality - Good command of Germany - Good communication skills. - Good computer skills (Exel, Word, Outlook). - At least 01 years experience in the similar position - Hardworking, capable of working independently, overtime and under pressure Benefit: - A competitive salary - Personal accident and health insurance 24/24 - Career development will be offered commensurate with the responsibilities and qualifications  ', N'', N'31/10/2013', NULL, N'Công ty Du lịch, lữ hành, phòng vé', N'2', 4007, NULL, N'Hà Nội', N'Lữ hành/ Du lịch', NULL, NULL, N'Hành chính')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (31998, N'Vehicle Reservation', N'Thỏa thuận', N'Job Description: - Vehicle reservation - Dealing with suppliers for fast confirmation. - Price negotiation with suppliers. - Dealing with trouble which may happen on tour implementing - Pre-checking services to make sure all services are reserved before client''s arrival - Co-operate with accounting Dept in payment to suppliers Job Requirement: - Good command of English - Good communication skills. - Good computer skills (Excel, Word, Outlook). - At least 01 year experience in the similar position or in service booking for foreigner - Hardworking, capable of working independently, overtime and under pressure Benefit: - A competitive salary - Personal accident and health insurance 24/24 - Career development will be offered commensurate with the responsibilities and qualifications If you are interested in any of the above vacancy, please send us your CV via email to : Ms Pham Thu Hien Email: thuhien@easia-travel.com  ', N'', N'31/10/2013', NULL, N'Công ty Du lịch, lữ hành, phòng vé', N'2', 4007, NULL, N'Hà Nội', N'Lễ tân/ Thu ngân/ Đặt phòng/ Tổng đài/ BC', NULL, NULL, N'Hành chính')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (31999, N'Reservation', N'Thỏa thuận', N'Mô tả công việc: - Vehicle, Boat, restaurant, hotel reservation... - Dealing with suppliers for fast confirmation. - Price negotiation with suppliers. - Dealing with trouble which may happen on tour implementing - Pre-checking services to make sure all services are reserved before client''s arrival - Co-operate with accounting Dept in payment to suppliers Yêu cầu công việc: - Good command of French or English - Good communication skills. - Good computer skills (Excel, Word, Outlook). - At least 01 year experience in the similar position - Hardworking, capable of working independently, overtime and under pressure Benefit: - A competitive salary - Personal accident and health insurance 24/24 - Career development will be offered commensurate with the responsibilities and qualifications  ', N'', N'31/10/2013', NULL, N'Công ty Du lịch, lữ hành, phòng vé', N'2', 4007, NULL, N'Hà Nội', N'Lễ tân/ Thu ngân/ Đặt phòng/ Tổng đài/ BC', NULL, NULL, N'Hành chính')
INSERT [dbo].[Jobs] ([jobID], [jobName], [salary], [description], [required], [deadline], [domainID], [domainName], [number], [companyID], [cityID], [cityName], [positionName], [positionID], [timeID], [timeInfo]) VALUES (32199, N'Nhân Viên Quầy Bar', N'Thỏa thuận', N'Mô tả: Nhân viên làm bar chuyên pha chế các loại đồ uống, các loại nước ép trái cây, hoa quả, một số loại rượu thuốc. Kiểm tra sổ sách của bar, các mặt hàng nhập vào, xuất ra. Quyền lợi: Nhân viên được hưởng các chế độ theo luật lao động,một tháng được nghỉ 2 ngày, khi xin nghỉ phải báo trước cho quản lý. Yêu cầu: - Số năm kinh nghiệm: Dưới 1 năm - Yêu cầu độ tuổi: 25 - 29 tuổi Ưu tiên nhân viên có kinh nghiệm làm việc trong các quán bar, nhà hàng, khách sạn... Hồ sơ bao gồm: - Một bộ hồ sơ đầy đủ, các giấy tờ liên quan', N'', N'31/10/2013', NULL, N'Nhà hàng/ Bar/ Pub', N'2', 4035, NULL, N'Hà Nội', N'Ẩm thực/ Bàn/ Bar', NULL, NULL, N'Hành chính')
/****** Object:  Table [dbo].[Domain]    Script Date: 11/05/2013 20:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[domainID] [int] IDENTITY(1,1) NOT NULL,
	[domainName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[domainID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Domain] ON
INSERT [dbo].[Domain] ([domainID], [domainName]) VALUES (1, N'Chua co gi')
SET IDENTITY_INSERT [dbo].[Domain] OFF
/****** Object:  Table [dbo].[Companies]    Script Date: 11/05/2013 20:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[companyID] [nvarchar](5) NOT NULL,
	[companyName] [nvarchar](200) NOT NULL,
	[information] [nvarchar](1000) NULL,
	[address] [nvarchar](200) NULL,
	[contact] [nvarchar](500) NULL,
	[email] [nvarchar](500) NULL,
	[phone] [nvarchar](500) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Companies] ([companyID], [companyName], [information], [address], [contact], [email], [phone]) VALUES (N'4007', N'Easia Travel easia-travel.com', N'Easia Travel is a human-sized company based above all on human values. We aim to show travelers the most fascinating features of Vietnam, Laos, Cambodia and Myanmar giving them the opportunity to discover the remarkably rich cultures and scenic diversity of these countries and to experience the warmth and friendliness of their people. Contact with local people is at the core of our philosophy of travel. We have also undertaken certain concrete social initiatives which involve long-term ...', N'Phòng 326, KS ATS, số 33B phố Phạm Ngũ Lão, Hoàn Kiếm, Hà Nội', N'Ms Thu Hien', N'thuhien@easia-travel.com', N'84-4 39 33 13 62')
INSERT [dbo].[Companies] ([companyID], [companyName], [information], [address], [contact], [email], [phone]) VALUES (N'4015', N'Nhà hàng Bếp Việt www.nhahangbepviet.com', N'Bếp Việt là 1 trong những nhà hàng cao cấp chuyên phục vụ khách du lịch trong nước và Quốc tế. Hiện đang mở rộng thêm và cần 1 số vị trí chủ chốt', N'15 Ngô Thì Nhậm - Hai Bà Trưng - Hà Nội', N'Mr Hoan', N'sales@nhahangbepviet.com', N'0989896559')
INSERT [dbo].[Companies] ([companyID], [companyName], [information], [address], [contact], [email], [phone]) VALUES (N'4035', N'Quán May nhahangamthuc.com', N'Nói đến Quán May – 1073 đường La Thành – Ba Đình – Hà Nội ắt hẳn ai một lần đến khó quên bởi trong lòng Hà Nội lại có một không gian cổ kính và yên tĩnh. Bạn được thưởng thức hương vị cà phê May độc đáo thơm ngon và những bản nhạc cổ điển không lời hoà quyện cùng tiếng nước chảy róc rách thật vui tai. Để đáp lại tình cảm mến yêu của Quý khách, quán May được tôn tạo đẹp hơn, thêm nhiều dịch vụ mới như ăn Tự chọn, cơm văn phòng, lẩu các loại, nhận đặt tiệc cưới, hội nghị, hội thảo và sinh nhật. ...', N'1073 La Thành, Ba Đình', N'Hoàng Cảnh', N'amthuccodo@gmail.com', N'01654189877')
INSERT [dbo].[Companies] ([companyID], [companyName], [information], [address], [contact], [email], [phone]) VALUES (N'4041', N'Công ty CP Du lịch Công Đoàn - Nhà hàng Khách sạn Rạng Đông www.rangdonghotel.com.vn', N'- Trung tâm Du lịch Công Đoàn được thành lập theo quyết định số: 251/QĐ-UB ngày 09/5/1989 của Ủy Ban Nhân dân TPHCM để phục vụ yêu cầu nghỉ ngơi, an dưỡng, tham quan, du lịch của cán bộ công nhân viên, người lao động TPHCM và các địa phương khác. Ngoài ra còn thực hiện chương trình hợp tác trao đổi hoạt động công đoàn của các địa phương và các đơn vị.- Trung tâm Du lịch Công Đoàn chuyển đổi thành doanh nghiệp nhà nước theo quyết định số 40/QĐ-UB ngày 11/9/1993 của Ủy Ban Nhân dân TPHCM.- Công ...', N'81-83 CMT8, P.Bến Thành, Q.1', N'Mr Hiếu - Phòng Tổ Chức Hành Chánh', N'lightstar_of_us@yahoo.com', N'0909.126.600 - 38.398.264')
/****** Object:  Table [dbo].[City]    Script Date: 11/05/2013 20:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[cityID] [nvarchar](5) NOT NULL,
	[cityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[cityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'1', N'An Giang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'10', N'Bến Tre')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'11', N'Cao B?ng')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'12', N'Cà Mau')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'13', N'C?n Tho')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'14', N'Gia Lai')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'15', N'Hà Giang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'16', N'Hà Nam')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'17', N'Hà N?i')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'18', N'Hà Tây')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'19', N'Hà Tinh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'2', N'Bà Rịa - Vung Tàu')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'20', N'Hòa Bình')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'21', N'Hung Yên')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'22', N'H?i Duong')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'23', N'H?i Phòng')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'24', N'H? Chí Minh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'25', N'Khánh Hòa')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'27', N'Kiên Giang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'28', N'Kon Tum')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'29', N'Lai Châu')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'3', N'Bình Duong')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'30', N'Long An')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'31', N'Lào Cai')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'32', N'Lâm Ðồng')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'33', N'Lạng Sơn')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'34', N'Nam Ðịnh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'35', N'Nghệ An')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'36', N'Ninh Bình')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'37', N'Ninh Thuận')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'38', N'Phú Thọ')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'39', N'Phú Yên')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'4', N'Bình Phước')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'40', N'Quảng Bình')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'41', N'Quảng Nam')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'42', N'Quảng Ngãi')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'43', N'Quảng Ninh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'44', N'Quảng Trị')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'45', N'Sơn La')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'46', N'Thanh Hóa')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'47', N'Thái Bình')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'48', N'Thái Nguyên')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'49', N'Thừa Thiên - Huế')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'5', N'Bình Thuận')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'50', N'Tiền Giang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'51', N'Trà Vinh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'52', N'Tuyên Quang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'53', N'Tây Ninh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'54', N'Vinh Long')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'55', N'Vinh Phúc')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'56', N'Yên Bái')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'57', N'Ðà N?ng')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'58', N'Ðăk Lăk')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'59', N'Ðồng Nai')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'6', N'Bình Ðịnh')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'60', N'Ðồng Tháp')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'61', N'Bạc Liêu')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'62', N'Sóc Trang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'63', N'Hậu Giang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'64', N'Ðăk Nông')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'7', N'Bắc Giang')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'8', N'Bắc Kạn')
INSERT [dbo].[City] ([cityID], [cityName]) VALUES (N'9', N'Bắc Ninh')
