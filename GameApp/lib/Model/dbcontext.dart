import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_2/GiaoDienChoiCaNhan.dart';

import 'package:http/http.dart';

// dữ liệu cửa hàng
class DuLieuStore {
  const DuLieuStore(
      {required this.image, required this.caption, required this.price});
  final String image;
  final String caption;
  final int price;
  static List<DuLieuStore> lstDuLieuStore = [
    DuLieuStore(
        image: 'assets/images/avatar/goku.png', caption: "Songoku", price: 8),
    DuLieuStore(
        image: 'assets/images/avatar/gojo.png', caption: "Gojo", price: 8),
    DuLieuStore(
        image: 'assets/images/avatar/naruto.png', caption: "Naruto", price: 10),
  ];
}

class DuLieuStoreXu {
  const DuLieuStoreXu({required this.xu, required this.price});
  final int xu;
  final int price;
  static List<DuLieuStoreXu> lstDuLieuStoreXu = [
    DuLieuStoreXu(xu: 8, price: 10000),
    DuLieuStoreXu(xu: 20, price: 20000),
    DuLieuStoreXu(xu: 70, price: 50000),
    DuLieuStoreXu(xu: 150, price: 100000),
    DuLieuStoreXu(xu: 400, price: 200000),
  ];
}

// dữ liệu đối kháng
class duLieuDoiKhang {
  const duLieuDoiKhang({required this.dapan});
  final String dapan;

  static List<duLieuDoiKhang> lstDuLieuDoiKhang = [
    duLieuDoiKhang(dapan: "A.64"),
    duLieuDoiKhang(dapan: "B.63"),
    duLieuDoiKhang(dapan: "C.65"),
    duLieuDoiKhang(dapan: "D.66"),
  ];
}
// dữ liệu tổng kết cá nhân

class duLieuTongKetCaNhan {
  const duLieuTongKetCaNhan({required this.tieuDe, required this.giaTri});
  final String tieuDe;
  final int giaTri;
  static List<duLieuTongKetCaNhan> lstDuLieuTongKetCaNhan = [
    duLieuTongKetCaNhan(tieuDe: "Số câu hoàn thành:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "Số câu đúng:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "Tổng số điểm:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "Tổng số EXP:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "HighScore:", giaTri: 1),
  ];
}
// dữ liệu chơi cá nhân

class Question {
  // final String id;
  final int level;
  final String text;
  final List<Option> options;
  // final int correct;

  bool isLocked;
  Option? selectedoption;

  Question({
    // required this.id,
    required this.level,
    required this.text,
    required this.options,
    //   required this.correct,

    this.isLocked = false,
    this.selectedoption,
  });
//   factory Question.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot){
//   final data=snapshot.data() as Map<String,dynamic>;
//   final id=snapshot.id;
//   data['id']=id;
//   return Question.fromMap(data);
// }
// factory Question.fromMap(Map<String,dynamic> map){
//   return Question(id: map['id'],
//          text: map['questions'],
//           options: List<String>.from(map['Answer']),
//            correct: map['correctAnswer']);
// }
}

class Option {
  final String text;
  final bool isCorrect;
  const Option({required this.text, required this.isCorrect});
}

