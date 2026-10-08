.class public Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CapabilityCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist onChangeCapabilityConfigurationError(III)V
    .registers 5

    .line 207
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    if-nez v0, :cond_5

    .line 208
    return-void

    .line 211
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onChangeCapabilityConfigurationError(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 214
    goto :goto_14

    .line 212
    :catch_b
    move-exception p1

    .line 213
    const-string p1, "ImsFeature"

    const-string/jumbo p2, "onChangeCapabilityConfigurationError called on dead binder."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_14
    return-void
.end method
