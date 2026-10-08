.class public Landroid/telephony/ims/ImsCallSession$Listener;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 2

    .line 514
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 300
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 310
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 290
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3

    .line 362
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .registers 2

    .line 507
    return-void
.end method

.method public greylist-max-o callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 405
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 419
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 173
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 183
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 192
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 114
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 124
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2

    .line 320
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 331
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V
    .registers 4

    .line 391
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2

    .line 240
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 250
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 232
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .registers 3

    .line 442
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    .line 134
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2

    .line 341
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 352
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 211
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 220
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 201
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 522
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    .line 480
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 2

    .line 473
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 459
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .registers 2

    .line 466
    return-void
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .registers 4

    .line 530
    return-void
.end method

.method public greylist-max-o callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 154
    return-void
.end method

.method public greylist-max-o callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 144
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3

    .line 451
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 164
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 495
    return-void
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2

    .line 487
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .registers 3

    .line 430
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 269
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 279
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 259
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .registers 4

    .line 373
    return-void
.end method
