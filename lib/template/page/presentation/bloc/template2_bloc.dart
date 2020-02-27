import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/template/page/domain/usecase/get_desc.dart';
import 'package:flutter_ty_mobile/template/page/domain/usecase/get_desc_2.dart';
import 'package:meta/meta.dart' show required;
import 'package:super_enum/super_enum.dart';

import 'template2_event.dart';
import 'template2_state.dart';

class Template2Bloc extends Bloc<Template2Event, Template2State> {
  final GetDescriptionData getDescriptionData;
  final GetDescriptionData2 getDescriptionData2;
  final tag = 'Template2Bloc';

  Template2Bloc({
    @required GetDescriptionData descriptionData,
    @required GetDescriptionData2 descriptionData2,
  })  : assert(descriptionData != null),
        assert(descriptionData2 != null),
        getDescriptionData = descriptionData,
        getDescriptionData2 = descriptionData2;

  @override
  Template2State get initialState => Template2State.tp2Initial();

  @override
  void onTransition(Transition<Template2Event, Template2State> transition) {
//    print('marquee state, current: ${transition.currentState}');
    print('state, next: ${transition.nextState}');
    super.onTransition(transition);
  }

  @override
  Stream<Template2State> mapEventToState(
    Template2Event event,
  ) async* {
    MyLogger.print(msg: 'mapEventToState: $event', tag: tag);
    if (event is GetDescEvent || event is GetDescEvent2) {
      yield Template2State.tp2Loading();
    }
    // action on different event
    yield* await event.when(
      getDescEvent: (event) => streamTemplate2DataState(event),
      getDescEvent2: (event) => streamTemplate2Data2State(event),
    );
  }

  Stream<Template2State> streamTemplate2DataState(GetDescEvent event) async* {
    final failureOrData = await getDescriptionData(NoParams());
    yield failureOrData.fold(
      (failure) => Template2State.tp2Error(message: failure.message),
      (data) => Template2State.tp2Loaded(description: data),
    );
  }

  Stream<Template2State> streamTemplate2Data2State(GetDescEvent2 event) async* {
    final failureOrData = await getDescriptionData2(DataParams(event.data));
    yield failureOrData.fold(
      (failure) => Template2State.tp2Error(message: failure.message),
      (data) => Template2State.tp2Loaded(description: data),
    );
  }
}
