.class public interface abstract Landroid/telephony/satellite/SatelliteModemStateCallback;
.super Ljava/lang/Object;
.source "SatelliteModemStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public blacklist onEmergencyModeChanged(Z)V
    .registers 2

    .line 41
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .registers 2

    .line 50
    return-void
.end method

.method public abstract whitelist onSatelliteModemStateChanged(I)V
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .registers 2

    .line 58
    return-void
.end method
