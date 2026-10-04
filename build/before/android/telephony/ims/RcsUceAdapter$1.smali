.class Landroid/telephony/ims/RcsUceAdapter$1;
.super Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/RcsUceAdapter;->requestCapabilities(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
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

    .line 620
    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCapabilitiesReceived$0(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V
    .registers 2

    .line 625
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onCapabilitiesReceived(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V
    .registers 2

    .line 634
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onComplete(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V
    .registers 5

    .line 644
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesReceived(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 625
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 627
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 628
    nop

    .line 629
    return-void

    .line 627
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 628
    throw p1
.end method

.method public blacklist onComplete(Landroid/telephony/ims/SipDetails;)V
    .registers 7

    .line 632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 634
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 636
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 637
    nop

    .line 638
    return-void

    .line 636
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 637
    throw p1
.end method

.method public blacklist onError(IJLandroid/telephony/ims/SipDetails;)V
    .registers 14

    .line 642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 644
    :try_start_4
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v3, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda0;

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 646
    invoke-static {v1, v2}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_18
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 647
    throw p1
.end method
