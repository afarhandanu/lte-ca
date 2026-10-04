.class public abstract Landroid/telephony/satellite/stub/ISatellite$Stub;
.super Landroid/os/Binder;
.source "ISatellite.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatellite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatellite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortSendingSatelliteDatagrams:I = 0x14

.field static final blacklist TRANSACTION_enableTerrestrialNetworkScanWhileSatelliteModeIsOn:I = 0x3

.field static final blacklist TRANSACTION_pollPendingSatelliteDatagrams:I = 0xa

.field static final blacklist TRANSACTION_requestIsSatelliteEnabled:I = 0x5

.field static final blacklist TRANSACTION_requestIsSatelliteEnabledForCarrier:I = 0x10

.field static final blacklist TRANSACTION_requestIsSatelliteSupported:I = 0x6

.field static final blacklist TRANSACTION_requestSatelliteCapabilities:I = 0x7

.field static final blacklist TRANSACTION_requestSatelliteEnabled:I = 0x4

.field static final blacklist TRANSACTION_requestSatelliteListeningEnabled:I = 0x2

.field static final blacklist TRANSACTION_requestSatelliteModemState:I = 0xc

.field static final blacklist TRANSACTION_requestSignalStrength:I = 0x11

.field static final blacklist TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0xd

.field static final blacklist TRANSACTION_sendSatelliteDatagram:I = 0xb

.field static final blacklist TRANSACTION_setSatelliteEnabledForCarrier:I = 0xf

.field static final blacklist TRANSACTION_setSatelliteListener:I = 0x1

.field static final blacklist TRANSACTION_setSatellitePlmn:I = 0xe

.field static final blacklist TRANSACTION_startSendingNtnSignalStrength:I = 0x12

.field static final blacklist TRANSACTION_startSendingSatellitePointingInfo:I = 0x8

.field static final blacklist TRANSACTION_stopSendingNtnSignalStrength:I = 0x13

.field static final blacklist TRANSACTION_stopSendingSatellitePointingInfo:I = 0x9

.field static final blacklist TRANSACTION_updateSatelliteSubscription:I = 0x15

