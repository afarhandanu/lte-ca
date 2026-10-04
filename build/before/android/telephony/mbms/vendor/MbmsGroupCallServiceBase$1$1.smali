.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;
.super Ljava/lang/Object;
.source "MbmsGroupCallServiceBase.java"

# interfaces
.implements Landroid/telephony/mbms/MbmsGroupCallSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 76
    goto :goto_12

    .line 74
    :catch_6
    move-exception p1

    .line 75
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object p1, p1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 77
    :goto_12
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 4

    .line 59
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 63
    :try_start_3
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 66
    goto :goto_1e

    .line 64
    :catch_9
    move-exception p1

    goto :goto_13

    .line 60
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Middleware cannot send an unknown error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_9

    .line 65
    :goto_13
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object p1, p1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 67
    :goto_1e
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .registers 4

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onMiddlewareReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    goto :goto_12

    .line 93
    :catch_6
    move-exception v0

    .line 94
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v0, v0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 96
    :goto_12
    return-void
.end method

.method public whitelist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .registers 4

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onServiceInterfaceAvailable(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    goto :goto_12

    .line 84
    :catch_6
    move-exception p1

    .line 85
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object p1, p1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 87
    :goto_12
    return-void
.end method
