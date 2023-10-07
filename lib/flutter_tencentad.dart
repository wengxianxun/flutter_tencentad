import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'flutter_tencentad_code.dart.dart';

export 'flutter_tencentad_code.dart.dart';
export 'flutter_tencentad_stream.dart';

part 'flutter_tencentad_bidding_controller.dart';
part 'flutter_tencentad_callback.dart';

class FlutterTencentad {
  static const MethodChannel _channel =
      const MethodChannel('flutter_tencentad');

  ///
  /// # SDK注册初始化
  ///
  /// [androidId] androidId 必填
  ///
  /// [iosId] iosId 必填
  ///
  /// [channelId] channelId 渠道id [FlutterTencentadChannel]
  ///
  /// [personalized] personalized 是否开启个性化广告 [FlutterTencentadPersonalized]
  ///
  static Future<bool> register({
    required String androidId,
    required String iosId,
    int? personalized,
    bool? debug,
    int? channelId,
  }) async {
    // return await _channel.invokeMethod("register", {
    //   "androidId": androidId,
    //   "iosId": iosId,
    //   "debug": debug ?? false,
    //   "channelId": channelId ?? FlutterTencentadChannel.other,
    //   "personalized": personalized ?? FlutterTencentadPersonalized.show,
    // });
    return true;
  }

  ///
  /// # 获取SDK版本号
  ///
  static Future<String> getSDKVersion() async {
    return '0.1';
  }

  ///
  /// # 激励视频广告预加载
  ///
  /// [androidId] android广告ID
  ///
  /// [iosId] ios广告ID
  ///
  /// [rewardName] 奖励名称
  ///
  /// [rewardAmount] 奖励金额
  ///
  /// [userID] 用户id
  ///
  /// [customData] 扩展参数，服务器回调使用
  ///
  /// [downloadConfirm] 下载二次确认弹窗 默认false
  ///
  /// [videoMuted] 是否静音 默认false
  ///
  /// [isBidding] 是否开启竞价模式 默认false
  static Future<bool> loadRewardVideoAd({
    required String androidId,
    required String iosId,
    required String rewardName,
    required int rewardAmount,
    required String userID,
    String? customData,
    bool? downloadConfirm,
    bool? videoMuted,
    bool? isBidding,
  }) async {
    return true;
  }

  ///
  /// # 显示激励广告
  ///
  /// [result] 竞价成功、失败后调用 [FlutterTencentBiddingResult] ,isBidding = true时必传
  static Future<bool> showRewardVideoAd(
      {FlutterTencentBiddingResult? result}) async {
    return true;
  }

  ///
  /// # 预加载插屏广告
  ///
  /// [androidId] android广告ID
  ///
  /// [iosId] ios广告ID
  ///
  ///  [isFullScreen] 是否全屏
  ///
  /// [downloadConfirm] 下载二次确认弹窗 默认false
  ///
  /// [isBidding] 是否开启竞价模式 默认false
  ///
  static Future<bool> loadUnifiedInterstitialAD({
    required String androidId,
    required String iosId,
    required bool isFullScreen,
    bool? downloadConfirm,
    bool? isBidding,
  }) async {
    return true;
  }

  ///
  /// # 显示新模板渲染插屏
  ///
  ///
  /// [result] 竞价成功、失败后调用 [FlutterTencentBiddingResult] ,isBidding = true时必传
  ///
  static Future<bool> showUnifiedInterstitialAD(
      {FlutterTencentBiddingResult? result}) async {
    return true;
  }

  ///
  /// # banner广告
  ///
  /// [androidId] android广告ID
  ///
  /// [iosId] ios广告ID
  ///
  /// [viewWidth] 广告宽 单位dp
  ///
  /// [viewHeight] 广告高  单位dp   宽高比应该为6.4:1
  ///
  /// [FlutterTencentAdBannerCallBack]  广告回调
  ///
  /// [downloadConfirm] 下载二次确认弹窗 默认false
  ///
  /// [isBidding] 是否开启竞价模式 默认false
  ///
  /// [bidding] 竞价成功、失败后调用 [FlutterTencentAdBiddingController] ,isBidding = true时必传
  ///
  static Widget bannerAdView(
      {required String androidId,
      required String iosId,
      required double viewWidth,
      required double viewHeight,
      bool? downloadConfirm,
      bool? isBidding,
      FlutterTencentAdBiddingController? bidding,
      FlutterTencentadBannerCallBack? callBack}) {
    return Container();
  }

  ///
  /// # 开屏广告
  ///
  /// [androidId] android广告ID
  ///
  /// [iosId] ios广告ID
  ///
  /// [fetchDelay] 设置开屏广告从请求到展示所花的最大时长（并不是指广告曝光时长），
  /// 取值范围为[1500, 5000]ms。如果需要使用默认值，可以调用上一个构造方法，
  /// 或者给 fetchDelay 设为0。
  ///
  /// [FlutterTencentAdSplashCallBack] 广告回调
  ///
  /// [downloadConfirm] 下载二次确认弹窗 默认false
  ///
  /// [isBidding] 是否开启竞价模式 默认false
  ///
  /// [bidding] 竞价成功、失败后调用 [FlutterTencentAdBiddingController] ,isBidding = true时必传
  ///
  static Widget splashAdView(
      {required String androidId,
      required String iosId,
      required int fetchDelay,
      bool? downloadConfirm,
      bool? isBidding,
      FlutterTencentAdBiddingController? bidding,
      FlutterTencentadSplashCallBack? callBack}) {
    return Container();
  }

  ///
  /// # 动态信息流/横幅/视频贴片广告
  ///
  /// [androidId] android广告ID
  ///
  /// [iosId] ios广告ID
  ///
  /// [viewWidth] 广告宽 单位dp
  ///
  /// [viewHeight] 广告高  单位dp
  ///
  /// [FlutterTencentAdExpressCallBack] 回调事件
  ///
  /// [downloadConfirm] 下载二次确认弹窗 默认false
  ///
  /// [isBidding] 是否开启竞价模式 默认false
  ///
  /// [bidding] 竞价成功、失败后调用 [FlutterTencentAdBiddingController] ,isBidding = true时必传
  ///
  static Widget expressAdView(
      {required String androidId,
      required String iosId,
      required int viewWidth,
      required int viewHeight,
      bool? downloadConfirm,
      bool? isBidding,
      FlutterTencentAdBiddingController? bidding,
      FlutterTencentadExpressCallBack? callBack}) {
    return Container();
  }

  ///进入APP下载列表页
  static Future<bool> enterAPPDownloadListPage() async {
    return true;
  }
}
