package com.slepayakurica.app
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import io.appmetrica.analytics.AppMetricaConfig
import io.appmetrica.analytics.AppMetrica
import io.appmetrica.analytics.push.AppMetricaPush
import android.os.Bundle
import android.content.Intent
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
  var methodChannel: MethodChannel? = null
  private val CHANNEL = "appmetrica.push.notification"

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    val config = AppMetricaConfig.newConfigBuilder("0f36d6f0-0774-4cf2-ad27-20b0289ddcf1").build()
    // Initializing the AppMetrica SDK.
    AppMetrica.activate(this, config)
    if (!BuildConfig.DEBUG) {
      handlePayload(intent)
    } else {
      flutterEngine?.dartExecutor?.binaryMessenger?.let {
        MethodChannel(it, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "message") {
                result.success("")
            }
        }
      }
    }
  }

  override fun onNewIntent(intent: Intent) {
      super.onNewIntent(intent)
      handlePayload(intent)
  }

  private fun handlePayload(intent: Intent) {
    
      // Handle your payload.
      val payload = intent.getStringExtra(AppMetricaPush.EXTRA_PAYLOAD)

      flutterEngine?.dartExecutor?.binaryMessenger?.let {
            MethodChannel(it, CHANNEL).setMethodCallHandler { call, result ->
                if (call.method == "message") {
                    result.success(payload)
                }
            }
      }
  }
}