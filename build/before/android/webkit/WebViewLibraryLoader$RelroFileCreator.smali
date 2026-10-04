.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 9

    .line 63
    const-string v0, "failed to create relro file"

    const-string v1, "error notifying update service"

    .line 64
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v2

    .line 66
    const/4 v3, 0x0

    :try_start_d
    array-length v4, p0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_cd

    aget-object v4, p0, v3

    if-eqz v4, :cond_cd

    const/4 v4, 0x1

    aget-object v5, p0, v4

    if-nez v5, :cond_1c

    goto/16 :goto_cd

    .line 70
    :cond_1c
    aget-object v5, p0, v3

    .line 71
    aget-object p0, p0, v4

    .line 72
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RelroFileCreator (64bit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetsAddressSpaceReserved()Z

    move-result v4

    if-nez v4, :cond_86

    .line 75
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object p0

    const-string v2, "can\'t create relro file; address space not reserved"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_114

    .line 90
    :try_start_5d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_72

    .line 93
    :cond_6b
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_72} :catch_73

    .line 97
    :goto_72
    goto :goto_7b

    .line 95
    :catch_73
    move-exception p0

    .line 96
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_7b
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 76
    return-void

    .line 78
    :cond_86
    :try_start_86
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v4

    .line 82
    nop

    .line 83
    if-eqz v2, :cond_96

    const-string v2, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_98

    .line 84
    :cond_96
    const-string v2, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 85
    :goto_98
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 82
    invoke-static {p0, v2, v4}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result p0
    :try_end_a0
    .catchall {:try_start_86 .. :try_end_a0} :catchall_114

    .line 86
    nop

    .line 90
    :try_start_a1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_b6

    .line 93
    :cond_af
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b6} :catch_b7

    .line 97
    :goto_b6
    goto :goto_bf

    .line 95
    :catch_b7
    move-exception v2

    .line 96
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_bf
    if-nez p0, :cond_c8

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_c8
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 103
    nop

    .line 104
    return-void

    .line 67
    :cond_cd
    :goto_cd
    :try_start_cd
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid RelroFileCreator args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_cd .. :try_end_eb} :catchall_114

    .line 90
    :try_start_eb
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result p0

    if-eqz p0, :cond_f9

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_100

    .line 93
    :cond_f9
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_100} :catch_101

    .line 97
    :goto_100
    goto :goto_109

    .line 95
    :catch_101
    move-exception p0

    .line 96
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_109
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 68
    return-void

    .line 89
    :catchall_114
    move-exception p0

    .line 90
    :try_start_115
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v2

    if-eqz v2, :cond_123

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_12a

    .line 93
    :cond_123
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_12a} :catch_12b

    .line 97
    :goto_12a
    goto :goto_133

    .line 95
    :catch_12b
    move-exception v2

    .line 96
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_133
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 103
    throw p0
.end method
