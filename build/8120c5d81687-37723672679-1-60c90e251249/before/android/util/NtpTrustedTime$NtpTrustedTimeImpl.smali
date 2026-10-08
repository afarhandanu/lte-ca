.class final Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
.super Landroid/util/NtpTrustedTime;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTrustedTimeImpl"
.end annotation


# instance fields
.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 635
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;-><init>()V

    .line 636
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    .line 637
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/util/NtpTrustedTime-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized blacklist getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    monitor-enter p0

    .line 709
    :try_start_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 710
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 712
    :cond_11
    nop

    .line 715
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 708
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static blacklist saturatedCast(J)I
    .registers 4

    .line 743
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 744
    const p0, 0x7fffffff

    return p0

    .line 746
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 747
    const/high16 p0, -0x80000000

    return p0

    .line 749
    :cond_15
    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist getDefaultNetwork()Landroid/net/Network;
    .registers 2

    .line 677
    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 678
    if-nez v0, :cond_8

    .line 679
    const/4 v0, 0x0

    return-object v0

    .line 681
    :cond_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
    .registers 9

    .line 643
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 647
    nop

    .line 648
    const-string/jumbo v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-static {v2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 652
    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 653
    goto :goto_3e

    .line 655
    :cond_1c
    nop

    .line 656
    const v2, 0x10700af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 658
    :try_start_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 659
    array-length v5, v2

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_39

    aget-object v7, v2, v6

    .line 660
    invoke-static {v7}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/net/URISyntaxException; {:try_start_24 .. :try_end_36} :catch_3c

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 662
    :cond_39
    nop

    .line 665
    move-object v2, v4

    goto :goto_3e

    .line 663
    :catch_3c
    move-exception v2

    .line 664
    move-object v2, v3

    .line 668
    :goto_3e
    nop

    .line 669
    const v4, 0x10e010e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 670
    const-string/jumbo v4, "ntp_timeout"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    .line 672
    if-nez v2, :cond_55

    goto :goto_5a

    :cond_55
    new-instance v3, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v3, v2, v0}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    :goto_5a
    return-object v3
.end method

.method public blacklist isNetworkConnected(Landroid/net/Network;)Z
    .registers 4

    .line 686
    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 687
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 688
    return v1

    .line 690
    :cond_8
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 701
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_17

    .line 705
    :cond_15
    const/4 p1, 0x1

    return p1

    .line 703
    :cond_17
    :goto_17
    return v1
.end method

.method public blacklist queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
    .registers 12

    .line 723
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 724
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 726
    const/16 p2, 0x7b

    goto :goto_17

    :cond_13
    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result p2

    .line 727
    :goto_17
    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result p3

    .line 728
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 729
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide p1

    const-wide/16 v1, 0x2

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v6

    .line 730
    invoke-virtual {v0}, Landroid/net/SntpClient;->getServerSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    .line 731
    new-instance v1, Landroid/util/NtpTrustedTime$TimeResult;

    .line 732
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    invoke-direct/range {v1 .. v7}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJILjava/net/InetSocketAddress;)V

    .line 731
    return-object v1

    .line 735
    :cond_42
    const/4 p1, 0x0

    return-object p1
.end method
