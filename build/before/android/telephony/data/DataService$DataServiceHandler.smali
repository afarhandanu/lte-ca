.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
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

    .line 725
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 726
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 727
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 732
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 733
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 735
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_266

    goto/16 :goto_265

    .line 899
    :pswitch_17
    if-nez v2, :cond_1b

    goto/16 :goto_265

    .line 900
    :cond_1b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->dataServiceNotifyImsDataNetwork()Z

    move-result v0

    if-eqz v0, :cond_265

    .line 901
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;

    .line 903
    iget v3, p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;->accessNetwork:I

    iget v4, p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;->dataNetworkState:I

    iget v5, p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;->physicalTransportType:I

    iget v6, p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;->physicalNetworkSlotIndex:I

    iget-object v7, p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 910
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 909
    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v8

    .line 903
    invoke-virtual/range {v2 .. v8}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyImsDataNetwork(IIIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto/16 :goto_265

    .line 887
    :pswitch_42
    if-nez v2, :cond_46

    goto/16 :goto_265

    .line 888
    :cond_46
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->dataServiceUserDataToggleNotify()Z

    move-result v0

    if-eqz v0, :cond_265

    .line 889
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$NotifyUserDataRoamingEnabledRequest;

    .line 891
    iget-boolean v0, p1, Landroid/telephony/data/DataService$NotifyUserDataRoamingEnabledRequest;->enabled:Z

    iget-object v1, p1, Landroid/telephony/data/DataService$NotifyUserDataRoamingEnabledRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroid/telephony/data/DataService$NotifyUserDataRoamingEnabledRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 895
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 894
    invoke-static {v3}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    .line 891
    invoke-virtual {v2, v0, v1, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyUserDataRoamingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 896
    goto/16 :goto_265

    .line 875
    :pswitch_67
    if-nez v2, :cond_6b

    goto/16 :goto_265

    .line 876
    :cond_6b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->dataServiceUserDataToggleNotify()Z

    move-result v0

    if-eqz v0, :cond_265

    .line 877
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;

    .line 879
    iget-boolean v0, p1, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;->enabled:Z

    iget-object v1, p1, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 883
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 882
    invoke-static {v3}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    .line 879
    invoke-virtual {v2, v0, v1, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyUserDataEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 884
    goto/16 :goto_265

    .line 866
    :pswitch_8c
    if-nez v2, :cond_90

    goto/16 :goto_265

    .line 867
    :cond_90
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$ValidationRequest;

    .line 868
    iget v0, p1, Landroid/telephony/data/DataService$ValidationRequest;->cid:I

    iget-object v1, p1, Landroid/telephony/data/DataService$ValidationRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroid/telephony/data/DataService$ValidationRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {v3}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    .line 868
    invoke-virtual {v2, v0, v1, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 873
    goto/16 :goto_265

    .line 850
    :pswitch_ab
    if-nez v2, :cond_af

    goto/16 :goto_265

    .line 851
    :cond_af
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    .line 854
    :try_start_b3
    iget-object v0, p1, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_bf

    .line 855
    iget-object v0, p1, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 856
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_c6

    .line 858
    :cond_bf
    iget-object v0, p1, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 859
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_c6} :catch_c8

    .line 863
    :goto_c6
    goto/16 :goto_265

    .line 861
    :catch_c8
    move-exception v0

    move-object p1, v0

    .line 862
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onApnUnthrottled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 864
    goto/16 :goto_265

    .line 845
    :pswitch_e4
    if-nez v2, :cond_e8

    goto/16 :goto_265

    .line 846
    :cond_e8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IDataServiceCallback;

    .line 847
    invoke-static {v2, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 848
    goto/16 :goto_265

    .line 841
    :pswitch_f1
    if-nez v2, :cond_f5

    goto/16 :goto_265

    .line 842
    :cond_f5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v2, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 843
    goto/16 :goto_265

    .line 834
    :pswitch_fe
    if-nez v2, :cond_102

    goto/16 :goto_265

    .line 835
    :cond_102
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 836
    iget v0, p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 837
    iget-object v1, p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_114

    .line 838
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_115

    :cond_114
    nop

    .line 836
    :goto_115
    invoke-virtual {v2, v0, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 839
    goto/16 :goto_265

    .line 827
    :pswitch_11a
    if-nez v2, :cond_11e

    goto/16 :goto_265

    .line 828
    :cond_11e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 829
    iget v0, p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 830
    iget-object v1, p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_130

    .line 831
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_131

    :cond_130
    nop

    .line 829
    :goto_131
    invoke-virtual {v2, v0, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 832
    goto/16 :goto_265

    .line 817
    :pswitch_136
    if-nez v2, :cond_13a

    goto/16 :goto_265

    .line 818
    :cond_13a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 821
    :try_start_13e
    iget-object v0, p1, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_145} :catch_147

    .line 824
    goto/16 :goto_265

    .line 822
    :catch_147
    move-exception v0

    move-object p1, v0

    .line 823
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onDataCallListChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 825
    goto/16 :goto_265

    .line 812
    :pswitch_163
    if-nez v2, :cond_167

    goto/16 :goto_265

    .line 813
    :cond_167
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IDataServiceCallback;

    .line 814
    invoke-static {v2, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 815
    goto/16 :goto_265

    .line 808
    :pswitch_170
    if-nez v2, :cond_174

    goto/16 :goto_265

    .line 809
    :cond_174
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v2, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 810
    goto/16 :goto_265

    .line 802
    :pswitch_17d
    if-nez v2, :cond_181

    goto/16 :goto_265

    .line 804
    :cond_181
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v2, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    .line 806
    goto/16 :goto_265

    .line 792
    :pswitch_18f
    if-nez v2, :cond_193

    goto/16 :goto_265

    .line 793
    :cond_193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 795
    iget-object v0, p1, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v1, p1, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 797
    iget-object v4, p1, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_1a7

    .line 798
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1a8

    .line 799
    :cond_1a7
    nop

    .line 795
    :goto_1a8
    invoke-virtual {v2, v0, v1, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 800
    goto/16 :goto_265

    .line 782
    :pswitch_1ad
    if-nez v2, :cond_1b1

    goto/16 :goto_265

    .line 783
    :cond_1b1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 785
    iget-object v0, p1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v1, p1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 787
    iget-object v4, p1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_1c5

    .line 788
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1c6

    .line 789
    :cond_1c5
    nop

    .line 785
    :goto_1c6
    invoke-virtual {v2, v0, v1, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 790
    goto/16 :goto_265

    .line 772
    :pswitch_1cb
    if-nez v2, :cond_1cf

    goto/16 :goto_265

    .line 773
    :cond_1cf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 775
    iget v0, p1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v1, p1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 777
    iget-object v4, p1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_1e3

    .line 778
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1e4

    .line 779
    :cond_1e3
    nop

    .line 775
    :goto_1e4
    invoke-virtual {v2, v0, v1, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    .line 780
    goto/16 :goto_265

    .line 758
    :pswitch_1e9
    if-nez v2, :cond_1ed

    goto/16 :goto_265

    .line 759
    :cond_1ed
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 760
    move-object v0, v3

    iget v3, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v4, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v5, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v6, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v7, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v8, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iget v9, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    iget-object v10, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v11, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-boolean v12, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    .line 766
    iget-object v1, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_213

    .line 767
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object v13, v0

    goto :goto_214

    .line 768
    :cond_213
    move-object v13, v0

    .line 760
    :goto_214
    invoke-virtual/range {v2 .. v13}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 770
    goto :goto_265

    .line 749
    :pswitch_218
    const/4 p1, 0x0

    :goto_219
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_239

    .line 750
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 751
    if-eqz v0, :cond_236

    .line 752
    invoke-virtual {v0}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 749
    :cond_236
    add-int/lit8 p1, p1, 0x1

    goto :goto_219

    .line 755
    :cond_239
    iget-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 756
    goto :goto_265

    .line 743
    :pswitch_243
    if-eqz v2, :cond_265

    .line 744
    invoke-virtual {v2}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 745
    iget-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_265

    .line 737
    :pswitch_252
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object p1

    .line 738
    if-eqz p1, :cond_265

    .line 739
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 914
    :cond_265
    :goto_265
    return-void

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_252
        :pswitch_243
        :pswitch_218
        :pswitch_1e9
        :pswitch_1cb
        :pswitch_1ad
        :pswitch_18f
        :pswitch_17d
        :pswitch_170
        :pswitch_163
        :pswitch_136
        :pswitch_11a
        :pswitch_fe
        :pswitch_f1
        :pswitch_e4
        :pswitch_ab
        :pswitch_8c
        :pswitch_67
        :pswitch_42
        :pswitch_17
    .end packed-switch
.end method
