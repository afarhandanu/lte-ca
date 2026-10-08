.class Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;
.super Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationBinder"
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$1b-U8x2yDiE8D4rm2pdrLakGneQ(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregisteredWithDetails$5(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8KXGybkGz3YFtHk2xL0OkvWQABA(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$F05J2ZPu6rbEezuIxtH39FiBAi4(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LAAnsj69naFLMRB0nkqTZoadjNw(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onSubscriberAssociatedUriChanged$7([Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Og0tELKQsvXOv85YzQ8YgLE1TOo(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregisteredWithDetails$4(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aTpciiEcKWx7cjuT4vKgXBBe4Bs(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregisteredWithTime$3(Landroid/telephony/ims/ImsReasonInfo;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d8X8D63xz4UnIzeGH3qCPzeL43U(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dNSGd-k0bV_rmsW3KlADFs9v8jI(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onTechnologyChangeFailed$6(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 3

    .line 213
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;-><init>()V

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mBundle:Landroid/os/Bundle;

    .line 214
    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 215
    return-void
.end method

.method private synthetic blacklist lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 5

    .line 249
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeregisteredWithDetails$4(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 5

    .line 281
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeregisteredWithDetails$5(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 4

    .line 283
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeregisteredWithTime$3(Landroid/telephony/ims/ImsReasonInfo;III)V
    .registers 6

    .line 265
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;III)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3

    .line 223
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3

    .line 235
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSubscriberAssociatedUriChanged$7([Landroid/net/Uri;)V
    .registers 3

    .line 307
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTechnologyChangeFailed$6(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    .line 295
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 296
    invoke-static {p1}, Landroid/telephony/ims/RegistrationManager;->getAccessType(I)I

    move-result p1

    .line 295
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 314
    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 315
    return-void
.end method


# virtual methods
.method public blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8

    .line 245
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 247
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 249
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 252
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 253
    throw p1
.end method

.method public blacklist onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 9

    .line 277
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 279
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 283
    iget-object p2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p4}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_22

    .line 285
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    :catchall_22
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 286
    throw p1
.end method

.method public blacklist onDeregisteredWithTime(Landroid/telephony/ims/ImsReasonInfo;III)V
    .registers 14

    .line 261
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 263
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 265
    :try_start_9
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda7;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;III)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1d

    .line 268
    invoke-static {v1, v2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    return-void

    .line 268
    :catchall_1d
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 269
    throw p1
.end method

.method public blacklist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6

    .line 219
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 223
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 225
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 226
    throw p1
.end method

.method public blacklist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6

    .line 231
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 233
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 235
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 237
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 238
    throw p1
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 6

    .line 303
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 305
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 307
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 309
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 310
    nop

    .line 311
    return-void

    .line 309
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 310
    throw p1
.end method

.method public blacklist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    .line 291
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 293
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 295
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 298
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 299
    throw p1
.end method
