import 'package:flutter/material.dart';
import 'FirstTab.dart';
import 'main.dart';
import 'ThirdTab.dart';

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: AlignmentDirectional.topCenter,
          colors: [
            Color(0xFF005BA5),
            Color(0xFF7AC2FD),
          ],
        ),
      ), //배경컬러 블루그라데이션 완성
      child: Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 2, // 상단 아이콘 2개부터 탭하세요 텍스트까지 차지할범위
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ), //라이브러리 아이콘
                          Text(
                            '라이브러리',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ), //라이브러리 아이콘아래텍스트
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.show_chart,
                            color: Colors.white,
                            size: 30,
                          ), //라이브러리 아이콘
                          Text(
                            '차트',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ), //라이브러리 아이콘아래텍스트
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Shazam하려면 탭하세요',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold), //샤잠하려면탭하세요 텍스트옵션
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {},
              child: ClipOval(
                child: Image.network(
                  "https://i.pinimg.com/564x/af/b0/a1/afb0a1beb489c11b689750a80e327e41.jpg",
                  width: 200,
                ),
              ),
            ), //샤잠 큰아이콘버튼
            Expanded(
              flex: 1,
              child: SizedBox(), //여백주기
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, //돋보기아이콘 배경모양 : 원형
                  color: Colors.blue), //배경 색 : 블루
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ), //작은 서치동그라미 아이콘 버튼
            Expanded(
              flex: 1,
              child: SizedBox(), //여백주기
            ),
          ],
        ),
      ),
    );
  }
}
