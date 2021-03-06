# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#-libraryjars libs/BaiduLBS_Android.jar
#-libraryjars libs/codriver-sdk.jar
#-libraryjars libs/gson-2.2.4.jar
#-libraryjars libs/volley.jar
#-libraryjars libs/flyproxyservicelib.jar

-verbose

-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,LocalVariable*Table,*Annotation*,Synthetic,EnclosingMethod

-dontwarn android**

-keep class * extends android.app.Activity
-keep class * extends android.app.Application
-keep class * extends android.app.Service
-keep class * extends android.content.BroadcastReceiver
-keep class * extends android.content.ContentProvider
-keep class * extends android.app.backup.BackupAgentHelper
-keep class * extends android.preference.Preference
-keep class * extends android.os.Bundle

-keepclassmembers public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    void set*(...);
    *** get*();
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers enum ** {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-dontwarn com.google.android.support.v4.**  
-keep class com.google.android.support.v4.** { *; }
-keep interface com.google.android.support.v4.app.** { *; }
-keep public class * extends com.google.android.support.v4.**
-keep public class * extends com.google.android.support.v4.app.Fragment

-dontwarn android.support.v4.**  
-keep class android.support.v4.** { *; }
-keep interface android.support.v4.app.** { *; }
-keep public class * extends android.support.v4.**
-keep public class * extends android.support.v4.app.Fragment

-keep class com.baidu.android.**{*;}
-keep interface com.baidu.android.**{*;}
-dontwarn com.baidu.android.**

-keep class com.baidu.che.codriver.** { *; }
-keep class com.baidu.che.codriversdk.** { *; }

-keep class com.google.gson.** { *; }

-keep public class com.baidu.che.codriverlauncher.util.INoProguard
-keep interface com.baidu.che.codriverlauncher.util.INoProguard { *; }
-keep class * implements com.baidu.che.codriverlauncher.util.INoProguard { *; }
-keep interface * extends com.baidu.che.codriverlauncher.util.INoProguard { *; }
-keepclasseswithmembernames class * implements com.baidu.che.codriverlauncher.util.INoProguard {*;}

# Baidu Map
-keep class com.baidu.lbsapi.** { *; }
-keep class com.baidu.mapapi.** {*; }
-keep class com.baidu.location.** {*; }
-keep class com.baidu.platform.** {*; }
-keep class com.baidu.vi.** {*; }

-keep class com.baidu.** {*;}
-dontwarn com.baidu.**
-keep class vi.com.gdi.bgl.android.java.** {*;}
-dontwarn vi.com.gdi.bgl.android.java.**

#mtj
-keep class com.baidu.kirin.** { *; }
-keep class com.baidu.mobstat.** { *; }
-keep class com.baidu.bottom.** { *; }

# passport
-keep class com.baidu.sapi2.** { *; }
-keep interface com.baidu.sapi2.** { *; }
-dontwarn com.baidu.sapi2.**

# flyaudio
-keep class com.flyaudio.** {*;}
-dontwarn com.flyaudio.**