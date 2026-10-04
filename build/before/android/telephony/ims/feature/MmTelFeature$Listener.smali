.class public Landroid/telephony/ims/feature/MmTelFeature$Listener;
.super Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 634
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAudioModeIsVoipChanged(I)V
    .registers 2

    .line 684
    return-void
.end method

.method public blacklist onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 4

    .line 651
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 2

    .line 752
    return-void
.end method

.method public blacklist onModifyImsTrafficSession(II)V
    .registers 3

    .line 730
    return-void
.end method

.method public blacklist onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 663
    return-void
.end method

.method public blacklist onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 6

    .line 716
    return-void
.end method

.method public blacklist onStopImsTrafficSession(I)V
    .registers 2

    .line 741
    return-void
.end method

.method public blacklist onTriggerEpsFallback(I)V
    .registers 2

    .line 695
    return-void
.end method

.method public greylist-max-o onVoiceMessageCountUpdate(I)V
    .registers 2

    .line 673
    return-void
.end method
