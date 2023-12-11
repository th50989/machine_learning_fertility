import 'package:bloc/bloc.dart';


import 'package:meta/meta.dart';


part 'nhap_thong_tin_state.dart';


class NhapThongTinCubit extends Cubit<NhapThongTinState> {

  NhapThongTinCubit() : super(NhapThongTinInitial());

}

