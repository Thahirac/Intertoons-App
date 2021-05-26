import 'package:get/state_manager.dart';
import 'package:intertoons/model/onbording.dart';


class OnboardingController extends GetxController {
  var selectedIndexPage = 0.obs;

  List<OnboardingInfo> onboardingContents = [
    OnboardingInfo(
        'https://media.istockphoto.com/vectors/safe-food-delivery-at-home-during-coronavirus-covid19-epidemic-vector-id1218607993?b=1&k=6&m=1218607993&s=612x612&w=0&h=v97grb2m8OddnjQp1OOzjBvq5f1Gf4hxo4bRF2IgDNQ=',
        'Quick time delivery at your door',
        'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it'),
    OnboardingInfo(
        'https://thumbs.dreamstime.com/b/vector-illustration-food-quality-control-fast-food-street-food-american-burger-biochemistry-fastfood-illustration-tasty-175543196.jpg',
        'Quality Check',
        'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it'),
    OnboardingInfo(
        'https://image.freepik.com/free-vector/couple-winning-prize-man-woman-holding-gift-box-flat-vector-illustration-lottery-present-birthday-party_74855-8307.jpg',
        'Reward surprises',
        'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it'),
  ];
}
