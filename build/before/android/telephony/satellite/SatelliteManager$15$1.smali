.class Landroid/telephony/satellite/SatelliteManager$15$1;
.super Ljava/lang/Object;
.source "SatelliteManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager$15;->onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$internalAck:Lcom/android/internal/telephony/IVoidConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager$15;Lcom/android/internal/telephony/IVoidConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2149
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$15$1;->val$internalAck:Lcom/android/internal/telephony/IVoidConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2149
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SatelliteManager$15$1;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public blacklist accept(Ljava/lang/Void;)V
    .registers 4

    .line 2153
    :try_start_0
    iget-object p1, p0, Landroid/telephony/satellite/SatelliteManager$15$1;->val$internalAck:Lcom/android/internal/telephony/IVoidConsumer;

    invoke-interface {p1}, Lcom/android/internal/telephony/IVoidConsumer;->accept()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2157
    goto :goto_1e

    .line 2154
    :catch_6
    move-exception p1

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSatelliteDatagramReceived RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 2158
    :goto_1e
    return-void
.end method
