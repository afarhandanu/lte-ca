.class public Landroid/telephony/satellite/stub/SatelliteService;
.super Landroid/app/Service;
.source "SatelliteService.java"


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.satellite.SatelliteService"

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteService"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 58
    const-string v0, "android.telephony.satellite.SatelliteService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 59
    const-string p1, "SatelliteService"

    const-string v0, "SatelliteService bound"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance p1, Landroid/telephony/satellite/stub/SatelliteImplBase;

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, v0}, Landroid/telephony/satellite/stub/SatelliteImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Landroid/telephony/satellite/stub/SatelliteImplBase;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 62
    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method
