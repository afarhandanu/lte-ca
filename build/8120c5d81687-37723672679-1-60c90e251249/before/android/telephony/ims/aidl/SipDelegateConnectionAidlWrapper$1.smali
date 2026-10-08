.class Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;
.super Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;
.source "SipDelegateConnectionAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$8wxUhuh7qmqq8zz6xP3aZOLpP1w(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onCreated$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AVW0He8mJ5RY31S6EPlviBCAXtQ(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onFeatureTagStatusChanged$1(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P-GvZBw4Z60DndJGvwAsoJRJD14(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onDestroyed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_bwBIOG0FX4b3ZXM5IsGUAd7ch0(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onImsConfigurationChanged$2(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dVj7sxSs_u20MqZ5xrs41AAGuds(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onConfigurationChanged$3(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$3(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCreated$0()V
    .registers 3

    .line 63
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onCreated(Landroid/telephony/ims/SipDelegateConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDestroyed$4(I)V
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onDestroyed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureTagStatusChanged$1(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .registers 5

    .line 75
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImsConfigurationChanged$2(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 6

    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 97
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw p1
.end method

.method public blacklist onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 5

    .line 59
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$massociateSipDelegate(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Landroid/telephony/ims/aidl/ISipDelegate;)V

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 62
    :try_start_9
    iget-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v2, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1c

    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    nop

    .line 67
    return-void

    .line 65
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p1
.end method

.method public blacklist onDestroyed(I)V
    .registers 6

    .line 106
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$minvalidateSipDelegateBinder(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1c

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw p1
.end method

.method public blacklist onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 74
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw p1
.end method

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 6

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 86
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw p1
.end method
