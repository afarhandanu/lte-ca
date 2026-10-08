.class Landroid/telephony/satellite/SatelliteManager$15;
.super Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForIncomingDatagram(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteDatagramCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2144
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$callback:Landroid/telephony/satellite/SatelliteDatagramCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteDatagramReceived$0(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2162
    invoke-interface/range {p0 .. p5}, Landroid/telephony/satellite/SatelliteDatagramCallback;->onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteDatagramReceived$1(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V
    .registers 13

    .line 2161
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V
    .registers 13

    .line 2149
    new-instance v6, Landroid/telephony/satellite/SatelliteManager$15$1;

    invoke-direct {v6, p0, p5}, Landroid/telephony/satellite/SatelliteManager$15$1;-><init>(Landroid/telephony/satellite/SatelliteManager$15;Lcom/android/internal/telephony/IVoidConsumer;)V

    .line 2161
    iget-object p5, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$callback:Landroid/telephony/satellite/SatelliteDatagramCallback;

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda0;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2164
    return-void
.end method
