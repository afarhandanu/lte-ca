.class public abstract Landroid/telephony/TelephonyManager$UssdResponseCallback;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UssdResponseCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 11235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceiveUssdResponse(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    .line 11249
    return-void
.end method

.method public whitelist onReceiveUssdResponseFailed(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V
    .registers 4

    .line 11261
    return-void
.end method
