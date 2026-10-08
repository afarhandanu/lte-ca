.class public abstract Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callQualityChanged:I = 0x29

.field static final blacklist TRANSACTION_callSessionConferenceExtendFailed:I = 0x14

.field static final blacklist TRANSACTION_callSessionConferenceExtendReceived:I = 0x15

.field static final blacklist TRANSACTION_callSessionConferenceExtended:I = 0x13

.field static final blacklist TRANSACTION_callSessionConferenceStateUpdated:I = 0x1a

.field static final blacklist TRANSACTION_callSessionDtmfReceived:I = 0x28

.field static final blacklist TRANSACTION_callSessionHandover:I = 0x1c

.field static final blacklist TRANSACTION_callSessionHandoverFailed:I = 0x1d

.field static final blacklist TRANSACTION_callSessionHeld:I = 0x7

.field static final blacklist TRANSACTION_callSessionHoldFailed:I = 0x8

.field static final blacklist TRANSACTION_callSessionHoldReceived:I = 0x9

.field static final blacklist TRANSACTION_callSessionInitiated:I = 0x4

.field static final blacklist TRANSACTION_callSessionInitiatedFailed:I = 0x5

.field static final blacklist TRANSACTION_callSessionInitiating:I = 0x1

.field static final blacklist TRANSACTION_callSessionInitiatingFailed:I = 0x2

.field static final blacklist TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x16

.field static final blacklist TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x17

.field static final blacklist TRANSACTION_callSessionMayHandover:I = 0x1e

.field static final blacklist TRANSACTION_callSessionMergeComplete:I = 0xe

.field static final blacklist TRANSACTION_callSessionMergeFailed:I = 0xf

.field static final blacklist TRANSACTION_callSessionMergeStarted:I = 0xd

.field static final blacklist TRANSACTION_callSessionMultipartyStateChanged:I = 0x20

.field static final blacklist TRANSACTION_callSessionProgressing:I = 0x3

.field static final blacklist TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x18

.field static final blacklist TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x19

.field static final blacklist TRANSACTION_callSessionResumeFailed:I = 0xb

.field static final blacklist TRANSACTION_callSessionResumeReceived:I = 0xc

.field static final blacklist TRANSACTION_callSessionResumed:I = 0xa

.field static final blacklist TRANSACTION_callSessionRtpHeaderExtensionsReceived:I = 0x2a

.field static final blacklist TRANSACTION_callSessionRttAudioIndicatorChanged:I = 0x25

.field static final blacklist TRANSACTION_callSessionRttMessageReceived:I = 0x24

.field static final blacklist TRANSACTION_callSessionRttModifyRequestReceived:I = 0x22

.field static final blacklist TRANSACTION_callSessionRttModifyResponseReceived:I = 0x23

.field static final blacklist TRANSACTION_callSessionSendAnbrQuery:I = 0x2b

.field static final blacklist TRANSACTION_callSessionSuppServiceReceived:I = 0x21

.field static final blacklist TRANSACTION_callSessionTerminated:I = 0x6

.field static final blacklist TRANSACTION_callSessionTransferFailed:I = 0x27

.field static final blacklist TRANSACTION_callSessionTransferred:I = 0x26

.field static final blacklist TRANSACTION_callSessionTtyModeReceived:I = 0x1f

.field static final blacklist TRANSACTION_callSessionUpdateFailed:I = 0x11

.field static final blacklist TRANSACTION_callSessionUpdateReceived:I = 0x12

.field static final blacklist TRANSACTION_callSessionUpdated:I = 0x10

