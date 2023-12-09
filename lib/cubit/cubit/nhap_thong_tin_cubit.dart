import 'package:bloc/bloc.dart';


import 'package:meta/meta.dart';


part 'nhap_thong_tin_state.dart';


enum Season { spring, summer, autumn, winter }


enum childDiseases { yes, no }


enum accidentOrTrauma { yes, no }


enum surgicalIntervention { yes, no }


enum hightFeverInLastYear { less3month, more3month, no }


enum alcoholConsumption {

  severalAday,


  everyday,


  severalAweek,


  oncesAweek,


  hardlyEverOrNever,

}


enum smokingHabit { never, occasional, daily }


class NhapThongTinCubit extends Cubit<NhapThongTinState> {

  NhapThongTinCubit() : super(NhapThongTinInitial());

}

