import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴게요.',
    DateTime.now().subtract(1.hours),
  ),
  TtossNotification(
    NotificationType.walk,
    '1000걸음 이상 걸었다면 포인트 받으세요.',
    DateTime.now().subtract(1.hours),
  ),
  TtossNotification(
      NotificationType.moneyTip,
      '유럽 식품 물가가 치솟고 있어요.\n박예서님, 유럽여행에 관김이 있다면 확인해보세요.',
      DateTime.now().subtract(8.hours),
      isRead: true),
  TtossNotification(NotificationType.luck, '5월 28일, 행운복권이 도착했어요.',
      DateTime.now().subtract(12.hours),
      isRead: true),
  TtossNotification(
    NotificationType.people,
    '띵동! 월요일 공동구매 보러가기',
    DateTime.now().subtract(12.hours),
  ),
];
