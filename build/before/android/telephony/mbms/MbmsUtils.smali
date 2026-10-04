.class public Landroid/telephony/mbms/MbmsUtils;
.super Ljava/lang/Object;
.source "MbmsUtils.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsUtils"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 139
    const-string v0, "[^a-zA-Z0-9_]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p0}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 96
    if-nez p0, :cond_19

    .line 97
    const/high16 p0, 0x100000

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    goto :goto_22

    .line 100
    :cond_19
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    const/high16 p0, 0x20000

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 105
    :goto_22
    const/4 p1, 0x0

    const-string v0, "MbmsUtils"

    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_45

    .line 110
    :cond_2e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3b

    .line 111
    const-string p0, "More than one MBMS service found, cannot get unique service"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object p1

    .line 114
    :cond_3b
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0

    .line 106
    :cond_45
    :goto_45
    const-string p0, "No MBMS services found, cannot get service info"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object p1
.end method

.method public static greylist-max-o getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5

    .line 55
    nop

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    :cond_8
    goto :goto_27

    :sswitch_9
    const-string v0, "android.telephony.action.EmbmsGroupCall"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_28

    :sswitch_13
    const-string v0, "android.telephony.action.EmbmsDownload"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_28

    :sswitch_1d
    const-string v0, "android.telephony.action.EmbmsStreaming"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_28

    :goto_27
    const/4 p1, -0x1

    :goto_28
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_70

    move-object p1, v0

    goto :goto_3b

    .line 64
    :pswitch_2e
    const-string/jumbo p1, "mbms-group-call-service-override"

    goto :goto_3b

    .line 61
    :pswitch_32
    nop

    .line 62
    const-string/jumbo p1, "mbms-streaming-service-override"

    goto :goto_3b

    .line 58
    :pswitch_37
    nop

    .line 59
    const-string/jumbo p1, "mbms-download-service-override"

    .line 67
    :goto_3b
    if-nez p1, :cond_3e

    .line 68
    return-object v0

    .line 73
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_4c} :catch_60

    .line 77
    nop

    .line 78
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_52

    .line 79
    return-object v0

    .line 81
    :cond_52
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    if-nez p0, :cond_5b

    .line 83
    return-object v0

    .line 85
    :cond_5b
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 75
    :catch_60
    move-exception p0

    .line 76
    return-object v0

    :sswitch_data_62
    .sparse-switch
        -0x51f2f99b -> :sswitch_1d
        -0x184971db -> :sswitch_13
        0x68707b80 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_37
        :pswitch_32
        :pswitch_2e
    .end packed-switch
.end method

.method public static greylist-max-o isContainedIn(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    .line 45
    :catch_d
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve canonical paths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I
    .registers 5

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    nop

    .line 121
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 123
    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 124
    return v1

    .line 127
    :cond_e
    invoke-static {p1}, Landroid/telephony/mbms/MbmsUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 130
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .registers 3

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
