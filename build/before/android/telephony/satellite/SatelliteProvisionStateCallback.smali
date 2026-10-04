.class public interface abstract Landroid/telephony/satellite/SatelliteProvisionStateCallback;
.super Ljava/lang/Object;
.source "SatelliteProvisionStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onSatelliteProvisionStateChanged(Z)V
.end method

.method public whitelist onSatelliteSubscriptionProvisionStateChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;)V"
        }
    .end annotation

    .line 53
    return-void
.end method
