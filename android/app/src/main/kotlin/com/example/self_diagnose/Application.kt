package com.example.self_diagnose

import android.util.Log
import io.flutter.app.FlutterApplication

class Application : FlutterApplication(){
    override fun onCreate() {
        super.onCreate()

    }



    override fun onTerminate() {
        super.onTerminate()
        Log.d("onTerminate", "onTerminate")
    }
}