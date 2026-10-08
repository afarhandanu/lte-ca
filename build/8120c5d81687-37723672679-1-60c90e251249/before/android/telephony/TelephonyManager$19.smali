.class Landroid/telephony/TelephonyManager$19;
.super Landroid/telephony/IBootstrapAuthenticationCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->bootstrapAuthenticationRequest(ILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

.field final synthetic blacklist val$e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
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

    .line 18062
    iput-object p2, p0, Landroid/telephony/TelephonyManager$19;->val$e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    invoke-direct {p0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAuthenticationFailure$1(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;I)V
    .registers 2

    .line 18078
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onKeysAvailable$0(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V
    .registers 3

    .line 18068
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onKeysAvailable([BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationFailure(II)V
    .registers 7

    .line 18076
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 18078
    :try_start_4
    iget-object p1, p0, Landroid/telephony/TelephonyManager$19;->val$e:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    new-instance v3, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p2}, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;I)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 18080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18081
    nop

    .line 18082
    return-void

    .line 18080
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18081
    throw p1
.end method

.method public blacklist onKeysAvailable(I[BLjava/lang/String;)V
    .registers 8

    .line 18066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 18068
    :try_start_4
    iget-object p1, p0, Landroid/telephony/TelephonyManager$19;->val$e:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    new-instance v3, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p2, p3}, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 18070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18071
    nop

    .line 18072
    return-void

    .line 18070
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18071
    throw p1
.end method
