.class public Landroid/telephony/mbms/GroupCall;
.super Ljava/lang/Object;
.source "GroupCall.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/GroupCall$GroupCallStateChangeReason;,
        Landroid/telephony/mbms/GroupCall$GroupCallState;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MbmsGroupCall"

.field public static final whitelist REASON_BY_USER_REQUEST:I = 0x1

.field public static final whitelist REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final whitelist REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final whitelist REASON_OUT_OF_MEMORY:I = 0x4

.field public static final whitelist STATE_STALLED:I = 0x3

.field public static final whitelist STATE_STARTED:I = 0x2

.field public static final whitelist STATE_STOPPED:I = 0x1


# instance fields
.field private final blacklist mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

.field private final blacklist mParentSession:Landroid/telephony/MbmsGroupCallSession;

.field private blacklist mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

.field private final blacklist mSubscriptionId:I

.field private final blacklist mTmgi:J


# direct methods
.method public constructor blacklist <init>(ILandroid/telephony/mbms/vendor/IMbmsGroupCallService;Landroid/telephony/MbmsGroupCallSession;JLandroid/telephony/mbms/InternalGroupCallCallback;)V
    .registers 7

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    .line 128
    iput-object p3, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    .line 129
    iput-object p2, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 130
    iput-wide p4, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    .line 131
    iput-object p6, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    .line 132
    return-void
.end method

.method private blacklist sendErrorToApp(ILjava/lang/String;)V
    .registers 4

    .line 194
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallCallback;->onError(ILjava/lang/String;)V

    .line 195
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 173
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v0, :cond_2c

    .line 178
    :try_start_4
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    iget v1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iget-wide v2, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    invoke-interface {v0, v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->stopGroupCall(IJ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_15
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    .line 184
    :goto_d
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 185
    goto :goto_25

    .line 184
    :catchall_13
    move-exception v0

    goto :goto_26

    .line 179
    :catch_15
    move-exception v0

    .line 180
    :try_start_16
    const-string v0, "MbmsGroupCall"

    const-string v1, "Remote process died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 182
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/telephony/mbms/GroupCall;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_13

    goto :goto_d

    .line 186
    :goto_25
    return-void

    .line 184
    :goto_26
    iget-object v1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 185
    throw v0

    .line 174
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No group call service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCallback()Landroid/telephony/mbms/InternalGroupCallCallback;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    return-object v0
.end method

.method public whitelist getTmgi()J
    .registers 3

    .line 138
    iget-wide v0, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    return-wide v0
.end method

.method public whitelist updateGroupCall(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v0, :cond_2f

    .line 155
    :try_start_4
    iget-object v1, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    iget v2, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iget-wide v3, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_18
    .catchall {:try_start_4 .. :try_end_f} :catchall_15

    .line 161
    :goto_f
    iget-object p1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {p1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 162
    goto :goto_28

    .line 161
    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .line 156
    :catch_18
    move-exception v0

    .line 157
    :try_start_19
    const-string p1, "MbmsGroupCall"

    const-string p2, "Remote process died"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 159
    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Landroid/telephony/mbms/GroupCall;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_15

    goto :goto_f

    .line 163
    :goto_28
    return-void

    .line 161
    :goto_29
    iget-object p2, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {p2, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 162
    throw p1

    .line 151
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No group call service attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
