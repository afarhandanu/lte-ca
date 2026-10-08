.class public Landroid/view/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RoundedCorners;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

.field public static final blacklist ROUNDED_CORNER_POSITION_LENGTH:I = 0x4

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedRadii:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedRoundedCorners:Landroid/view/RoundedCorners;


# instance fields
.field public final blacklist mRoundedCorners:[Landroid/view/RoundedCorner;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 51
    new-instance v0, Landroid/view/RoundedCorners;

    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v2, Landroid/view/RoundedCorner;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v3, Landroid/view/RoundedCorner;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v4, Landroid/view/RoundedCorner;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/view/RoundedCorner;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/RoundedCorners;-><init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V

    sput-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    .line 596
    new-instance v0, Landroid/view/RoundedCorners$1;

    invoke-direct {v0}, Landroid/view/RoundedCorners$1;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V
    .registers 7

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/RoundedCorner;

    iput-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 83
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 84
    iget-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 85
    iget-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 p2, 0x2

    aput-object p3, p1, p2

    .line 86
    iget-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 p2, 0x3

    aput-object p4, p1, p2

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorners;)V
    .registers 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    iput-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 91
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 92
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    new-instance v3, Landroid/view/RoundedCorner;

    iget-object v4, p1, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v2, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 94
    :cond_1b
    return-void
.end method