final questions = [
  //độ khó 1
  Question(
    level: 1,
    text: 'Việt nam có bao nhiêu tỉnh thành?',
    options: [
      const Option(text: '63', isCorrect: true),
      const Option(text: '64', isCorrect: false),
      const Option(text: '65', isCorrect: false),
      const Option(text: '62', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text:
        'Các nước Đông Nam Á không có chung đường biên giới với nước ta trên biển là?',
    options: [
      const Option(text: 'Phi-lip-pin, Mi-an-ma.', isCorrect: false),
      const Option(text: 'Đông-ti-mo, Mi-an-ma. ', isCorrect: false),
      const Option(text: 'Phi-lip-pin, Bru-nây.', isCorrect: true),
      const Option(text: 'Ma-lai-xi-a, Phi-lip-pin.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text: 'Hệ tọa độ địa lí trên đất liền nước ta là?',
    options: [
      const Option(
          text: '23020’B - 8030’B và 102009’Đ - 109024’Đ.', isCorrect: false),
      const Option(
          text: '23023’B - 8030’B và 102009’Đ - 109024’Đ.', isCorrect: false),
      const Option(
          text: '23023’B - 8034’B và 102009’Đ - 109024’Đ. ', isCorrect: true),
      const Option(
          text: '23023’B - 8034’B và 102009’Đ - 109020’Đ.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text: 'Việt Nam gắn liền với lục địa và đại dương nào sau đây?',
    options: [
      const Option(text: 'Á-Âu và Bắc Băng Dương.', isCorrect: false),
      const Option(text: 'Á- Âu và Đại Tây Dương.', isCorrect: false),
      const Option(text: 'Á-Âu và Ấn Độ Dương. ', isCorrect: false),
      const Option(text: 'Á-Âu và Thái Bình Dương.', isCorrect: true)
    ],
  ),
  Question(
    level: 1,
    text:
        'Theo Công ước của Liên hợp quốc về Luật Biển năm 1982, nhà nước ta có chủ quyền gì ở vùng đặc quyền kinh tế?',
    options: [
      const Option(text: 'Hoàn toàn về kinh tế.   ', isCorrect: true),
      const Option(text: 'Một phần về kinh tế.', isCorrect: false),
      const Option(text: 'Không có chủ quyền gì.     ', isCorrect: false),
      const Option(text: 'Hoàn toàn về chính trị.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text:
        'Lực lượng chính của cách mạng Việt Nam được xác định trong Luận cương chính trị (10-1930) là?',
    options: [
      const Option(text: 'công nhân và nông dân.', isCorrect: true),
      const Option(text: 'toàn thể nhân dân.', isCorrect: false),
      const Option(text: 'nông dân và tư sản dân tộc.', isCorrect: false),
      const Option(text: 'nông dân và tiểu tư sản.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text: 'Kẻ thù chủ yếu của xã hội Việt Nam trong thời kì 1930-1931 là?',
    options: [
      const Option(text: 'đế quốc và phong kiến.', isCorrect: true),
      const Option(text: 'thực dân Pháp.', isCorrect: false),
      const Option(text: 'địa chủ phong kiến.', isCorrect: false),
      const Option(text: 'địa chủ phong kiến, tư sản.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text: 'Phong trào cách mạng 1930 - 1931 phát triển mạnh nhất là ở đâu?',
    options: [
      const Option(text: 'Nghệ An và Hà Tĩnh.', isCorrect: true),
      const Option(text: 'Thanh Hóa và Nghệ An.', isCorrect: false),
      const Option(text: 'Hà Tĩnh và Quảng Bình.', isCorrect: false),
      const Option(text: 'Nam Định và Hải Dương.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text:
        'Khẩu hiệu: “Đả đảo chủ nghĩa đế quốc! Đả đảo phong kiến” của nhân dân Việt Nam phong trào cách mạng 1930 - 1931 thể hiện mục tiêu đấu tranh về?',
    options: [
      const Option(text: 'xã hội.', isCorrect: false),
      const Option(text: 'văn hóa.', isCorrect: false),
      const Option(text: 'chính trị.', isCorrect: true),
      const Option(text: 'kinh tế.', isCorrect: false)
    ],
  ),
  Question(
    level: 1,
    text:
        'Hội nghị lần thứ nhất Ban Chấp hành Trung ương lâm thời Đảng Cộng sản Việt Nam (10/1930) đã cử ai làm Tổng bí thư?',
    options: [
      const Option(text: 'Lê Hồng Phong.', isCorrect: false),
      const Option(text: 'Ngô Gia Tự.', isCorrect: false),
      const Option(text: 'Trần Phú', isCorrect: true),
      const Option(text: 'Nguyễn Văn Cừ.', isCorrect: false)
    ],
  ),
  //độ khó 2
  Question(
    level: 2,
    text: 'Tính chất nhiệt đới của khí hậu nước ta được quy định bởi?',
    options: [
      const Option(text: 'vị trí trong vùng nội chí tuyến.', isCorrect: true),
      const Option(
          text: 'địa hình nước ta thấp dần ra biển.', isCorrect: false),
      const Option(text: 'hoạt động của gió phơn Tây Nam.', isCorrect: false),
      const Option(text: 'địa hình nước ta nhiều đồi núi.', isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text:
        'Cơ sở nào sau đây dùng để xác định đường biên giới quốc gia trên biển của nước ta??',
    options: [
      const Option(text: 'Bên ngoài của lãnh hải.  ', isCorrect: true),
      const Option(text: 'Phía trong đường cơ sở.', isCorrect: false),
      const Option(text: 'Hệ thống các bãi triều.    ', isCorrect: false),
      const Option(text: 'Hệ thống đảo ven bờ.', isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text:
        'Vùng biển mà nước ta có quyền thực hiện các biện pháp an ninh quốc phòng, kiểm soát thuế quan, các quy định về y tế, môi trường nhập cư là vùng?',
    options: [
      const Option(text: 'lãnh hải.  ', isCorrect: false),
      const Option(text: 'tiếp giáp lãnh hải.', isCorrect: true),
      const Option(text: 'đặc quyền về kinh tế. ', isCorrect: false),
      const Option(text: 'thềm lục địa.', isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text: 'Lãnh hải của nước ta là?',
    options: [
      const Option(
          text: 'vùng nước tiếp giáp với đất liền, ở phía trong đường cơ sở.',
          isCorrect: false),
      const Option(
          text: 'vùng biển thuộc chủ quyền quốc gia trên biển rộng 12 hải lí.',
          isCorrect: true),
      const Option(
          text: 'vùng biển có chiều rộng 200 hải lí tính từ đường cơ sở.',
          isCorrect: false),
      const Option(
          text: 'vùng biển rộng 24 hải lí tính từ đường cơ sở.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text:
        'Phần ngầm dưới biển và lòng đất dưới đáy biển thuộc phần lục địa kéo dài, mở rộng ra ngoài lãnh hải cho đến bờ ngoài của rìa lục địa, có độ sâu khoảng 200m hoặc hơn nữa là?',
    options: [
      const Option(text: 'thềm lục địa.  ', isCorrect: true),
      const Option(text: 'tiếp giáp lãnh hải.', isCorrect: false),
      const Option(text: 'lãnh hải.', isCorrect: false),
      const Option(text: 'đặc quyền kinh tế.', isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text:
        'Nhiệm vụ của cách mạng Việt Nam được xác định trong Luận cương chính trị tháng 10/1930 do Trần Phú soạn thảo là?',
    options: [
      const Option(
          text: 'đánh đổ thực dân, giải phóng dân tộc', isCorrect: false),
      const Option(
          text: 'đánh đổ đế quốc Pháp, phong kiến tay sai.', isCorrect: false),
      const Option(text: 'đánh đổ đế quốc và tay sai.', isCorrect: false),
      const Option(text: 'đánh đổ phong kiến và đế quốc.', isCorrect: true)
    ],
  ),
  Question(
    level: 2,
    text:
        'Phong trào cách mạng ở Nghệ - Tĩnh (1930 - 1931) phát triển tới đỉnh cao vào thời gian nào?',
    options: [
      const Option(text: 'Tháng 8/1930.', isCorrect: false),
      const Option(text: 'Tháng 9/1930.', isCorrect: true),
      const Option(text: 'Tháng 2 - 4/1930.', isCorrect: false),
      const Option(text: 'Tháng 5/1930.', isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text:
        'Đảng Cộng sản Việt Nam đổi tên thành Đảng Cộng sản Đông Dương vào thời gian nào?',
    options: [
      const Option(text: 'Tháng 12 năm 1930.', isCorrect: false),
      const Option(text: 'Tháng 5 năm 1930.', isCorrect: false),
      const Option(text: 'Tháng 3 năm 1930.', isCorrect: false),
      const Option(text: 'Tháng 10 năm 1930.', isCorrect: true)
    ],
  ),
  Question(
    level: 2,
    text:
        'Trong giai đoạn 1930 - 1931, phong trào đấu tranh tiêu biểu nhất ở Nghệ - Tĩnh là?',
    options: [
      const Option(text: 'công nhân Vinh - Bến Thủy', isCorrect: false),
      const Option(text: 'nông dân huyện Hưng Nguyên.', isCorrect: true),
      const Option(text: 'nông dân huyện Thanh Chương.', isCorrect: false),
      const Option(text: 'nông dân huyện Đức Thọ.', isCorrect: false)
    ],
  ),
  Question(
    level: 2,
    text:
        'Hội nghị lần thứ nhất Ban chấp hành Trung ương lâm thời Đảng Cộng sản Việt Nam được tổ chức vào tháng 10 - 1930 tại?',
    options: [
      const Option(text: 'Quảng Châu (Trung Quốc).', isCorrect: false),
      const Option(text: 'Hương Cảng (Trung Quốc).', isCorrect: true),
      const Option(text: 'Xiêm (Thái Lan).', isCorrect: false),
      const Option(text: 'Pắc Bó (Cao Bằng)', isCorrect: false)
    ],
  ),
  //độ khó 3
  Question(
    level: 3,
    text: 'Khí hậu nước ta không khô hạn như các nước cùng vĩ độ vì?',
    options: [
      const Option(
          text: 'nước ta nằm liền kề với 2 vành đai sinh khoáng lớn.',
          isCorrect: false),
      const Option(
          text: 'ảnh hưởng của biển Đông và các khối khí di chuyển qua biển.',
          isCorrect: true),
      const Option(
          text: 'nước ta nằm hoàn toàn trong vành đai nhiệt đới Bắc bán cầu.',
          isCorrect: false),
      const Option(
          text: 'thiên nhiên chịu ảnh hưởng rõ rệt của gió Tín phong.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text:
        'Vị trí địa lí đã quy định đặc điểm cơ bản của của thiên nhiên nước ta là?',
    options: [
      const Option(
          text: 'Mang tính chất nhiệt đới ẩm gió mùa.', isCorrect: true),
      const Option(
          text: 'Có nền nhiệt độ cao, chan hòa ánh nắng.', isCorrect: false),
      const Option(
          text: 'Khí hậu có một mùa đông lạnh, ít mưa. ', isCorrect: false),
      const Option(
          text: 'Chịu ảnh hưởng chế dộ gió mùa châu á.', isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text:
        'Đặc điểm nào sau đây không đúng với thiên nhiên vùng biển và thềm lục địa nước ta?',
    options: [
      const Option(
          text:
              'Vùng biển có diện tích lớn gấp ba lần vùng đất liền.',
          isCorrect: false),
      const Option(
          text: 'Thềm lục địa nông, mở rộng ở phía Bắc và phía Nam.',
          isCorrect: false),
      const Option(
          text:
              'Độ nông - sâu của thềm lục địa đồng nhất từ Bắc vào Nam.',
          isCorrect: true),
      const Option(
          text:
              'Thềm lục địa miền Trung hẹp, tiếp giáp với vùng biển sâu.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text:
        'Thế mạnh của vị trí địa lí nước ta trong khu vực Đông Nam Á sẽ được phát huy cao độ nếu kết hợp các loại hình giao thông vận tải nào?',
    options: [
      const Option(text: 'Đường sắt và đường biển. ', isCorrect: false),
      const Option(text: 'Đường biển và đường hàng không.', isCorrect: true),
      const Option(text: 'Đường bộ và đường hàng không.', isCorrect: false),
      const Option(text: 'Đường sắt và đường bộ.', isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text: 'Vị trí tiếp giáp với biển nên nước ta có',
    options: [
      const Option(text: 'nền nhiệt cao chan hòa ánh nắng.', isCorrect: false),
      const Option(
          text: 'khí hậu phân thành hai mùa rõ rệt.', isCorrect: false),
      const Option(
          text: 'thảm thực vật xanh tốt giàu sức sống.', isCorrect: true),
      const Option(
          text: 'thiên nhiên có sự phân hóa đa dạng.', isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text:
        'Nguyên nhân cơ bản nhất quyết định sự bùng nổ của phong trào cách mạng 1930 - 1931 ở Việt Nam là',
    options: [
      const Option(
          text:
              'địa chủ phong kiến cấu kết với thực dân Pháp đàn áp đối với nông dân.',
          isCorrect: false),
      const Option(
          text: 'ảnh hưởng của cuộc khủng hoảng kinh tế 1929 - 1933.64',
          isCorrect: false),
      const Option(
          text:
              'Đảng cộng sản Việt Nam ra đời kịp thời lãnh đạo cách mạng.',
          isCorrect: true),
      const Option(
          text:
              'thực dân Pháp tiến hành khủng bố trắng sau khởi nghĩa Yên Bái.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text:
        ' Sự ra đời của các Xô viết ở Nghệ An và Hà Tĩnh là đỉnh cao của phong trào cách mạng 1930 - 1931 vì?',
    options: [
      const Option(
          text:
              'đã hoàn thành mục tiêu đề ra trong Luận cương chính trị tháng 10/1930.',
          isCorrect: false),
      const Option(
          text:
              'đây là mốc đánh dấu sự tan rã của bộ máy chính quyền thực dân và tay sai.',
          isCorrect: false),
      const Option(
          text:
              'đã giải quyết được vấn đề cơ bản của một cuộc cách mạng xã hội.',
          isCorrect: true),
      const Option(
          text:
              'đây là hình thức chính quyền nhà nước giống các Xô viết ở nước Nga.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 3,
    text:
        'Tính chất triệt để của phong trào cách mạng Việt Nam 1930 - 1931 được biểu hiện ở chỗ?',
    options: [
      const Option(
          text: 'diễn ra trên quy mô rộng lớn chưa từng thấy.',
          isCorrect: false),
      const Option(
          text: 'hình thức đấu tranh phong phú và quyết liệt.',
          isCorrect: false),
      const Option(
          text: 'lần đầu tiên có sự lãnh đạo của một chính đảng.',
          isCorrect: false),
      const Option(
          text: 'không ảo tưởng vào kẻ thù của dân tộc và giai cấp.',
          isCorrect: true)
    ],
  ),
  Question(
    level: 3,
    text:
        'So với Cương lĩnh chính trị đầu tiên của Đảng, Luận cương chính trị (10 - 1930) không có sự khác biệt về?',
    options: [
      const Option(text: 'lực lượng cách mạng.', isCorrect: false),
      const Option(text: 'phạm vi, quy mô.', isCorrect: false),
      const Option(
          text: 'mối quan hệ giữa nhiệm vụ dân tộc - dân chủ.',
          isCorrect: false),
      const Option(
          text: 'phương hướng chiến lược của cách mạng.', isCorrect: true)
    ],
  ),
  Question(
    level: 3,
    text:
        'Ý nghĩa quan trọng của phong trào cách mạng 1930 - 1931 ở Việt Nam là?',
    options: [
      const Option(
          text:
              'chứng minh trong thực tế khả năng lãnh đạo của chính đảng vô sản.',
          isCorrect: true),
      const Option(
          text: 'tạo tiền đề trực tiếp cho Tổng khởi nghĩa tháng Tám năm 1945.',
          isCorrect: false),
      const Option(
          text:
              'hình thành khối liên minh công nông binh cho cách mạng Việt Nam.',
          isCorrect: false),
      const Option(
          text: 'Đảng Cộng sản Việt Nam được công nhận là một phân bố độc lập.',
          isCorrect: false)
    ],
  ),
  //độ khó 4
  Question(
    level: 4,
    text:
        'Hình dạng kéo dài và hẹp ngang của lãnh thổ Việt Nam không gây ra hạn chế nào sau đây?',
    options: [
      const Option(text: 'Hoạt động giao thông vận tải.', isCorrect: false),
      const Option(text: 'Bảo vệ an ninh, chủ quyền.', isCorrect: false),
      const Option(text: 'Khoáng sản có trữ lượng không lớn.', isCorrect: true),
      const Option(
          text: 'Khí hậu thời tiết diễn biến phức tạp.', isCorrect: false)
    ],
  ),
  Question(
    level: 4,
    text: 'Nằm ở rìa phía Đông của bán đảo Đông Dương là nước',
    options: [
      const Option(text: 'Lào', isCorrect: false),
      const Option(text: 'Campuchia', isCorrect: false),
      const Option(text: 'Việt Nam', isCorrect: true),
      const Option(text: 'Mi-an-ma', isCorrect: false)
    ],
  ),
  Question(
    level: 4,
    text: 'Nước ta nằm trong múi giờ thứ mấy?',
    options: [
      const Option(text: '5', isCorrect: false),
      const Option(text: '6', isCorrect: false),
      const Option(text: '7', isCorrect: true),
      const Option(text: '8', isCorrect: false)
    ],
  ),
  Question(
    level: 4,
    text: 'Trên đất liền, nước ta không có chung biên giới với nước nào?',
    options: [
      const Option(text: 'Lào', isCorrect: false),
      const Option(text: 'Thái Lan', isCorrect: true),
      const Option(text: 'Trung Quốc', isCorrect: false),
      const Option(text: 'Campuchia', isCorrect: false)
    ],
  ),
  Question(
    level: 4,
    text: 'Ý nghĩa của vị trí địa lí nước ta không phải là',
    options: [
      const Option(
          text:
              'có vị trí địa lí đặc biệt quan trọng ở vùng Đông Nam Á, châu Á',
          isCorrect: false),
      const Option(
          text:
              'tạo điều kiện thực hiện chính sách mở cửa, hội nhập với các nước trên thế giới',
          isCorrect: false),
      const Option(
          text:
              'chung sống hòa bình, hợp tác hữu nghị và cùng phát triển với các nước',
          isCorrect: false),
      const Option(
          text:
              'xảy ra các vấn đề tranh chấp biển Đông, ranh giới trên đất liền với Trung Quốc',
          isCorrect: true)
    ],
  ),
  Question(
    level: 4,
    text:
        'Luận cương chính trị tháng 10/1930 và Cương lĩnh chính trị tháng 2/1930 có điểm gì tương đồng?',
    options: [
      const Option(
          text:
              'Khẳng định công nhân và tư sản dân tộc là lực lượng cơ bản của cách mạng.',
          isCorrect: false),
      const Option(
          text:
              'Xác định cách mạng Đông Dương có mối liên hệ mật thiết với cách mạng thế giới.',
          isCorrect: false),
      const Option(
          text:
              'Xác định phản đế và phản phong kiến là nhiệm vụ chiến lược của cách mạng.',
          isCorrect: true),
      const Option(
          text:
              'Xác định liên minh công – nông là lực lượng lãnh đạo cách mạng.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 4,
    text:
        'Nội dung nào phản ánh đúng tình hình của Đảng Cộng sản Đông Dương trong những năm 1931 – 1932?',
    options: [
      const Option(
          text: 'Hoạt động của Đảng hoàn toàn bị tế liệt.', isCorrect: false),
      const Option(
          text: 'Toàn bộ Đảng viên thuộc Xứ uỷ Trung Kì đều bị bắt.',
          isCorrect: false),
      const Option(
          text: 'Toàn bộ Ban Chấp hành Trung ương đảng đều bị bắt.',
          isCorrect: false),
      const Option(
          text:
              'Hầu hết các uỷ viên Ban Chấp hành Trung ương, Xứ uỷ ba Kì đều bị bắt.',
          isCorrect: true)
    ],
  ),
  Question(
    level: 4,
    text:
        'vChính sách nào sau đây của chính quyền Xô viết Nghệ - Tĩnh không được thực hiện trong thời gian tồn tại?',
    options: [
      const Option(
          text: 'Quần chúng được tự do tham gia các đoàn thể, tự do hội họp',
          isCorrect: false),
      const Option(
          text: 'Chia lại ruộng công, xóa nợ cho người nghèo', isCorrect: true),
      const Option(
          text: 'Mở lớp dạy chữ Quốc ngữ cho nhân dân', isCorrect: false),
      const Option(
          text: 'Tiến hành bầu cử chính quyền các cấp', isCorrect: false)
    ],
  ),
  Question(
    level: 4,
    text:
        'Đâu không phải là hạn chế của chính quyền Xô viết Nghệ - Tĩnh mà Đảng Cộng sản cần khắc phục trong các thời kì đấu tranh sau??',
    options: [
      const Option(text: 'Thời gian tồn tại ngắn', isCorrect: false),
      const Option(text: 'Các chính sách chưa nhiều', isCorrect: false),
      const Option(text: 'Quy mô chỉ ở cấp xã', isCorrect: false),
      const Option(text: 'Chưa đưa ra chính sách tích cực', isCorrect: true)
    ],
  ),
  Question(
    level: 4,
    text:
        'Mục tiêu đấu tranh chính trong phong trào cách mạng 1930 – 1931 là gì?',
    options: [
      const Option(
          text:
              'Chống đế quốc và phong kiến đòi độc lập dân tộc và ruộng đất dân cày',
          isCorrect: true),
      const Option(
          text:
              'Chống bọn phản động thuộc địa và tay sai của chúng, đòi tự do, dân chủ, cơm áo, hòa bình',
          isCorrect: false),
      const Option(
          text:
              'Chống đế quốc và phát xít Pháp – Nhật, đòi độc lập cho dân tộc',
          isCorrect: false),
      const Option(
          text: 'Chống phát xít, chống chiến tranh, bảo vệ hòa bình',
          isCorrect: false)
    ],
  ),
  //độ khó 5
  Question(
    level: 5,
    text: 'Nhờ có biển Đông mà nước ta có',
    options: [
      const Option(
          text: 'Thiên nhiên nước ta bốn mùa xanh tươi', isCorrect: true),
      const Option(
          text: 'Thiên nhiên nhiệt đới gió mùa với mùa đông lạnh',
          isCorrect: false),
      const Option(
          text: 'Thiên nhiên phân hóa đa dạng theo độ cao', isCorrect: false),
      const Option(
          text: 'Khí hậu khô, nóng với các nước ở Tây Á, châu Phi',
          isCorrect: false)
    ],
  ),
  Question(
    level: 5,
    text: 'Nước ta giàu có về tài nguyên khoáng sản là do',
    options: [
      const Option(
          text: 'tiếp giáp với đường hàng hải, hàng không quốc tế',
          isCorrect: false),
      const Option(
          text: 'nằm trên vành đai sinh khoáng Thái Bình Dương',
          isCorrect: true),
      const Option(
          text: 'nằm trên vành đai lửa Thái Bình Dương', isCorrect: false),
      const Option(
          text: 'nằm trên đường di cư, di lưu của nhiều động thực vật',
          isCorrect: false)
    ],
  ),
  Question(
    level: 5,
    text:
        'Dựa vào Atlat Địa lí Việt Nam trang 4 -5, cho biết tỉnh nào của nước ta giáp biển?',
    options: [
      const Option(text: 'Quảng Ninh', isCorrect: true),
      const Option(text: 'Hà Giang', isCorrect: false),
      const Option(text: 'Điện Biên', isCorrect: false),
      const Option(text: 'Sơn La', isCorrect: false)
    ],
  ),
  Question(
    level: 5,
    text: 'Nước ta có khí hậu nhiệt đới ẩm gió mùa không phải do',
    options: [
      const Option(
          text: 'Nằm trong vùng có khí hậu điển hình châu Á', isCorrect: false),
      const Option(
          text: 'Nằm trong khu vực nội chí tuyến bán cầu Bắc',
          isCorrect: false),
      const Option(text: 'Có vùng biển Đông kín, nóng, ẩm', isCorrect: false),
      const Option(
          text: 'Có lãnh thổ kéo dài 15 vĩ tuyến Bắc – Nam', isCorrect: true)
    ],
  ),
  Question(
    level: 5,
    text:
        'Dựa vào Atlat Địa lí Việt Nam trang 23, cho biết cửa khẩu nào sau đây nằm trên đường biên giới Việt Nam – Lào?',
    options: [
      const Option(text: 'Móng Cái.', isCorrect: false),
      const Option(text: 'Lệ Thanh.', isCorrect: false),
      const Option(text: 'Mường Khương.', isCorrect: false),
      const Option(text: 'Cầu Treo.', isCorrect: true)
    ],
  ),
  Question(
    level: 5,
    text:
        'Nguyên nhân nào sau đây đóng vai trò quyết định nhất dẫn tới sự bùng nổ phong trào 1930 -1931?',
    options: [
      const Option(
          text: 'Sự cổ vũ của phong trào cách mạng thế giới', isCorrect: false),
      const Option(
          text: 'Sự ra đời và lãnh đạo cách mạng của Đảng cộng sản Việt Nam',
          isCorrect: true),
      const Option(
          text: 'Mâu thuẫn dân tộc phát triển gay gắt', isCorrect: false),
      const Option(
          text: 'Cuộc khủng hoảng kinh tế thế giới 1929-1933', isCorrect: false)
    ],
  ),
  Question(
    level: 5,
    text:
        'Nguyên nhân sâu xa nào dẫn tới sự bùng nổ phong trào 1930 -1931 ở Việt Nam?',
    options: [
      const Option(
          text: 'Cuộc khủng hoảng kinh tế thế giới 1929 -1933',
          isCorrect: false),
      const Option(
          text: 'Sự phát triển của phong trào cách mạng thế giới',
          isCorrect: false),
      const Option(
          text: 'Mâu thuẫn dân tộc phát triển gay gắt', isCorrect: true),
      const Option(
          text: 'Sự ra đời và lãnh đạo cách mạng của Đảng cộng sản Việt Nam',
          isCorrect: false)
    ],
  ),
  Question(
    level: 5,
    text:
        ' Ý nghĩa nào sau đây không phải của phong trào cách mạng 1930 - 1931?',
    options: [
      const Option(
          text:
              'Là cuộc tập dượt đầu tiên chuẩn bị cho Tổng khởi nghĩa tháng Tám sau này.',
          isCorrect: false),
      const Option(
          text: 'Khẳng định đường lối lãnh đạo đúng đắn của Đảng.',
          isCorrect: false),
      const Option(
          text: 'Từ phong trào khối liên minh công - nông được hình thành.',
          isCorrect: false),
      const Option(
          text:
              'Là cuộc tập dượt thứ hai chuẩn bị cho Tổng khởi nghĩa tháng Tám sau này.',
          isCorrect: true)
    ],
  ),
  Question(
    level: 5,
    text:
        'Nguyên nhân khách quan dẫn đến bùng nổ phong trào cách mạng 1930 - 1931 ở Việt Nam là do',
    options: [
      const Option(
          text: 'ảnh hưởng của cuộc khủng hoảng kinh tế 1929 - 1933.',
          isCorrect: true),
      const Option(
          text:
              'mâu thuẫn dân tộc sâu sắc giữa nhân dân Việt Nam với thực dân Pháp.',
          isCorrect: false),
      const Option(
          text: 'Đảng Cộng sản Việt Nam ra đời kịp thời lãnh đạo đấu tranh.',
          isCorrect: false),
      const Option(
          text:
              'đời sống của các tầng lớp nhân dân Việt Nam khổ cực, bần cùng.',
          isCorrect: false)
    ],
  ),
  Question(
    level: 5,
    text:
        'Luận cương chính trị (10/1930) của Đảng Cộng sản Đông Dương xác định giai cấp lãnh đạo cách mạng là',
    options: [
      const Option(text: 'nông dân.', isCorrect: false),
      const Option(text: 'công nhân.', isCorrect: true),
      const Option(text: 'tư sản dân tộc.', isCorrect: false),
      const Option(text: 'tiểu tư sản trí thức.', isCorrect: false)
    ],
  ),
];
