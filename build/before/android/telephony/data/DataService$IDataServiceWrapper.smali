.class Landroid/telephony/data/DataService$IDataServiceWrapper;
.super Landroid/telephony/data/IDataService$Stub;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDataServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/data/DataService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 967
    iput-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0}, Landroid/telephony/data/IDataService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/telephony/data/DataService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$IDataServiceWrapper;-><init>(Landroid/telephony/data/DataService;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1060
    if-nez p3, :cond_a

    .line 1061
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string p2, "cancelHandover: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1062
    return-void

    .line 1064
    :cond_a
    new-instance v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    invoke-direct {v0, p2, p3}, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;-><init>(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 1065
    iget-object p2, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object p2

    const/16 p3, 0xd

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1066
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1067
    return-void
.end method

.method public greylist-max-o createDataServiceProvider(I)V
    .registers 5

    .line 970
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 971
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 972
    return-void
.end method

.method public greylist-max-o deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    .registers 7

    .line 996
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/data/DataService$DeactivateDataCallRequest;-><init>(IILandroid/telephony/data/IDataServiceCallback;)V

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p1, p3, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 998
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 999
    return-void
.end method

.method public blacklist notifyImsDataNetwork(IIIIILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 14

    .line 1133
    if-nez p6, :cond_b

    .line 1134
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "notifyImsDataNetwork: resultCodeCallback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1137
    :cond_b
    new-instance v0, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;

    iget-object v1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandlerExecutor(Landroid/telephony/data/DataService;)Ljava/util/concurrent/Executor;

    move-result-object v5

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/data/DataService$NotifyImsDataNetworkRequest;-><init>(IIIILjava/util/concurrent/Executor;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1140
    iget-object p2, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object p2

    const/16 p3, 0x14

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1141
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1142
    return-void
.end method

.method public blacklist notifyUserDataEnabled(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6

    .line 1105
    if-nez p3, :cond_b

    .line 1106
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "notifyUserDataEnabled: resultCodeCallback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1107
    return-void

    .line 1109
    :cond_b
    new-instance v0, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;

    iget-object v1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandlerExecutor(Landroid/telephony/data/DataService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;-><init>(ZLjava/util/concurrent/Executor;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1111
    iget-object p2, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object p2

    const/16 p3, 0x12

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1112
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1113
    return-void
.end method

.method public blacklist notifyUserDataRoamingEnabled(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6

    .line 1118
    if-nez p3, :cond_b

    .line 1119
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "notifyUserDataEnabled: resultCodeCallback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1120
    return-void

    .line 1122
    :cond_b
    new-instance v0, Landroid/telephony/data/DataService$NotifyUserDataRoamingEnabledRequest;

    iget-object v1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandlerExecutor(Landroid/telephony/data/DataService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Landroid/telephony/data/DataService$NotifyUserDataRoamingEnabledRequest;-><init>(ZLjava/util/concurrent/Executor;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1125
    iget-object p2, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object p2

    const/16 p3, 0x13

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1126
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1127
    return-void
.end method

.method public greylist-max-o registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1028
    if-nez p2, :cond_b

    .line 1029
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "registerForDataCallListChanged: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1030
    return-void

    .line 1032
    :cond_b
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1033
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1034
    return-void
.end method

.method public blacklist registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1071
    if-nez p2, :cond_b

    .line 1072
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "registerForUnthrottleApn: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1073
    return-void

    .line 1075
    :cond_b
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1077
    return-void
.end method

.method public greylist-max-o removeDataServiceProvider(I)V
    .registers 5

    .line 976
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 977
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 978
    return-void
.end method

.method public blacklist requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1018
    if-nez p2, :cond_b

    .line 1019
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "requestDataCallList: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1020
    return-void

    .line 1022
    :cond_b
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1023
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1024
    return-void
.end method

.method public blacklist requestNetworkValidation(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6

    .line 1092
    if-nez p3, :cond_b

    .line 1093
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "requestNetworkValidation: resultCodeCallback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1094
    return-void

    .line 1096
    :cond_b
    new-instance v0, Landroid/telephony/data/DataService$ValidationRequest;

    iget-object v1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandlerExecutor(Landroid/telephony/data/DataService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Landroid/telephony/data/DataService$ValidationRequest;-><init>(ILjava/util/concurrent/Executor;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1098
    iget-object p2, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object p2

    const/16 p3, 0x11

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1099
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1100
    return-void
.end method

.method public greylist-max-o setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/IDataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$SetDataProfileRequest;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/data/DataService$SetDataProfileRequest;-><init>(Ljava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    const/4 p2, 0x7

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p1, p3, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1013
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1014
    return-void
.end method

.method public greylist-max-o setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 7

    .line 1004
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;-><init>(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p1, p3, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1006
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1007
    return-void
.end method

.method public blacklist setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 26

    .line 986
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/DataService$SetupDataCallRequest;

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Landroid/telephony/data/DataService$SetupDataCallRequest;-><init>(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    const/4 p2, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v2, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 990
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 991
    return-void
.end method

.method public blacklist startHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1048
    if-nez p3, :cond_b

    .line 1049
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "startHandover: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1052
    :cond_b
    new-instance v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    invoke-direct {v0, p2, p3}, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;-><init>(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 1053
    iget-object p2, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object p2

    const/16 p3, 0xc

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1056
    return-void
.end method

.method public greylist-max-o unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1038
    if-nez p2, :cond_b

    .line 1039
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "unregisterForDataCallListChanged: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1040
    return-void

    .line 1042
    :cond_b
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1043
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1044
    return-void
.end method

.method public blacklist unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 6

    .line 1081
    if-nez p2, :cond_b

    .line 1082
    iget-object p1, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    const-string/jumbo p2, "uregisterForUnthrottleApn: callback is null"

    invoke-static {p1, p2}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 1083
    return-void

    .line 1085
    :cond_b
    iget-object v0, p0, Landroid/telephony/data/DataService$IDataServiceWrapper;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1086
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1087
    return-void
.end method
