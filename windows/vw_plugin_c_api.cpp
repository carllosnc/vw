#include "include/vw/vw_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "vw_plugin.h"

void VwPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  vw::VwPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
