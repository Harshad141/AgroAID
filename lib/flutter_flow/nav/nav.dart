import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AgroAidFirebaseUser initialUser;
  AgroAidFirebaseUser user;
  bool showSplashImage = true;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(AgroAidFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      urlPathStrategy: UrlPathStrategy.path,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => appStateNotifier.loggedIn
          ? LandingPageWidget()
          : EnterPhonenumberWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? LandingPageWidget()
              : EnterPhonenumberWidget(),
        ),
        FFRoute(
          name: 'enter_language',
          path: '/enterLanguage',
          builder: (context, params) => EnterLanguageWidget(),
        ),
        FFRoute(
          name: 'enter_phonenumber',
          path: '/enterPhonenumber',
          builder: (context, params) => EnterPhonenumberWidget(),
        ),
        FFRoute(
          name: 'verify_otp',
          path: '/verifyOtp',
          builder: (context, params) => VerifyOtpWidget(),
        ),
        FFRoute(
          name: 'landing_page',
          path: '/landingPage',
          builder: (context, params) => LandingPageWidget(),
        ),
        FFRoute(
          name: 'new_reg_details',
          path: '/newRegDetails',
          builder: (context, params) => NewRegDetailsWidget(),
        ),
        FFRoute(
          name: 'side_drawer',
          path: '/sideDrawer',
          builder: (context, params) => SideDrawerWidget(),
        ),
        FFRoute(
          name: 'CROPINFO',
          path: '/cropinfo',
          builder: (context, params) => CropinfoWidget(),
        ),
        FFRoute(
          name: 'rough',
          path: '/rough',
          builder: (context, params) => RoughWidget(),
        ),
        FFRoute(
          name: 'side_drawerCopy',
          path: '/sideDrawerCopy',
          builder: (context, params) => SideDrawerCopyWidget(),
        ),
        FFRoute(
          name: 'crop1',
          path: '/crop1',
          builder: (context, params) => Crop1Widget(),
        ),
        FFRoute(
          name: 'Crop2',
          path: '/crop2',
          builder: (context, params) => Crop2Widget(),
        ),
        FFRoute(
          name: 'Crop3',
          path: '/crop3',
          builder: (context, params) => Crop3Widget(),
        ),
        FFRoute(
          name: 'Crop4',
          path: '/crop4',
          builder: (context, params) => Crop4Widget(),
        ),
        FFRoute(
          name: 'Crop5',
          path: '/crop5',
          builder: (context, params) => Crop5Widget(),
        ),
        FFRoute(
          name: 'Crop6',
          path: '/crop6',
          builder: (context, params) => Crop6Widget(),
        ),
        FFRoute(
          name: 'Crop7',
          path: '/crop7',
          builder: (context, params) => Crop7Widget(),
        ),
        FFRoute(
          name: 'Crop8',
          path: '/crop8',
          builder: (context, params) => Crop8Widget(),
        ),
        FFRoute(
          name: 'Crop9',
          path: '/crop9',
          builder: (context, params) => Crop9Widget(),
        ),
        FFRoute(
          name: 'Crop10',
          path: '/crop10',
          builder: (context, params) => Crop10Widget(),
        ),
        FFRoute(
          name: 'Crop11',
          path: '/crop11',
          builder: (context, params) => Crop11Widget(),
        ),
        FFRoute(
          name: 'Crop12',
          path: '/crop12',
          builder: (context, params) => Crop12Widget(),
        ),
        FFRoute(
          name: 'Soiltesting',
          path: '/soiltesting',
          builder: (context, params) => SoiltestingWidget(),
        ),
        FFRoute(
          name: 'weather',
          path: '/weather',
          builder: (context, params) => WeatherWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension GoRouterExtensions on GoRouter {
  void ignoringAuthChange() =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  bool get isEmpty => state.allParams.isEmpty;
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key](param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam(
    String paramName,
    ParamType type, [
    String collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam(param, type, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    @required this.name,
    @required this.path,
    @required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                )
              : requireAuth && !appStateNotifier.loggedIn
                  ? EnterPhonenumberWidget()
                  : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
      );
}

class TransitionInfo {
  const TransitionInfo({
    this.hasTransition,
    this.transitionType,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Alignment alignment;
  final Duration duration;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
