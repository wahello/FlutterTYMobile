package com.op.tymobile

import android.content.Context
import android.hardware.SensorManager
import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.EventChannel
import io.flutter.plugins.GeneratedPluginRegistrant

import com.op.tymobile.RestartHelper
import com.op.tymobile.SensorListener

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.op.tymobile/restart"
    private val CHANNEL2 = "com.op.tymobile/sensorswitch"

    private lateinit var sensorListener: SensorListener

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                // Note: this method is invoked on the main thread.
                if (call.method == "appRestart")
                    RestartHelper.restart(applicationContext)
                // TODO
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL2)
            .setMethodCallHandler { call, result ->
                // Note: this method is invoked on the main thread.
                if (call.method == "enable") {
                    if (::sensorListener.isInitialized) {
                        sensorListener.registerIfActive()
                    } else {
                        sensorListener = SensorListener(getSystemService(Context.SENSOR_SERVICE) as SensorManager)
                        val channel = EventChannel(flutterEngine.dartExecutor.binaryMessenger, SensorListener.CHANNEL_NAME)
                        channel.setStreamHandler(sensorListener)
                    }
                } else if (call.method == "disable") {
                    if (::sensorListener.isInitialized) {
                        sensorListener.unregisterIfActive()
                    }
                }
            }
    }

    override fun onPause() {
        if (::sensorListener.isInitialized)
            sensorListener.unregisterIfActive()
        super.onPause()
    }
}