.field static final blacklist TRANSACTION_callSessionUssdMessageReceived:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 224
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 3

    .line 232
    if-nez p0, :cond_4

    .line 233
    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_13

    .line 237
    check-cast v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v0

    .line 239
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 248
    packed-switch p0, :pswitch_data_86

    .line 424
    const/4 p0, 0x0

    return-object p0

    .line 420
    :pswitch_5
    const-string p0, "callSessionSendAnbrQuery"

    return-object p0

    .line 416
    :pswitch_8
    const-string p0, "callSessionRtpHeaderExtensionsReceived"

    return-object p0

    .line 412
    :pswitch_b
    const-string p0, "callQualityChanged"

    return-object p0

    .line 408
    :pswitch_e
    const-string p0, "callSessionDtmfReceived"

    return-object p0

    .line 404
    :pswitch_11
    const-string p0, "callSessionTransferFailed"

    return-object p0

    .line 400
    :pswitch_14
    const-string p0, "callSessionTransferred"

    return-object p0

    .line 396
    :pswitch_17
    const-string p0, "callSessionRttAudioIndicatorChanged"

    return-object p0

    .line 392
    :pswitch_1a
    const-string p0, "callSessionRttMessageReceived"

    return-object p0

    .line 388
    :pswitch_1d
    const-string p0, "callSessionRttModifyResponseReceived"

    return-object p0

    .line 384
    :pswitch_20
    const-string p0, "callSessionRttModifyRequestReceived"

    return-object p0

    .line 380
    :pswitch_23
    const-string p0, "callSessionSuppServiceReceived"

    return-object p0

    .line 376
    :pswitch_26
    const-string p0, "callSessionMultipartyStateChanged"

    return-object p0

    .line 372
    :pswitch_29
    const-string p0, "callSessionTtyModeReceived"

    return-object p0

    .line 368
    :pswitch_2c
    const-string p0, "callSessionMayHandover"

    return-object p0

    .line 364
    :pswitch_2f
    const-string p0, "callSessionHandoverFailed"

    return-object p0

    .line 360
    :pswitch_32
    const-string p0, "callSessionHandover"

    return-object p0

    .line 356
    :pswitch_35
    const-string p0, "callSessionUssdMessageReceived"

    return-object p0

    .line 352
    :pswitch_38
    const-string p0, "callSessionConferenceStateUpdated"

    return-object p0

    .line 348
    :pswitch_3b
    const-string p0, "callSessionRemoveParticipantsRequestFailed"

    return-object p0

    .line 344
    :pswitch_3e
    const-string p0, "callSessionRemoveParticipantsRequestDelivered"

    return-object p0

    .line 340
    :pswitch_41
    const-string p0, "callSessionInviteParticipantsRequestFailed"

    return-object p0

    .line 336
    :pswitch_44
    const-string p0, "callSessionInviteParticipantsRequestDelivered"

    return-object p0

    .line 332
    :pswitch_47
    const-string p0, "callSessionConferenceExtendReceived"

    return-object p0

    .line 328
    :pswitch_4a
    const-string p0, "callSessionConferenceExtendFailed"

    return-object p0

    .line 324
    :pswitch_4d
    const-string p0, "callSessionConferenceExtended"

    return-object p0

    .line 320
    :pswitch_50
    const-string p0, "callSessionUpdateReceived"

    return-object p0

    .line 316
    :pswitch_53
    const-string p0, "callSessionUpdateFailed"

    return-object p0

    .line 312
    :pswitch_56
    const-string p0, "callSessionUpdated"

    return-object p0

    .line 308
    :pswitch_59
    const-string p0, "callSessionMergeFailed"

    return-object p0

    .line 304
    :pswitch_5c
    const-string p0, "callSessionMergeComplete"

    return-object p0

    .line 300
    :pswitch_5f
    const-string p0, "callSessionMergeStarted"

    return-object p0

    .line 296
    :pswitch_62
    const-string p0, "callSessionResumeReceived"

    return-object p0

    .line 292
    :pswitch_65
    const-string p0, "callSessionResumeFailed"

    return-object p0

    .line 288
    :pswitch_68
    const-string p0, "callSessionResumed"

    return-object p0

    .line 284
    :pswitch_6b
    const-string p0, "callSessionHoldReceived"

    return-object p0

    .line 280
    :pswitch_6e
    const-string p0, "callSessionHoldFailed"

    return-object p0

    .line 276
    :pswitch_71
    const-string p0, "callSessionHeld"

    return-object p0

    .line 272
    :pswitch_74
    const-string p0, "callSessionTerminated"

    return-object p0

    .line 268
    :pswitch_77
    const-string p0, "callSessionInitiatedFailed"

    return-object p0

    .line 264
    :pswitch_7a
    const-string p0, "callSessionInitiated"

    return-object p0

    .line 260
    :pswitch_7d
    const-string p0, "callSessionProgressing"

    return-object p0

    .line 256
    :pswitch_80
    const-string p0, "callSessionInitiatingFailed"

    return-object p0

    .line 252
    :pswitch_83
    const-string p0, "callSessionInitiating"

    return-object p0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 243
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1457
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 431
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    nop

    .line 436
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 437
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 440
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    return v1

    .line 443
    :cond_17
    packed-switch p1, :pswitch_data_2be

    .line 804
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 793
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSendAnbrQuery(III)V

    .line 800
    goto/16 :goto_2bd

    .line 785
    :pswitch_33
    sget-object p1, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V

    .line 788
    goto/16 :goto_2bd

    .line 777
    :pswitch_41
    sget-object p1, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CallQuality;

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 780
    goto/16 :goto_2bd

    .line 769
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionDtmfReceived(C)V

    .line 772
    goto/16 :goto_2bd

    .line 761
    :pswitch_5e
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 764
    goto/16 :goto_2bd

    .line 755
    :pswitch_6e
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferred()V

    .line 756
    goto/16 :goto_2bd

    .line 748
    :pswitch_73
    sget-object p1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 751
    goto/16 :goto_2bd

    .line 740
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 743
    goto/16 :goto_2bd

    .line 732
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 735
    goto/16 :goto_2bd

    .line 724
    :pswitch_9b
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 727
    goto/16 :goto_2bd

    .line 716
    :pswitch_ab
    sget-object p1, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 719
    goto/16 :goto_2bd

    .line 708
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Z)V

    .line 711
    goto/16 :goto_2bd

    .line 700
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(I)V

    .line 703
    goto/16 :goto_2bd

    .line 690
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMayHandover(II)V

    .line 695
    goto/16 :goto_2bd

    .line 678
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 682
    sget-object p4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsReasonInfo;

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 685
    goto/16 :goto_2bd

    .line 666
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 670
    sget-object p4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsReasonInfo;

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 673
    goto/16 :goto_2bd

    .line 656
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 661
    goto/16 :goto_2bd

    .line 648
    :pswitch_123
    sget-object p1, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsConferenceState;

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 651
    goto/16 :goto_2bd

    .line 640
    :pswitch_133
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 643
    goto/16 :goto_2bd

    .line 634
    :pswitch_143
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered()V

    .line 635
    goto/16 :goto_2bd

    .line 627
    :pswitch_148
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 630
    goto/16 :goto_2bd

    .line 621
    :pswitch_158
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered()V

    .line 622
    goto/16 :goto_2bd

    .line 612
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 614
    sget-object p3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/ImsCallProfile;

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 617
    goto/16 :goto_2bd

    .line 604
    :pswitch_175
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 607
    goto/16 :goto_2bd

    .line 594
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 596
    sget-object p3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/ImsCallProfile;

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 599
    goto/16 :goto_2bd

    .line 586
    :pswitch_19d
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 589
    goto/16 :goto_2bd

    .line 578
    :pswitch_1ad
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 581
    goto/16 :goto_2bd

    .line 570
    :pswitch_1bd
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 573
    goto/16 :goto_2bd

    .line 562
    :pswitch_1cd
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 565
    goto/16 :goto_2bd

    .line 554
    :pswitch_1dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 557
    goto/16 :goto_2bd

    .line 544
    :pswitch_1ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 546
    sget-object p3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/ImsCallProfile;

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 549
    goto/16 :goto_2bd

    .line 536
    :pswitch_205
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 539
    goto/16 :goto_2bd

    .line 528
    :pswitch_215
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 531
    goto/16 :goto_2bd

    .line 520
    :pswitch_225
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 523
    goto/16 :goto_2bd

    .line 512
    :pswitch_235
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 515
    goto/16 :goto_2bd

    .line 504
    :pswitch_245
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 507
    goto :goto_2bd

    .line 496
    :pswitch_254
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 499
    goto :goto_2bd

    .line 488
    :pswitch_263
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 491
    goto :goto_2bd

    .line 480
    :pswitch_272
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 483
    goto :goto_2bd

    .line 472
    :pswitch_281
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 475
    goto :goto_2bd

    .line 464
    :pswitch_290
    sget-object p1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 467
    goto :goto_2bd

    .line 456
    :pswitch_29f
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 459
    goto :goto_2bd

    .line 448
    :pswitch_2ae
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    .line 451
    nop

    .line 807
    :goto_2bd
    return v1

    :pswitch_data_2be
    .packed-switch 0x1
        :pswitch_2ae
        :pswitch_29f
        :pswitch_290
        :pswitch_281
        :pswitch_272
        :pswitch_263
        :pswitch_254
        :pswitch_245
        :pswitch_235
        :pswitch_225
        :pswitch_215
        :pswitch_205
        :pswitch_1ed
        :pswitch_1dd
        :pswitch_1cd
        :pswitch_1bd
        :pswitch_1ad
        :pswitch_19d
        :pswitch_185
        :pswitch_175
        :pswitch_15d
        :pswitch_158
        :pswitch_148
        :pswitch_143
        :pswitch_133
        :pswitch_123
        :pswitch_113
        :pswitch_fb
        :pswitch_e3
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_ab
        :pswitch_9b
        :pswitch_8f
        :pswitch_83
        :pswitch_73
        :pswitch_6e
        :pswitch_5e
        :pswitch_51
        :pswitch_41
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
