#ifndef FLUTTER_PLUGIN_VW_PLUGIN_H_
#define FLUTTER_PLUGIN_VW_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace vw {

class VwPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  VwPlugin();

  virtual ~VwPlugin();

  // Disallow copy and assign.
  VwPlugin(const VwPlugin&) = delete;
  VwPlugin& operator=(const VwPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace vw

#endif  // FLUTTER_PLUGIN_VW_PLUGIN_H_
