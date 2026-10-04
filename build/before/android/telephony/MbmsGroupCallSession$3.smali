.class Landroid/telephony/MbmsGroupCallSession$3;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsGroupCallSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsGroupCallSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsGroupCallSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 305
    const-string p1, "MbmsGroupCallSession"

    const-string v0, "bindAndInitialize: Remote service returned null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "Middleware service binding returned null"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 308
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmContext(Landroid/telephony/MbmsGroupCallSession;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 311
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 253
    const-string p1, "MbmsGroupCallSession"

    .line 254
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object p2

    .line 257
    const/16 v0, 0x67

    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v2}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v3}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsGroupCallSession;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_19} :catch_6c

    .line 273
    nop

    .line 274
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5f

    .line 280
    if-eqz p1, :cond_32

    .line 281
    iget-object p2, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p2}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object p2

    const-string v0, "Error returned during initialization"

    invoke-virtual {p2, p1, v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 283
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    return-void

    .line 287
    :cond_32
    :try_start_32
    invoke-interface {p2}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsGroupCallSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3f} :catch_4a

    .line 293
    nop

    .line 294
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 295
    return-void

    .line 288
    :catch_4a
    move-exception p1

    .line 289
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object p1

    const/4 p2, 0x3

    const-string v0, "Middleware lost during initialization"

    invoke-virtual {p1, p2, v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 291
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    return-void

    .line 276
    :cond_5f
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {p1}, Landroid/telephony/MbmsGroupCallSession;->close()V

    .line 277
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Middleware must not return an unknown error code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :catch_6c
    move-exception p2

    .line 267
    const-string v2, "Runtime exception during initialization"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object p1

    .line 270
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 268
    invoke-virtual {p1, v0, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 272
    return-void

    .line 259
    :catch_87
    move-exception p2

    .line 260
    const-string v2, "Service died before initialization"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 261
    invoke-virtual {p1, v0, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 264
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 299
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 300
    iget-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {p1}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 301
    return-void
.end method
