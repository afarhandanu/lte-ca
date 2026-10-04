.class public Landroid/telephony/ims/stub/SipTransportImplBase;
.super Ljava/lang/Object;
.source "SipTransportImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SipTransportIB"


# instance fields
.field private blacklist mBinderExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbinderDiedInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;->binderDiedInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/SipTransportImplBase;->createSipDelegateInternal(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroySipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegateInternal(Landroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 66
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$2;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 66
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$2;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    .line 110
    if-eqz p1, :cond_1d

    .line 114
    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    .line 115
    return-void

    .line 111
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist binderDiedInternal(Landroid/os/IBinder;)V
    .registers 6

    .line 204
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SipTransportIB"

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    .line 206
    if-eqz p1, :cond_26

    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    .line 214
    :cond_25
    goto :goto_6

    .line 207
    :cond_26
    :goto_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Binder death detected for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", calling destroy and removing."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegate()Landroid/telephony/ims/stub/SipDelegate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V

    .line 212
    return-void

    .line 215
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder death detected for IBinder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", but couldn\'t find matching SipDelegate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method private blacklist createSipDelegateInternal(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 7

    .line 161
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p3, p4}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 162
    iget-object p3, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->linkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    .line 164
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    .line 165
    return-void
.end method

.method private blacklist destroySipDelegateInternal(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 6

    .line 168
    nop

    .line 169
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    .line 170
    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 171
    nop

    .line 172
    goto :goto_21

    .line 174
    :cond_1f
    goto :goto_7

    .line 169
    :cond_20
    const/4 v1, 0x0

    .line 176
    :goto_21
    if-eqz v1, :cond_33

    .line 177
    invoke-direct {p0, v1}, Landroid/telephony/ims/stub/SipTransportImplBase;->unlinkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    .line 178
    iget-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegate()Landroid/telephony/ims/stub/SipDelegate;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V

    goto :goto_4b

    .line 181
    :cond_33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroySipDelegateInternal, could not findSipDelegate corresponding to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SipTransportIB"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_4b
    return-void
.end method

.method private blacklist linkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 5

    .line 188
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 192
    goto :goto_24

    .line 189
    :catch_f
    move-exception v0

    .line 190
    const-string v0, "SipTransportIB"

    const-string v1, "linkDeathRecipient, remote process already died, cleaning up."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V

    .line 193
    :goto_24
    return-void
.end method

.method private blacklist unlinkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 4

    .line 197
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_e} :catch_f

    .line 200
    goto :goto_10

    .line 198
    :catch_f
    move-exception p1

    .line 201
    :goto_10
    return-void
.end method


# virtual methods
.method public whitelist createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .registers 5

    .line 139
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "createSipDelegate not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .registers 3

    .line 156
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "destroySipDelegate not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getBinder()Landroid/telephony/ims/aidl/ISipTransport;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    return-object v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 234
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 235
    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    .line 237
    :cond_6
    return-void
.end method
