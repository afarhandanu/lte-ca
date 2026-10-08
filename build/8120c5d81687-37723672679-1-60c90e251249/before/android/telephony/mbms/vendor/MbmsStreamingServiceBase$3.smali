.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
.super Landroid/telephony/mbms/StreamingServiceCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V
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

    .line 174
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/StreamingServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .registers 4

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 213
    goto :goto_10

    .line 211
    :catch_6
    move-exception p1

    .line 212
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 214
    :goto_10
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 4

    .line 178
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 182
    :try_start_3
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onError(ILjava/lang/String;)V

    .line 185
    goto :goto_1c

    .line 183
    :catch_9
    move-exception p1

    goto :goto_13

    .line 179
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Middleware cannot send an unknown error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_9

    .line 184
    :goto_13
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 186
    :goto_1c
    return-void
.end method

.method public whitelist onMediaDescriptionUpdated()V
    .registers 4

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IStreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 204
    goto :goto_10

    .line 202
    :catch_6
    move-exception v0

    .line 203
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 205
    :goto_10
    return-void
.end method

.method public whitelist onStreamMethodUpdated(I)V
    .registers 4

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 222
    goto :goto_10

    .line 220
    :catch_6
    move-exception p1

    .line 221
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 223
    :goto_10
    return-void
.end method

.method public whitelist onStreamStateUpdated(II)V
    .registers 4

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 195
    goto :goto_10

    .line 193
    :catch_6
    move-exception p1

    .line 194
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 196
    :goto_10
    return-void
.end method
