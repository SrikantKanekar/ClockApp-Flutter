import 'dart:async';

import 'package:clock_app/common/bloc/bloc.dart';

abstract class CheckpointStatus {}

class CheckpointLockScreen implements CheckpointStatus {}

class CheckpointConsents implements CheckpointStatus {}

class CheckpointError implements CheckpointStatus {
  CheckpointError(this.error);
  dynamic error;
}

abstract class CheckpointsBloc extends BlocBase {
  Future<bool> lockScreenCheck();

  Future<void> consentsCheck();

  Stream<CheckpointStatus> get status;

  void onInit(bool checkConsents);

  void onDispose();
}

// class CheckpointsBlocImpl extends CheckpointsBloc {
//   CheckpointsBlocImpl(
//       this.myAccountRepo,
//       this.lockScreenStatus,
//       this.connectionRepo,
//       );
//
//   final MyAccountRepo myAccountRepo;
//   final LockScreenStatus lockScreenStatus;
//   final CareLinkConnectivity connectionRepo;
//
//   final log = createLogger(tag: 'CheckpointsBloc');
//   final _statusSubj = PublishSubject<CheckpointStatus>();
//
//   StreamSubscription connectionSubs;
//
//   @override
//   Future<bool> lockScreenCheck() async {
//     bool lockScreenEnabled;
//     try {
//       if (Platform.isIOS) {
//         lockScreenEnabled = await lockScreenStatus.iosLockScreenStatus;
//       } else {
//         lockScreenEnabled = await lockScreenStatus.androidLockScreenEnabled;
//       }
//       if (!lockScreenEnabled) {
//         _statusSubj.add(CheckpointLockScreen());
//       }
//       return lockScreenEnabled;
//     } on Exception catch (e) {
//       log.e('Unable to retrieve lock screen status: $e');
//       return true;
//     }
//   }
//
//   @override
//   Future<void> consentsCheck() async {
//     LoginInfoDto loginInfoDto;
//     try {
//       loginInfoDto = await myAccountRepo.fetchUserLoginInfo();
//       CheckpointsHolder.setPatientCountry(loginInfoDto?.country);
//     } on Exception catch (error) {
//       log.e('retrieveLoginData error: $error');
//       _statusSubj.add(CheckpointError(error));
//       return;
//     }
//     if (loginInfoDto != null && loginInfoDto.needToReconsent ?? true) {
//       _statusSubj.add(CheckpointConsents());
//       return;
//     }
//     if (await myAccountRepo.getConsentStatus) {
//       _statusSubj.add(CheckpointConsents());
//     }
//   }
//
//   @override
//   void onInit(bool checkConsents) {
//     lockScreenCheck();
//     if (checkConsents) {
//       consentsCheck();
//       connectionSubs = connectionRepo.onConnectivityChanged
//           .listen((CareLinkConnectivityResult connectivity) {
//         log.d('Connectivity Status is ${connectivity.toString()}');
//         if (connectivity.available) {
//           consentsCheck();
//         }
//       });
//     }
//   }
//
//   @override
//   void onDispose() {
//     connectionSubs?.cancel();
//   }
//
//   @override
//   Stream<CheckpointStatus> get status => _statusSubj.stream;
// }
