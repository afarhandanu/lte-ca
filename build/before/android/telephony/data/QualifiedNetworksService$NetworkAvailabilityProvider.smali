.class public abstract Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.super Ljava/lang/Object;
.source "QualifiedNetworksService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkAvailabilityProvider"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

.field private blacklist mQualifiedNetworkTypesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monReconnectQualifiedNetworkType(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onReconnectQualifiedNetworkType(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onUpdateQualifiedNetworkTypes(I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/data/QualifiedNetworksService;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    .line 121
    iput p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    .line 122
    return-void
.end method

.method static synthetic blacklist lambda$updateQualifiedNetworkTypes$0(Ljava/lang/Integer;)I
    .registers 1

    .line 184
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist onReconnectQualifiedNetworkType(II)V
    .registers 5

    .line 237
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_23

    .line 239
    :try_start_4
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onReconnectQualifiedNetworkType(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 242
    goto :goto_23

    .line 240
    :catch_a
    move-exception p1

    .line 241
    iget-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onReconnectQualifiedNetworkType. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 244
    :cond_23
    :goto_23
    return-void
.end method

.method private blacklist onRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V
    .registers 6

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    const-string/jumbo v1, "onRequestNetworkValidation"

    invoke-static {v0, v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mlog(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    iget v1, p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mNetworkCapability:I

    iget-object v2, p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-interface {v0, v1, v2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onNetworkValidationRequested(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_11} :catch_12

    .line 324
    goto :goto_41

    .line 320
    :catch_12
    move-exception v0

    .line 321
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onRequestNetworkValidation. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 322
    iget-object p1, p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    .line 323
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 325
    :goto_41
    return-void
.end method

.method private blacklist onUpdateQualifiedNetworkTypes(I[I)V
    .registers 5

    .line 225
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_28

    .line 228
    :try_start_9
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onQualifiedNetworkTypesChanged(I[I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 231
    goto :goto_28

    .line 229
    :catch_f
    move-exception p1

    .line 230
    iget-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onQualifiedNetworksChanged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 233
    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .registers 6

    .line 133
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 136
    iget-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz p1, :cond_3f

    .line 137
    const/4 p1, 0x0

    :goto_7
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_3f

    .line 139
    :try_start_f
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    .line 141
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 139
    invoke-interface {v0, v1, v2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onQualifiedNetworkTypesChanged(I[I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_22} :catch_23

    .line 144
    goto :goto_3c

    .line 142
    :catch_23
    move-exception v0

    .line 143
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onQualifiedNetworksChanged. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 137
    :goto_3c
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 147
    :cond_3f
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public final whitelist getSlotIndex()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    return v0
.end method

.method public final blacklist reconnectQualifiedNetworkType(II)V
    .registers 6

    .line 219
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/16 p2, 0x8

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 221
    return-void
.end method

.method public whitelist reportEmergencyDataNetworkPreferredTransportChanged(I)V
    .registers 5

    .line 267
    invoke-static {}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportEmergencyDataNetworkPreferredTransportChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public whitelist reportThrottleStatusChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportThrottleStatusChanged: statuses size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public whitelist requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 295
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v0, "resultCodeCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;-><init>(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 306
    iget-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {p2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object p2

    iget p3, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    new-instance v1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;-><init>(ILcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/data/QualifiedNetworksService-IA;)V

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 312
    return-void
.end method

.method public final whitelist updateQualifiedNetworkTypes(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 183
    nop

    .line 184
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    .line 185
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x4

    iget v2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method
