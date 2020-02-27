package com.op.tymobile

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

import com.op.tymobile.RestartHelper

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.op.tymobile/restart"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                // Note: this method is invoked on the main thread.
                if (call.method == "appRestart")
                    RestartHelper.restart(applicationContext)
                // TODO
            }
    }
}
