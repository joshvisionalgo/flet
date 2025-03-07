import 'dart:ui';

import 'package:equatable/equatable.dart';

import 'control.dart';

class Counter {
  int value;
  Counter(this.value);
}

class AppState extends Equatable {
  final Uri? pageUri;
  final String assetsDir;
  final String route;
  final String deepLinkingRoute;
  final String sessionId;
  final bool isLoading;
  final bool isRegistered;
  final int reconnectDelayMs;
  final String error;
  final Size size;
  final Brightness displayBrightness;
  final Map<String, double> sizeBreakpoints;
  final Map<String, Control> controls;

  const AppState(
      {required this.pageUri,
      required this.assetsDir,
      required this.route,
      required this.deepLinkingRoute,
      required this.sessionId,
      required this.isLoading,
      required this.isRegistered,
      required this.reconnectDelayMs,
      required this.error,
      required this.size,
      required this.sizeBreakpoints,
      required this.displayBrightness,
      required this.controls});

  factory AppState.initial() => const AppState(
      pageUri: null,
      assetsDir: "",
      route: "",
      deepLinkingRoute: "",
      sessionId: "",
      isLoading: true,
      isRegistered: false,
      reconnectDelayMs: 0,
      error: "",
      size: Size(0, 0),
      sizeBreakpoints: {
        "xs": 0,
        "sm": 576,
        "md": 768,
        "lg": 992,
        "xl": 1200,
        "xxl": 1400
      },
      displayBrightness: Brightness.light,
      controls: {
        "page": Control(
            id: "page",
            pid: "",
            type: "page",
            name: "",
            childIds: [],
            attrs: {})
      });

  AppState copyWith(
          {Uri? pageUri,
          String? assetsDir,
          String? route,
          String? deepLinkingRoute,
          String? sessionId,
          bool? isLoading,
          bool? isRegistered,
          int? reconnectDelayMs,
          String? error,
          Size? size,
          Map<String, double>? sizeBreakpoints,
          Brightness? displayBrightness,
          Map<String, Control>? controls}) =>
      AppState(
          pageUri: pageUri ?? this.pageUri,
          assetsDir: assetsDir ?? this.assetsDir,
          route: route ?? this.route,
          deepLinkingRoute: deepLinkingRoute ?? this.deepLinkingRoute,
          sessionId: sessionId ?? this.sessionId,
          isLoading: isLoading ?? this.isLoading,
          isRegistered: isRegistered ?? this.isRegistered,
          reconnectDelayMs: reconnectDelayMs ?? this.reconnectDelayMs,
          error: error ?? this.error,
          size: size ?? this.size,
          sizeBreakpoints: sizeBreakpoints ?? this.sizeBreakpoints,
          displayBrightness: displayBrightness ?? this.displayBrightness,
          controls: controls ?? this.controls);

  @override
  List<Object?> get props => [isLoading, error, sessionId, controls];
}
