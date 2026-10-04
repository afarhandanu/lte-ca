.class Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
.super Landroid/os/Handler;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualifiedNetworksServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 343
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 344
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    .line 346
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_f0

    goto/16 :goto_ef

    .line 407
    :pswitch_15
    if-nez v1, :cond_19

    goto/16 :goto_ef

    .line 408
    :cond_19
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monReconnectQualifiedNetworkType(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;II)V

    goto/16 :goto_ef

    .line 402
    :pswitch_28
    if-nez v1, :cond_2c

    goto/16 :goto_ef

    .line 403
    :cond_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;

    invoke-static {v1, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V

    .line 404
    goto/16 :goto_ef

    .line 373
    :pswitch_35
    if-eqz v1, :cond_ef

    .line 374
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 375
    invoke-virtual {v1, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportEmergencyDataNetworkPreferredTransportChanged(I)V

    .line 376
    goto/16 :goto_ef

    .line 366
    :pswitch_3e
    if-eqz v1, :cond_ef

    .line 367
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 368
    invoke-virtual {v1, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportThrottleStatusChanged(Ljava/util/List;)V

    .line 369
    goto/16 :goto_ef

    .line 397
    :pswitch_49
    if-nez v1, :cond_4d

    goto/16 :goto_ef

    .line 398
    :cond_4d
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v1, v0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V

    .line 399
    goto/16 :goto_ef

    .line 387
    :pswitch_58
    const/4 p1, 0x0

    :goto_59
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_79

    .line 388
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    .line 389
    if-eqz v0, :cond_76

    .line 390
    invoke-virtual {v0}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    .line 387
    :cond_76
    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    .line 393
    :cond_79
    iget-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 394
    goto :goto_ef

    .line 380
    :pswitch_83
    if-eqz v1, :cond_ef

    .line 381
    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    .line 382
    iget-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_ef

    .line 348
    :pswitch_92
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 349
    iget-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network availability provider for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already existed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 351
    return-void

    .line 354
    :cond_bd
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v1, v0}, Landroid/telephony/data/QualifiedNetworksService;->onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_d6

    .line 356
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 359
    invoke-static {v1, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    goto :goto_ef

    .line 361
    :cond_d6
    iget-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create network availability provider. slot index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 364
    nop

    .line 411
    :cond_ef
    :goto_ef
    return-void

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_92
        :pswitch_83
        :pswitch_58
        :pswitch_49
        :pswitch_3e
        :pswitch_35
        :pswitch_28
        :pswitch_15
    .end packed-switch
.end method
