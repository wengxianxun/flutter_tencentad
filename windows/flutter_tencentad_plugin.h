#ifndef FLUTTER_PLUGIN_FLUTTER_TENCENTAD_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_TENCENTAD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_tencentad {

class FlutterTencentadPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterTencentadPlugin();

  virtual ~FlutterTencentadPlugin();

  // Disallow copy and assign.
  FlutterTencentadPlugin(const FlutterTencentadPlugin&) = delete;
  FlutterTencentadPlugin& operator=(const FlutterTencentadPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_tencentad

#endif  // FLUTTER_PLUGIN_FLUTTER_TENCENTAD_PLUGIN_H_
