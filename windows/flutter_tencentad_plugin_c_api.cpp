#include "include/flutter_tencentad/flutter_tencentad_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_tencentad_plugin.h"

void FlutterTencentadPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_tencentad::FlutterTencentadPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
