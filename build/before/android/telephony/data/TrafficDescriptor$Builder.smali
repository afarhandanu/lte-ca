.class public final Landroid/telephony/data/TrafficDescriptor$Builder;
.super Ljava/lang/Object;
.source "TrafficDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/TrafficDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDnn:Ljava/lang/String;

.field private blacklist mOsAppId:[B


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mDnn:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mOsAppId:[B

    .line 334
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/TrafficDescriptor;
    .registers 4

    .line 367
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mDnn:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mOsAppId:[B

    if-eqz v0, :cond_9

    goto :goto_11

    .line 368
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DNN and OS App ID are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_11
    :goto_11
    new-instance v0, Landroid/telephony/data/TrafficDescriptor;

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mDnn:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mOsAppId:[B

    invoke-direct {v0, v1, v2}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public whitelist setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;
    .registers 2

    .line 343
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mDnn:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public whitelist setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;
    .registers 2

    .line 354
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor$Builder;->mOsAppId:[B

    .line 355
    return-object p0
.end method