.field static final blacklist TRANSACTION_updateSystemSelectionChannels:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 462
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 463
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatellite$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatellite;
    .registers 3

    .line 471
    if-nez p0, :cond_4

    .line 472
    const/4 p0, 0x0

    return-object p0

    .line 474
    :cond_4
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatellite;

    if-eqz v1, :cond_13

    .line 476
    check-cast v0, Landroid/telephony/satellite/stub/ISatellite;

    return-object v0

    .line 478
    :cond_13
    new-instance v0, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 487
    packed-switch p0, :pswitch_data_5c

    .line 579
    const/4 p0, 0x0

    return-object p0

    .line 575
    :pswitch_5
    const-string/jumbo p0, "updateSystemSelectionChannels"

    return-object p0

    .line 571
    :pswitch_9
    const-string/jumbo p0, "updateSatelliteSubscription"

    return-object p0

    .line 567
    :pswitch_d
    const-string p0, "abortSendingSatelliteDatagrams"

    return-object p0

    .line 563
    :pswitch_10
    const-string/jumbo p0, "stopSendingNtnSignalStrength"

    return-object p0

    .line 559
    :pswitch_14
    const-string/jumbo p0, "startSendingNtnSignalStrength"

    return-object p0

    .line 555
    :pswitch_18
    const-string/jumbo p0, "requestSignalStrength"

    return-object p0

    .line 551
    :pswitch_1c
    const-string/jumbo p0, "requestIsSatelliteEnabledForCarrier"

    return-object p0

    .line 547
    :pswitch_20
    const-string/jumbo p0, "setSatelliteEnabledForCarrier"

    return-object p0

    .line 543
    :pswitch_24
    const-string/jumbo p0, "setSatellitePlmn"

    return-object p0

    .line 539
    :pswitch_28
    const-string/jumbo p0, "requestTimeForNextSatelliteVisibility"

    return-object p0

    .line 535
    :pswitch_2c
    const-string/jumbo p0, "requestSatelliteModemState"

    return-object p0

    .line 531
    :pswitch_30
    const-string/jumbo p0, "sendSatelliteDatagram"

    return-object p0

    .line 527
    :pswitch_34
    const-string/jumbo p0, "pollPendingSatelliteDatagrams"

    return-object p0

    .line 523
    :pswitch_38
    const-string/jumbo p0, "stopSendingSatellitePointingInfo"

    return-object p0

    .line 519
    :pswitch_3c
    const-string/jumbo p0, "startSendingSatellitePointingInfo"

    return-object p0

    .line 515
    :pswitch_40
    const-string/jumbo p0, "requestSatelliteCapabilities"

    return-object p0

    .line 511
    :pswitch_44
    const-string/jumbo p0, "requestIsSatelliteSupported"

    return-object p0

    .line 507
    :pswitch_48
    const-string/jumbo p0, "requestIsSatelliteEnabled"

    return-object p0

    .line 503
    :pswitch_4c
    const-string/jumbo p0, "requestSatelliteEnabled"

    return-object p0

    .line 499
    :pswitch_50
    const-string p0, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    return-object p0

    .line 495
    :pswitch_53
    const-string/jumbo p0, "requestSatelliteListeningEnabled"

    return-object p0

    .line 491
    :pswitch_57
    const-string/jumbo p0, "setSatelliteListener"

    return-object p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 482
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1520
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 586
    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 590
    nop

    .line 591
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 592
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 595
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    return v1

    .line 598
    :cond_17
    packed-switch p1, :pswitch_data_1f4

    .line 820
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 811
    :pswitch_1f
    sget-object p1, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    .line 816
    goto/16 :goto_1f3

    .line 801
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V

    .line 806
    goto/16 :goto_1f3

    .line 793
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    .line 796
    goto/16 :goto_1f3

    .line 785
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    .line 788
    goto/16 :goto_1f3

    .line 777
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    .line 780
    goto/16 :goto_1f3

    .line 767
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;

    move-result-object p3

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V

    .line 772
    goto/16 :goto_1f3

    .line 755
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object p4

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    .line 762
    goto/16 :goto_1f3

    .line 743
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p4

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V

    .line 750
    goto/16 :goto_1f3

    .line 729
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v0

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    .line 738
    goto/16 :goto_1f3

    .line 719
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    .line 724
    goto/16 :goto_1f3

    .line 709
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    .line 714
    goto/16 :goto_1f3

    .line 697
    :pswitch_111
    sget-object p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p4

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V

    .line 704
    goto/16 :goto_1f3

    .line 689
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    .line 692
    goto/16 :goto_1f3

    .line 681
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    .line 684
    goto/16 :goto_1f3

    .line 673
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    .line 676
    goto/16 :goto_1f3

    .line 663
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    move-result-object p3

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V

    .line 668
    goto/16 :goto_1f3

    .line 653
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object p3

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    .line 658
    goto :goto_1f3

    .line 643
    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object p3

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    .line 648
    goto :goto_1f3

    .line 633
    :pswitch_1a3
    sget-object p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V

    .line 638
    goto :goto_1f3

    .line 623
    :pswitch_1ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    .line 628
    goto :goto_1f3

    .line 611
    :pswitch_1cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p4

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V

    .line 618
    goto :goto_1f3

    .line 603
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteListener;

    move-result-object p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    .line 606
    nop

    .line 823
    :goto_1f3
    return v1

    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_1e4
        :pswitch_1cd
        :pswitch_1ba
        :pswitch_1a3
        :pswitch_18c
        :pswitch_175
        :pswitch_15d
        :pswitch_14d
        :pswitch_13d
        :pswitch_12d
        :pswitch_111
        :pswitch_f9
        :pswitch_e1
        :pswitch_c5
        :pswitch_ad
        :pswitch_91
        :pswitch_79
        :pswitch_69
        :pswitch_59
        :pswitch_49
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
