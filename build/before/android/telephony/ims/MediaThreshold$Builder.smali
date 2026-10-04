.class public final Landroid/telephony/ims/MediaThreshold$Builder;
.super Ljava/lang/Object;
.source "MediaThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/MediaThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRtpInactivityTimeMillis:[J

.field private blacklist mRtpJitter:[I

.field private blacklist mRtpPacketLossRate:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 213
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 214
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 222
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/MediaThreshold;
    .registers 6

    .line 326
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    goto :goto_a

    :cond_8
    new-array v0, v1, [I

    :goto_a
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 327
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    goto :goto_15

    :cond_13
    new-array v0, v1, [I

    :goto_15
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 328
    nop

    .line 329
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    goto :goto_21

    :cond_1f
    new-array v0, v1, [J

    :goto_21
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 330
    new-instance v0, Landroid/telephony/ims/MediaThreshold;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iget-object v2, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/MediaThreshold;-><init>([I[I[JLandroid/telephony/ims/MediaThreshold-IA;)V

    return-object v0
.end method

.method public blacklist setThresholdsRtpInactivityTimeMillis([J)Landroid/telephony/ims/MediaThreshold$Builder;
    .registers 9

    .line 298
    array-length v0, p1

    if-lez v0, :cond_47

    .line 299
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 300
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/telephony/ims/MediaThreshold;->isValidRtpInactivityTimeMillis(J)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 302
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 305
    :cond_23
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 306
    nop

    .line 307
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 308
    add-int/lit8 v1, v2, 0x1

    aput-wide v3, p1, v2

    .line 309
    move v2, v1

    goto :goto_2e

    .line 310
    :cond_44
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 311
    goto :goto_49

    .line 312
    :cond_47
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 314
    :goto_49
    return-object p0
.end method

.method public blacklist setThresholdsRtpJitterMillis([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .registers 8

    .line 268
    array-length v0, p1

    if-lez v0, :cond_47

    .line 269
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 270
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ims/MediaThreshold;->isValidJitterMillis(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 272
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 275
    :cond_23
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 276
    nop

    .line 277
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 278
    add-int/lit8 v3, v2, 0x1

    aput v1, p1, v2

    .line 279
    move v2, v3

    goto :goto_2e

    .line 280
    :cond_44
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 281
    goto :goto_49

    .line 282
    :cond_47
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 284
    :goto_49
    return-object p0
.end method

.method public blacklist setThresholdsRtpPacketLossRate([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .registers 8

    .line 238
    array-length v0, p1

    if-lez v0, :cond_47

    .line 239
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 240
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 241
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ims/MediaThreshold;->isValidRtpPacketLossRate(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 242
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 245
    :cond_23
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 246
    nop

    .line 247
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 248
    add-int/lit8 v3, v2, 0x1

    aput v1, p1, v2

    .line 249
    move v2, v3

    goto :goto_2e

    .line 250
    :cond_44
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 251
    goto :goto_49

    .line 252
    :cond_47
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 254
    :goto_49
    return-object p0
.end method
