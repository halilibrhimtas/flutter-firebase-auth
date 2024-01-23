# Flutter Firebase Auth

-ADD FIREBASE-

flutter pub add firebase_core

FOR ANDROID:

keytool -list -v -keystore C:\Users\halil\.android\debug.keystore -alias androiddebugkey -storepass android -keypass android 

Certificate fingerprints:
         SHA1: 0B:95:F4:28:BD:52:EC:42:47:99:28:CC:B1:4F:C5:F7:97:1A:C4:7F
         SHA256: BF:9A:3E:F4:35:0C:7D:2A:04:CE:32:31:84:20:E3:50:B2:B0:02:77:2A:F7:C4:92:4D:6D:A2:80:B3:4A:10:1B

"google-services.json" config file add into android/app folder 

android/build.gradle:

    buildscript {
        dependencies {
        // ... other dependencies
        classpath 'com.google.gms:google-services:4.3.8'
        }
    }

android/app/build.gradle:

    apply plugin: 'com.google.gms.google-services'

FOR APPLE:

Apple Bundle Id, App nickname, App Store Id

"google-services.json" config file add into ios/Runner folder 

firebase login
dart pub global activate flutterfire_cli

"flutterfire configure" command run and "flutter-firebase" project select 

flutter pub add firebase_core

-Firebase Auth-

flutter pub add firebase_auth
flutter pub get

main.dart:

    MaterialApp(
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LoginPage();
          }
        },
      ),
    );

flutter pub add google_sign_in

