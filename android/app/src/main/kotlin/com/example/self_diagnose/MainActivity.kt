package com.example.self_diagnose

import io.flutter.embedding.android.FlutterActivity


class MainActivity : FlutterFragmentActivity() {
    private val FACE_DETECTION_CHANNEL = "com.polaris.face_detection"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)


    }

}