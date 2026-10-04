.class public Landroid/telephony/ims/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;,
        Landroid/telephony/ims/ImsCallSession$Listener;,
        Landroid/telephony/ims/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private greylist-max-o mClosed:Z

.field private blacklist mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field private greylist-max-o mListener:Landroid/telephony/ims/ImsCallSession$Listener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 5

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    .line 537
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 538
    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    .line 541
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 542
    new-instance v1, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession-IA;)V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    .line 544
    const/4 v0, 0x1

    if-eqz p1, :cond_40

    .line 546
    :try_start_1e
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_3f

    .line 547
    :catch_24
    move-exception p1

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImsCallSession"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 551
    :goto_3f
    goto :goto_42

    .line 553
    :cond_40
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 555
    :goto_42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 558
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 559
    invoke-virtual {p0, p2, p3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 560
    return-void
.end method


# virtual methods
.method public greylist-max-o accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    .line 863
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 864
    return-void

    .line 868
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 870
    goto :goto_c

    .line 869
    :catch_b
    move-exception p1

    .line 871
    :goto_c
    return-void
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .registers 5

    .line 1248
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1249
    return-void

    .line 1253
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsCallSession;->callSessionNotifyAnbr(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1256
    goto :goto_24

    .line 1254
    :catch_b
    move-exception p1

    .line 1255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callSessionNotifyAnbr"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsCallSession"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :goto_24
    return-void
.end method

.method public greylist-max-o close()V
    .registers 2

    .line 573
    monitor-enter p0

    .line 574
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_7

    .line 575
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    return-void

    .line 579
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 582
    goto :goto_11

    .line 581
    :catch_10
    move-exception v0

    .line 583
    :goto_11
    :try_start_11
    monitor-exit p0

    .line 584
    return-void

    .line 583
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public greylist-max-o deflect(Ljava/lang/String;)V
    .registers 3

    .line 879
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 880
    return-void

    .line 884
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 886
    goto :goto_c

    .line 885
    :catch_b
    move-exception p1

    .line 887
    :goto_c
    return-void
.end method

.method public greylist-max-o extendToConference([Ljava/lang/String;)V
    .registers 3

    .line 1035
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1036
    return-void

    .line 1040
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1042
    goto :goto_c

    .line 1041
    :catch_b
    move-exception p1

    .line 1043
    :goto_c
    return-void
.end method

.method public greylist-max-o getCallId()Ljava/lang/String;
    .registers 3

    .line 593
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 594
    return-object v1

    .line 597
    :cond_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 598
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    return-object v0

    .line 601
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    .line 602
    :catch_16
    move-exception v0

    .line 603
    return-object v1
.end method

.method public greylist-max-o getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 627
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 628
    return-object v1

    .line 632
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 633
    :catch_d
    move-exception v0

    .line 634
    return-object v1
.end method

.method public final blacklist getIImsCallSessionListenerProxy()Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
    .registers 2

    .line 566
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    return-object v0
.end method

.method public greylist-max-o getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 644
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 645
    return-object v1

    .line 649
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 650
    :catch_d
    move-exception v0

    .line 651
    return-object v1
.end method

.method public greylist-max-o getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 695
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 696
    return-object v1

    .line 700
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p1

    .line 701
    :catch_d
    move-exception p1

    .line 702
    return-object v1
.end method

.method public greylist-max-o getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 661
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 662
    return-object v1

    .line 666
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 667
    :catch_d
    move-exception v0

    .line 668
    return-object v1
.end method

.method public greylist-max-o getSession()Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    .line 754
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public greylist-max-o getState()I
    .registers 3

    .line 713
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 714
    return v1

    .line 718
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 719
    :catch_d
    move-exception v0

    .line 720
    return v1
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 678
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 679
    return-object v1

    .line 683
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 684
    :catch_d
    move-exception v0

    .line 685
    return-object v1
.end method

.method public greylist-max-o hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    .line 964
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 965
    return-void

    .line 969
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 971
    goto :goto_c

    .line 970
    :catch_b
    move-exception p1

    .line 972
    :goto_c
    return-void
.end method

.method public greylist-max-o inviteParticipants([Ljava/lang/String;)V
    .registers 3

    .line 1053
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1054
    return-void

    .line 1058
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1060
    goto :goto_c

    .line 1059
    :catch_b
    move-exception p1

    .line 1061
    :goto_c
    return-void
.end method

.method public greylist-max-o isAlive()Z
    .registers 3

    .line 731
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 732
    return v1

    .line 735
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v0

    .line 736
    packed-switch v0, :pswitch_data_10

    .line 746
    return v1

    .line 744
    :pswitch_e
    const/4 v0, 0x1

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public greylist-max-o isInCall()Z
    .registers 3

    .line 763
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 764
    return v1

    .line 768
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 769
    :catch_d
    move-exception v0

    .line 770
    return v1
.end method

.method public greylist-max-o isMultiparty()Z
    .registers 3

    .line 1154
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1155
    return v1

    .line 1159
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1160
    :catch_d
    move-exception v0

    .line 1161
    return v1
.end method

.method public greylist-max-o merge()V
    .registers 2

    .line 999
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1000
    return-void

    .line 1004
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1006
    goto :goto_c

    .line 1005
    :catch_b
    move-exception v0

    .line 1007
    :goto_c
    return-void
.end method

.method public greylist-max-o reject(I)V
    .registers 3

    .line 896
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 897
    return-void

    .line 901
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 903
    goto :goto_c

    .line 902
    :catch_b
    move-exception p1

    .line 904
    :goto_c
    return-void
.end method

.method public greylist-max-o removeParticipants([Ljava/lang/String;)V
    .registers 3

    .line 1071
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1072
    return-void

    .line 1076
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1078
    goto :goto_c

    .line 1077
    :catch_b
    move-exception p1

    .line 1079
    :goto_c
    return-void
.end method

.method public greylist-max-o resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    .line 982
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 983
    return-void

    .line 987
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 989
    goto :goto_c

    .line 988
    :catch_b
    move-exception p1

    .line 990
    :goto_c
    return-void
.end method

.method public greylist-max-o sendDtmf(CLandroid/os/Message;)V
    .registers 4

    .line 1090
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1091
    return-void

    .line 1095
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1097
    goto :goto_c

    .line 1096
    :catch_b
    move-exception p1

    .line 1098
    :goto_c
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1227
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1228
    return-void

    .line 1232
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->sendRtpHeaderExtensions(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    .line 1235
    goto :goto_11

    .line 1234
    :catch_10
    move-exception p1

    .line 1236
    :goto_11
    return-void
.end method

.method public greylist-max-o sendRttMessage(Ljava/lang/String;)V
    .registers 3

    .line 1171
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1172
    return-void

    .line 1176
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1178
    goto :goto_c

    .line 1177
    :catch_b
    move-exception p1

    .line 1179
    :goto_c
    return-void
.end method

.method public greylist-max-o sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 1187
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1188
    return-void

    .line 1192
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1194
    goto :goto_c

    .line 1193
    :catch_b
    move-exception p1

    .line 1195
    :goto_c
    return-void
.end method

.method public greylist-max-o sendRttModifyResponse(Z)V
    .registers 3

    .line 1203
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1204
    return-void

    .line 1208
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1210
    goto :goto_c

    .line 1209
    :catch_b
    move-exception p1

    .line 1211
    :goto_c
    return-void
.end method

.method public greylist-max-o sendUssd(Ljava/lang/String;)V
    .registers 3

    .line 1138
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1139
    return-void

    .line 1143
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1145
    goto :goto_c

    .line 1144
    :catch_b
    move-exception p1

    .line 1146
    :goto_c
    return-void
.end method

.method public blacklist setCallId(Ljava/lang/String;)V
    .registers 2

    .line 616
    if-eqz p1, :cond_4

    .line 617
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    .line 619
    :cond_4
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 783
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    .line 784
    if-eqz p2, :cond_6

    .line 785
    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 787
    :cond_6
    return-void
.end method

.method public greylist-max-o setMute(Z)V
    .registers 3

    .line 795
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 796
    return-void

    .line 800
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 802
    goto :goto_c

    .line 801
    :catch_b
    move-exception p1

    .line 803
    :goto_c
    return-void
.end method

.method public greylist-max-o start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 820
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 821
    return-void

    .line 825
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 827
    goto :goto_c

    .line 826
    :catch_b
    move-exception p1

    .line 828
    :goto_c
    return-void
.end method

.method public greylist-max-o start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 845
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 846
    return-void

    .line 850
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 852
    goto :goto_c

    .line 851
    :catch_b
    move-exception p1

    .line 853
    :goto_c
    return-void
.end method

.method public greylist-max-o startDtmf(C)V
    .registers 3

    .line 1108
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1109
    return-void

    .line 1113
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1115
    goto :goto_c

    .line 1114
    :catch_b
    move-exception p1

    .line 1116
    :goto_c
    return-void
.end method

.method public greylist-max-o stopDtmf()V
    .registers 2

    .line 1122
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1123
    return-void

    .line 1127
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1129
    goto :goto_c

    .line 1128
    :catch_b
    move-exception v0

    .line 1130
    :goto_c
    return-void
.end method

.method public greylist-max-o terminate(I)V
    .registers 3

    .line 947
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 948
    return-void

    .line 952
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 954
    goto :goto_c

    .line 953
    :catch_b
    move-exception p1

    .line 955
    :goto_c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1783
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1785
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    const-string v1, "[UNINITIALIZED]"

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist transfer(Landroid/telephony/ims/ImsCallSession;)V
    .registers 3

    .line 929
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 930
    return-void

    .line 934
    :cond_5
    if-eqz p1, :cond_13

    .line 935
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    .line 937
    :catch_11
    move-exception p1

    goto :goto_14

    .line 938
    :cond_13
    :goto_13
    nop

    .line 939
    :goto_14
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 4

    .line 913
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 914
    return-void

    .line 918
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->transfer(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 920
    goto :goto_c

    .line 919
    :catch_b
    move-exception p1

    .line 921
    :goto_c
    return-void
.end method

.method public greylist-max-o update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    .line 1017
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1018
    return-void

    .line 1022
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1024
    goto :goto_c

    .line 1023
    :catch_b
    move-exception p1

    .line 1025
    :goto_c
    return-void
.end method