.method public constructor blacklist <init>([Landroid/view/RoundedCorner;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 78
    return-void
.end method

.method private static blacklist createRoundedCorner(IIII)Landroid/view/RoundedCorner;
    .registers 5

    .line 520
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_5c

    .line 546
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :pswitch_1d
    new-instance p0, Landroid/view/RoundedCorner;

    .line 543
    if-lez p1, :cond_23

    move p2, p1

    goto :goto_24

    :cond_23
    move p2, v0

    .line 544
    :goto_24
    if-lez p1, :cond_28

    sub-int v0, p3, p1

    :cond_28
    const/4 p3, 0x3

    invoke-direct {p0, p3, p1, p2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 540
    return-object p0

    .line 534
    :pswitch_2d
    new-instance p0, Landroid/view/RoundedCorner;

    .line 537
    if-lez p1, :cond_33

    sub-int/2addr p2, p1

    goto :goto_34

    :cond_33
    move p2, v0

    .line 538
    :goto_34
    if-lez p1, :cond_38

    sub-int v0, p3, p1

    :cond_38
    const/4 p3, 0x2

    invoke-direct {p0, p3, p1, p2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 534
    return-object p0

    .line 528
    :pswitch_3d
    new-instance p0, Landroid/view/RoundedCorner;

    .line 531
    if-lez p1, :cond_43

    sub-int/2addr p2, p1

    goto :goto_44

    :cond_43
    move p2, v0

    .line 532
    :goto_44
    if-lez p1, :cond_47

    move v0, p1

    :cond_47
    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 528
    return-object p0

    .line 522
    :pswitch_4c
    new-instance p0, Landroid/view/RoundedCorner;

    .line 525
    if-lez p1, :cond_52

    move p2, p1

    goto :goto_53

    :cond_52
    move p2, v0

    .line 526
    :goto_53
    if-lez p1, :cond_57

    move p3, p1

    goto :goto_58

    :cond_57
    move p3, v0

    :goto_58
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 522
    return-object p0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_3d
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist fromRadii(Landroid/util/Pair;II)Landroid/view/RoundedCorners;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    .line 113
    invoke-static {p0, p1, p2, p1, p2}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    invoke-static {p1, p2, p3, p4}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result p1

    .line 125
    sget-object p2, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter p2

    .line 126
    :try_start_b
    sget-object v0, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    invoke-virtual {p0, v0}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget v0, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    if-ne v0, p3, :cond_25

    sget v0, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    if-ne v0, p4, :cond_25

    sget v0, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_25

    .line 129
    sget-object p0, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    monitor-exit p2

    return-object p0

    .line 131
    :cond_25
    monitor-exit p2
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_8e

    .line 133
    const/4 p2, 0x4

    new-array v0, p2, [Landroid/view/RoundedCorner;

    .line 134
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3d

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3e

    :cond_3d
    move v1, v2

    .line 135
    :goto_3e
    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_51

    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_52

    :cond_51
    move v3, v2

    .line 136
    :goto_52
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_64

    .line 137
    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 138
    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-double v3, v3

    add-double/2addr v3, v6

    double-to-int v3, v3

    .line 140
    :cond_64
    nop

    :goto_65
    if-ge v2, p2, :cond_77

    .line 141
    nop

    .line 143
    const/4 v4, 0x1

    if-gt v2, v4, :cond_6d

    move v4, v1

    goto :goto_6e

    :cond_6d
    move v4, v3

    .line 141
    :goto_6e
    invoke-static {v2, v4, p3, p4}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v4

    aput-object v4, v0, v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 148
    :cond_77
    new-instance p2, Landroid/view/RoundedCorners;

    invoke-direct {p2, v0}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    .line 149
    sget-object v0, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_7f
    sput p3, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    .line 151
    sput p4, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    .line 152
    sput-object p0, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    .line 153
    sput-object p2, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    .line 154
    sput p1, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    .line 155
    monitor-exit v0

    .line 156
    return-object p2

    .line 155
    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_7f .. :try_end_8d} :catchall_8b

    throw p0

    .line 131
    :catchall_8e
    move-exception p0

    :try_start_8f
    monitor-exit p2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public static blacklist fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;
    .registers 6

    .line 103
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBuiltInDisplayIsRound(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 4

    .line 334
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 335
    const v0, 0x1070031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 338
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    goto :goto_20

    .line 340
    :cond_19
    const p1, 0x1110200

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 342
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    return p0
.end method

.method private static blacklist getRotatedIndex(II)I
    .registers 2

    .line 552
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    rem-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static blacklist getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 4

    .line 242
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 243
    const v0, 0x10700c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 246
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 247
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    goto :goto_20

    .line 249
    :cond_19
    const p1, 0x1050358

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 251
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return p0
.end method

.method public static blacklist getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 4

    .line 192
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 193
    const v0, 0x10700c6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_20

    .line 198
    :cond_19
    const p1, 0x1050356

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 200
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    if-nez p1, :cond_37

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 205
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p0, 0x2

    .line 207
    :cond_37
    return p1
.end method

.method public static blacklist getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 4

    .line 265
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 266
    const v0, 0x10700c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 270
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    goto :goto_20

    .line 272
    :cond_19
    const p1, 0x1050357

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 274
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    return p0
.end method

.method public static blacklist getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 4

    .line 312
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 313
    const v0, 0x10700c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 316
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 317
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    goto :goto_20

    .line 319
    :cond_19
    const p1, 0x1050359

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 321
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    return p0
.end method

.method public static blacklist getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 4

    .line 288
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 289
    const v0, 0x10700c7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 293
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    goto :goto_20

    .line 295
    :cond_19
    const p1, 0x105035b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 297
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return p0
.end method

.method public static blacklist getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 4

    .line 220
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 221
    const v0, 0x10700c8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 224
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    goto :goto_20

    .line 226
    :cond_19
    const p1, 0x105035a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 228
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    return p0
.end method

.method private blacklist insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;
    .registers 11

    .line 410
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 411
    new-instance p2, Landroid/view/RoundedCorner;

    invoke-direct {p2, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    return-object p2

    .line 415
    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 429
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 426
    :pswitch_2e
    if-le p2, p8, :cond_33

    if-le p2, p5, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    .line 427
    :goto_34
    goto :goto_4a

    .line 423
    :pswitch_35
    if-le p2, p8, :cond_3a

    if-le p2, p7, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 424
    :goto_3b
    goto :goto_4a

    .line 420
    :pswitch_3c
    if-le p2, p6, :cond_41

    if-le p2, p7, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    .line 421
    :goto_42
    goto :goto_4a

    .line 417
    :pswitch_43
    if-le p2, p6, :cond_48

    if-le p2, p5, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 418
    :goto_49
    nop

    .line 432
    :goto_4a
    new-instance p7, Landroid/view/RoundedCorner;

    .line 434
    if-eqz v0, :cond_50

    sub-int/2addr p3, p5

    goto :goto_51

    :cond_50
    move p3, v1

    .line 435
    :goto_51
    if-eqz v0, :cond_55

    sub-int v1, p4, p6

    :cond_55
    invoke-direct {p7, p1, p2, p3, v1}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 432
    return-object p7

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
    .end packed-switch
.end method

.method private static blacklist loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 171
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    .line 173
    if-nez v0, :cond_14

    if-nez v1, :cond_14

    if-nez p0, :cond_14

    .line 174
    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_14
    new-instance p1, Landroid/util/Pair;

    .line 177
    if-lez v1, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 178
    if-lez p0, :cond_21

    move v0, p0

    :cond_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    return-object p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 566
    if-ne p1, p0, :cond_4

    .line 567
    const/4 p1, 0x1

    return p1

    .line 569
    :cond_4
    instance-of v0, p1, Landroid/view/RoundedCorners;

    if-eqz v0, :cond_13

    .line 570
    check-cast p1, Landroid/view/RoundedCorners;

    .line 571
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    iget-object p1, p1, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 573
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getAllRoundedCorners()[Landroid/view/RoundedCorner;
    .registers 6

    .line 469
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 470
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_12

    .line 471
    new-instance v3, Landroid/view/RoundedCorner;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v1, v2

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 473
    :cond_12
    return-object v1
.end method

.method public blacklist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 4

    .line 447
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 448
    const/4 p1, 0x0

    goto :goto_16

    :cond_c
    new-instance v0, Landroid/view/RoundedCorner;

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    move-object p1, v0

    .line 447
    :goto_16
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 557
    nop

    .line 558
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v4, v0, v2

    .line 559
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 561
    :cond_14
    return v3
.end method

.method public blacklist inset(IIII)Landroid/view/RoundedCorners;
    .registers 16

    .line 399
    const/4 v9, 0x4

    new-array v10, v9, [Landroid/view/RoundedCorner;

    .line 400
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_30

    .line 401
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v3, v3, v1

    .line 402
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 401
    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v2

    aput-object v2, v10, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 405
    :cond_30
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v10}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .registers 14

    .line 354
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v7, v0, v1

    .line 355
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, v1

    .line 356
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v9, v0, v1

    .line 357
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v0, p1

    .line 358
    const/4 p1, 0x4

    new-array v0, p1, [Landroid/view/RoundedCorner;

    .line 360
    const/4 v1, 0x0

    move v3, v1

    :goto_1d
    if-ge v3, p1, :cond_82

    .line 361
    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 362
    new-instance v1, Landroid/view/RoundedCorner;

    invoke-direct {v1, v3}, Landroid/view/RoundedCorner;-><init>(I)V

    aput-object v1, v0, v3

    .line 363
    goto :goto_7f

    .line 365
    :cond_31
    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    .line 366
    packed-switch v3, :pswitch_data_88

    .line 384
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :pswitch_55
    nop

    .line 381
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v4

    .line 382
    move v6, v1

    move v5, v4

    goto :goto_78

    .line 376
    :pswitch_5e
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v4

    .line 377
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v4

    .line 378
    move v5, v1

    move v6, v2

    goto :goto_78

    .line 372
    :pswitch_6b
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v4

    .line 373
    nop

    .line 374
    move v5, v1

    move v6, v4

    goto :goto_78

    .line 368
    :pswitch_74
    nop

    .line 369
    nop

    .line 370
    move v5, v4

    move v6, v5

    .line 387
    :goto_78
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v1

    aput-object v1, v0, v3

    .line 360
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 390
    :cond_82
    new-instance p1, Landroid/view/RoundedCorners;

    invoke-direct {p1, v0}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object p1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_74
        :pswitch_6b
        :pswitch_5e
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist rotate(III)Landroid/view/RoundedCorners;
    .registers 11

    .line 501
    if-nez p1, :cond_3

    .line 502
    return-object p0

    .line 504
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_c

    const/4 v2, 0x3

    if-ne p1, v2, :cond_b

    goto :goto_c

    :cond_b
    move v1, v0

    .line 505
    :cond_c
    :goto_c
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/RoundedCorner;

    .line 507
    nop

    :goto_10
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v3, v3

    if-ge v0, v3, :cond_34

    .line 508
    invoke-static {v0, p1}, Landroid/view/RoundedCorners;->getRotatedIndex(II)I

    move-result v3

    .line 509
    iget-object v4, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v0

    .line 511
    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    .line 512
    if-eqz v1, :cond_25

    move v5, p3

    goto :goto_26

    :cond_25
    move v5, p2

    .line 513
    :goto_26
    if-eqz v1, :cond_2a

    move v6, p2

    goto :goto_2b

    :cond_2a
    move v6, p3

    .line 509
    :goto_2b
    invoke-static {v3, v4, v5, v6}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v4

    aput-object v4, v2, v3

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 515
    :cond_34
    new-instance p1, Landroid/view/RoundedCorners;

    invoke-direct {p1, v2}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object p1
.end method

.method public blacklist scale(F)Landroid/view/RoundedCorners;
    .registers 9

    .line 480
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 481
    return-object p0

    .line 484
    :cond_7
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 485
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_34

    .line 486
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v3, v3, v2

    .line 487
    new-instance v4, Landroid/view/RoundedCorner;

    .line 489
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 490
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    .line 491
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-direct {v4, v2, v5, v6, v3}, Landroid/view/RoundedCorner;-><init>(IIII)V

    aput-object v4, v1, v2

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 493
    :cond_34
    new-instance p1, Landroid/view/RoundedCorners;

    invoke-direct {p1, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object p1
.end method

.method public blacklist setRoundedCorner(ILandroid/view/RoundedCorner;)V
    .registers 4

    .line 458
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    if-nez p2, :cond_a

    .line 459
    new-instance p2, Landroid/view/RoundedCorner;

    invoke-direct {p2, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    goto :goto_b

    :cond_a
    nop

    :goto_b
    aput-object p2, v0, p1

    .line 460
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedCorners{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 588
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    invoke-virtual {p0, v0}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 589
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 591
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 594
    :goto_16
    return-void
.end method
