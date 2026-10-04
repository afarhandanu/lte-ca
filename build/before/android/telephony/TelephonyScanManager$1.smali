.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
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

    .line 122
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 2

    .line 140
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$1([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V

    .line 177
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$2(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    .line 188
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$3(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 3

    .line 199
    const-string v0, "TelephonyScanManager"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 125
    const-string/jumbo v0, "message cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_57

    .line 128
    iget-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {p1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 129
    nop

    :goto_14
    :try_start_14
    iget-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {p1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_49

    .line 130
    iget-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {p1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 134
    if-nez p1, :cond_2f

    goto :goto_46

    .line 135
    :cond_2f
    invoke-static {p1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 136
    invoke-static {p1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_54

    .line 137
    if-eqz v1, :cond_46

    if-nez p1, :cond_3c

    goto :goto_46

    .line 139
    :cond_3c
    :try_start_3c
    new-instance v3, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_44
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3c .. :try_end_44} :catch_45
    .catchall {:try_start_3c .. :try_end_44} :catchall_54

    .line 143
    goto :goto_46

    .line 141
    :catch_45
    move-exception p1

    .line 129
    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 146
    :cond_49
    :try_start_49
    iget-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {p1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_54

    throw p1

    .line 152
    :cond_57
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_5e
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 154
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_143

    .line 155
    if-nez v1, :cond_96

    .line 156
    const-string v0, "TelephonyScanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpceted message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as there is no NetworkScanInfo with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 161
    :cond_96
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v0

    .line 162
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 164
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_146

    .line 210
    const-string v0, "TelephonyScanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_142

    .line 198
    :pswitch_c3
    :try_start_c3
    new-instance v2, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d2} :catch_e2

    .line 203
    :try_start_d2
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 204
    monitor-exit v0

    .line 207
    goto :goto_142

    .line 204
    :catchall_df
    move-exception p1

    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_d2 .. :try_end_e1} :catchall_df

    :try_start_e1
    throw p1
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e2} :catch_e2

    .line 205
    :catch_e2
    move-exception p1

    .line 206
    const-string v0, "TelephonyScanManager"

    const-string v1, "Exception in networkscan callback onComplete"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    goto :goto_142

    .line 184
    :pswitch_eb
    :try_start_eb
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 185
    new-instance v3, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;-><init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fc} :catch_10c

    .line 190
    :try_start_fc
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    monitor-exit v0

    .line 194
    goto :goto_142

    .line 191
    :catchall_109
    move-exception p1

    monitor-exit v0
    :try_end_10b
    .catchall {:try_start_fc .. :try_end_10b} :catchall_109

    :try_start_10b
    throw p1
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10c} :catch_10c

    .line 192
    :catch_10c
    move-exception p1

    .line 193
    const-string v0, "TelephonyScanManager"

    const-string v1, "Exception in networkscan callback onError"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    goto :goto_142

    .line 168
    :pswitch_115
    :try_start_115
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 169
    const-string/jumbo v3, "scanResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 170
    array-length v3, p1

    new-array v3, v3, [Landroid/telephony/CellInfo;

    .line 171
    nop

    :goto_124
    array-length v4, p1

    if-ge v2, v4, :cond_130

    .line 172
    aget-object v4, p1, v2

    check-cast v4, Landroid/telephony/CellInfo;

    aput-object v4, v3, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_124

    .line 174
    :cond_130
    new-instance p1, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, v3, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda1;-><init>([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_138} :catch_139

    .line 180
    goto :goto_142

    .line 178
    :catch_139
    move-exception p1

    .line 179
    const-string v0, "TelephonyScanManager"

    const-string v1, "Exception in networkscan callback onResults"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    nop

    .line 213
    :goto_142
    return-void

    .line 154
    :catchall_143
    move-exception p1

    :try_start_144
    monitor-exit v0
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw p1

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_115
        :pswitch_eb
        :pswitch_c3
        :pswitch_115
    .end packed-switch
.end method
