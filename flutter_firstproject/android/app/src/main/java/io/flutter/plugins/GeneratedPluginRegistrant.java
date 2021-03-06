package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;

import io.flutter.embedding.engine.FlutterEngine;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    try {
      flutterEngine.getPlugins().add(new com.amazonaws.amplify.amplify_api.AmplifyApiPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin amplify_api, com.amazonaws.amplify.amplify_api.AmplifyApiPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.amazonaws.amplify.amplify_auth_cognito.AuthCognito());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin amplify_auth_cognito, com.amazonaws.amplify.amplify_auth_cognito.AuthCognito", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.amazonaws.amplify.amplify_core.AmplifyCorePlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin amplify_core, com.amazonaws.amplify.amplify_core.AmplifyCorePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.amazonaws.amplify.amplify_datastore.AmplifyDataStorePlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin amplify_datastore, com.amazonaws.amplify.amplify_datastore.AmplifyDataStorePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.amazonaws.amplify.Amplify());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin amplify_flutter, com.amazonaws.amplify.Amplify", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.amazonaws.amplify.amplify_storage_s3.AmplifyStorageS3Plugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin amplify_storage_s3, com.amazonaws.amplify.amplify_storage_s3.AmplifyStorageS3Plugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new vn.hunghd.flutter.plugins.imagecropper.ImageCropperPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin image_cropper, vn.hunghd.flutter.plugins.imagecropper.ImageCropperPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.imagepicker.ImagePickerPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin image_picker, io.flutter.plugins.imagepicker.ImagePickerPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.tekartik.sqflite.SqflitePlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin sqflite, com.tekartik.sqflite.SqflitePlugin", e);
    }
  }
}
