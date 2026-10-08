.class public Landroid/telephony/data/DataServiceCallback;
.super Ljava/lang/Object;
.source "DataServiceCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataServiceCallback$ResultCode;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field public static final whitelist RESULT_ERROR_BUSY:I = 0x3

.field public static final whitelist RESULT_ERROR_ILLEGAL_STATE:I = 0x4

.field public static final whitelist RESULT_ERROR_INVALID_ARG:I = 0x2

.field public static final blacklist RESULT_ERROR_TEMPORARILY_UNAVAILABLE:I = 0x5

.field public static final whitelist RESULT_ERROR_UNSUPPORTED:I = 0x1

.field public static final whitelist RESULT_SUCCESS:I

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/telephony/data/IDataServiceCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Landroid/telephony/data/DataServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    .line 77
    return-void
.end method

.method public static blacklist resultCodeToString(I)Ljava/lang/String;
    .registers 3

    .line 245
    packed-switch p0, :pswitch_data_30

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_1d
    const-string p0, "RESULT_ERROR_TEMPORARILY_UNAVAILABLE"

    return-object p0

    .line 255
    :pswitch_20
    const-string p0, "RESULT_ERROR_ILLEGAL_STATE"

    return-object p0

    .line 253
    :pswitch_23
    const-string p0, "RESULT_ERROR_BUSY"

    return-object p0

    .line 251
    :pswitch_26
    const-string p0, "RESULT_ERROR_INVALID_ARG"

    return-object p0

    .line 249
    :pswitch_29
    const-string p0, "RESULT_ERROR_UNSUPPORTED"

    return-object p0

    .line 247
    :pswitch_2c
    const-string p0, "RESULT_SUCCESS"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist onApnUnthrottled(Ljava/lang/String;)V
    .registers 4

    .line 274
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1c

    .line 276
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onApnUnthrottled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1b

    .line 278
    :catch_12
    move-exception p1

    .line 279
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onApnUnthrottled: remote exception"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    :goto_1b
    goto :goto_24

    .line 282
    :cond_1c
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onApnUnthrottled: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_24
    return-void
.end method

.method public whitelist onDataCallListChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    .line 185
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataCallListChanged"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 187
    :catch_12
    move-exception p1

    .line 188
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onDataCallListChanged on the remote"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1a
    goto :goto_23

    .line 191
    :cond_1b
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDataCallListChanged: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_23
    return-void
.end method

.method public whitelist onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .registers 4

    .line 297
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1c

    .line 299
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataProfileUnthrottled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1b

    .line 301
    :catch_12
    move-exception p1

    .line 302
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataProfileUnthrottled: remote exception"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :goto_1b
    goto :goto_24

    .line 305
    :cond_1c
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDataProfileUnthrottled: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_24
    return-void
.end method

.method public whitelist onDeactivateDataCallComplete(I)V
    .registers 4

    .line 107
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    .line 109
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeactivateDataCallComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDeactivateDataCallComplete(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 111
    :catch_12
    move-exception p1

    .line 112
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onDeactivateDataCallComplete on the remote"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_1a
    goto :goto_23

    .line 115
    :cond_1b
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDeactivateDataCallComplete: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_23
    return-void
.end method

.method public blacklist onHandoverCancelled(I)V
    .registers 4

    .line 223
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    .line 225
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandoverCancelled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onHandoverCancelled(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 227
    :catch_12
    move-exception p1

    .line 228
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onHandoverCancelled on the remote"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_1a
    goto :goto_23

    .line 231
    :cond_1b
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onHandoverCancelled: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_23
    return-void
.end method

.method public blacklist onHandoverStarted(I)V
    .registers 4

    .line 203
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    .line 205
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandoverStarted"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onHandoverStarted(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 207
    :catch_12
    move-exception p1

    .line 208
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onHandoverStarted on the remote"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_1a
    goto :goto_23

    .line 211
    :cond_1b
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onHandoverStarted: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_23
    return-void
.end method

.method public whitelist onRequestDataCallListComplete(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_13

    .line 167
    :try_start_4
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    .line 168
    :catch_a
    move-exception p1

    .line 169
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string p2, "Failed to onRequestDataCallListComplete on the remote"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_12
    goto :goto_1b

    .line 172
    :cond_13
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRequestDataCallListComplete: callback is null!"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_1b
    return-void
.end method

.method public whitelist onSetDataProfileComplete(I)V
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_13

    .line 146
    :try_start_4
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetDataProfileComplete(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    .line 147
    :catch_a
    move-exception p1

    .line 148
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onSetDataProfileComplete on the remote"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_12
    goto :goto_1b

    .line 151
    :cond_13
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onSetDataProfileComplete: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1b
    return-void
.end method

.method public whitelist onSetInitialAttachApnComplete(I)V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_13

    .line 128
    :try_start_4
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetInitialAttachApnComplete(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    .line 129
    :catch_a
    move-exception p1

    .line 130
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onSetInitialAttachApnComplete on the remote"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_12
    goto :goto_1b

    .line 133
    :cond_13
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onSetInitialAttachApnComplete: callback is null!"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1b
    return-void
.end method

.method public whitelist onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .registers 5

    .line 88
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    .line 90
    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupDataCallComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 92
    :catch_12
    move-exception p1

    .line 93
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string p2, "Failed to onSetupDataCallComplete on the remote"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_1a
    goto :goto_23

    .line 96
    :cond_1b
    sget-object p1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSetupDataCallComplete: callback is null!"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_23
    return-void
.end method
