package com.slepayakurica.app

import android.app.Application

import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
  override fun onCreate() {
    super.onCreate()
    MapKitFactory.setApiKey("6c8801e7-18fc-4835-b7bd-f60e7b42ce84") // Your generated API key
  }
}