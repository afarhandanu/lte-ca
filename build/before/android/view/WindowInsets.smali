.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type;,
        Landroid/view/WindowInsets$Builder;,
        Landroid/view/WindowInsets$Side;
    }
.end annotation


# static fields
.field public static final whitelist CONSUMED:Landroid/view/WindowInsets;


# instance fields
.field private final blacklist mCompatIgnoreVisibility:Z

.field private final blacklist mCompatInsetsTypes:I

.field private final greylist-max-o mDisplayCutout:Landroid/view/DisplayCutout;

.field private final greylist-max-o mDisplayCutoutConsumed:Z

.field private final blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private final blacklist mForceConsumingOpaqueCaptionBar:Z

.field private final blacklist mForceConsumingTypes:I

.field private final blacklist mFrameHeight:I

.field private final blacklist mFrameWidth:I

.field private final greylist-max-o mIsRound:Z

.field private final blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final greylist-max-o mStableInsetsConsumed:Z

.field private final blacklist mSuppressScrimTypes:I

.field private final greylist-max-o mSystemWindowInsetsConsumed:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCompatIgnoreVisibility(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompatInsetsTypes(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .registers 1

    invoke-static {p0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/WindowInsets;->setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 18

    .line 138
    new-instance v0, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    move-object v2, v1

    invoke-static {v2}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v3, v2

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v2

    .line 139
    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatVisibilityMap([Landroid/graphics/Insets;)[Z

    move-result-object v3

    .line 140
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 141
    return-void
.end method

.method public constructor greylist <init>(Landroid/graphics/Rect;)V
    .registers 20

    .line 281
    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v3, v0, [Z

    .line 282
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v14, v0, [[Landroid/graphics/Rect;

    .line 281
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 284
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .registers 23

    .line 212
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v4, v2

    goto :goto_c

    :cond_9
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    .line 213
    :goto_c
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_12

    move-object v5, v2

    goto :goto_15

    :cond_12
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v5, v1

    :goto_15
    iget-object v6, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v8, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v9, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v10, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 218
    invoke-static {v0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v11

    iget-object v12, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v13, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v14, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v15, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 224
    iget-boolean v3, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v3, :cond_34

    move-object/from16 v17, v2

    goto :goto_38

    :cond_34
    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v3

    .line 225
    :goto_38
    iget-boolean v3, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v3, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    :goto_3f
    move-object/from16 v18, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    .line 212
    move-object/from16 v3, p0

    move/from16 v20, v0

    move/from16 v16, v1

    move/from16 v19, v2

    invoke-direct/range {v3 .. v20}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 228
    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V
    .registers 21

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 172
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v2, :cond_16

    .line 173
    sget-object p1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/graphics/Insets;

    goto :goto_1c

    .line 174
    :cond_16
    invoke-virtual {p1}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Insets;

    :goto_1c
    iput-object p1, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 176
    if-nez p2, :cond_22

    move p1, v0

    goto :goto_23

    :cond_22
    move p1, v1

    :goto_23
    iput-boolean p1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 177
    iget-boolean p1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz p1, :cond_2f

    .line 178
    sget-object p1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/graphics/Insets;

    goto :goto_35

    .line 179
    :cond_2f
    invoke-virtual {p2}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Insets;

    :goto_35
    iput-object p1, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 181
    iput-object p3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 182
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 183
    iput p5, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    .line 184
    iput-boolean p6, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    .line 185
    iput p7, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 186
    iput p12, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    .line 187
    move/from16 p1, p13

    iput-boolean p1, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 189
    if-nez p8, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 190
    iget-boolean p1, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-nez p1, :cond_59

    invoke-virtual {p8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_59

    .line 191
    :cond_58
    goto :goto_5a

    :cond_59
    :goto_59
    const/4 p8, 0x0

    :goto_5a
    iput-object p8, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 193
    iput-object p9, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 194
    iput-object p10, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 195
    iput-object p11, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    .line 196
    iget-boolean p1, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-nez p1, :cond_70

    if-nez p14, :cond_69

    goto :goto_70

    .line 198
    :cond_69
    invoke-virtual/range {p14 .. p14}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    goto :goto_75

    .line 197
    :cond_70
    :goto_70
    sget-object p1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length p1, p1

    new-array p1, p1, [[Landroid/graphics/Rect;

    .line 198
    :goto_75
    iput-object p1, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 199
    iget-boolean p1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-nez p1, :cond_85

    if-nez p15, :cond_7e

    goto :goto_85

    .line 201
    :cond_7e
    invoke-virtual/range {p15 .. p15}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    goto :goto_8a

    .line 200
    :cond_85
    :goto_85
    sget-object p1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length p1, p1

    new-array p1, p1, [[Landroid/graphics/Rect;

    .line 201
    :goto_8a
    iput-object p1, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 202
    move/from16 p1, p16

    iput p1, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    .line 203
    move/from16 p1, p17

    iput p1, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    .line 204
    return-void
.end method

.method public static blacklist assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V
    .registers 6

    .line 309
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    .line 310
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 311
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    aput-object p1, p0, v0

    .line 312
    return-void
.end method

.method public static blacklist createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;
    .registers 2

    .line 296
    if-nez p0, :cond_4

    .line 297
    const/4 p0, 0x0

    return-object p0

    .line 299
    :cond_4
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Insets;

    .line 300
    invoke-static {v0, p0}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 301
    return-object v0
.end method

.method private static blacklist createCompatVisibilityMap([Landroid/graphics/Insets;)[Z
    .registers 8

    .line 320
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Z

    .line 321
    if-nez p0, :cond_8

    .line 322
    return-object v0

    .line 324
    :cond_8
    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_24

    aget v4, v1, v3

    .line 325
    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    .line 326
    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 327
    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 324
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 330
    :cond_24
    return-object v0
.end method

.method private static blacklist displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .registers 2

    .line 232
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_6

    .line 233
    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_6
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_d

    .line 235
    sget-object p0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object p0

    .line 237
    :cond_d
    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method private blacklist getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 599
    nop

    .line 600
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v1, :cond_2f

    aget v5, v0, v4

    .line 601
    and-int v6, p2, v5

    if-nez v6, :cond_10

    .line 602
    goto :goto_2c

    .line 604
    :cond_10
    invoke-static {v5}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v5

    aget-object v5, p1, v5

    .line 605
    if-nez v5, :cond_19

    .line 606
    goto :goto_2c

    .line 608
    :cond_19
    if-nez v2, :cond_1d

    .line 609
    move-object v2, v5

    goto :goto_2c

    .line 611
    :cond_1d
    array-length v6, v2

    array-length v7, v5

    add-int/2addr v6, v7

    new-array v6, v6, [Landroid/graphics/Rect;

    .line 612
    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    array-length v2, v2

    array-length v7, v5

    invoke-static {v5, v3, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    move-object v2, v6

    .line 600
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 617
    :cond_2f
    if-nez v2, :cond_36

    .line 618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 620
    :cond_36
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static blacklist getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 8

    .line 247
    nop

    .line 248
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_23

    aget v4, v0, v3

    .line 249
    and-int v5, p1, v4

    if-nez v5, :cond_f

    .line 250
    goto :goto_20

    .line 252
    :cond_f
    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    aget-object v4, p0, v4

    .line 253
    if-nez v4, :cond_18

    .line 254
    goto :goto_20

    .line 256
    :cond_18
    if-nez v2, :cond_1c

    .line 257
    move-object v2, v4

    goto :goto_20

    .line 259
    :cond_1c
    invoke-static {v2, v4}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    .line 248
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 262
    :cond_23
    if-nez v2, :cond_27

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :cond_27
    return-object v2
.end method

.method static blacklist insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;
    .registers 18

    .line 1399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 1401
    aget-object v4, p0, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/view/WindowInsets;->insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;

    move-result-object v3

    .line 1403
    if-eqz v3, :cond_1d

    .line 1404
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1407
    :cond_20
    new-array p0, v1, [Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Rect;

    return-object p0
.end method

.method static blacklist insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;
    .registers 20

    .line 1373
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    if-nez p4, :cond_9

    .line 1374
    return-object p0

    .line 1376
    :cond_9
    nop

    .line 1377
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v2, v1, :cond_3e

    aget v4, v0, v2

    .line 1378
    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    .line 1379
    aget-object v5, p0, v4

    .line 1380
    if-nez v5, :cond_1c

    .line 1381
    goto :goto_3b

    .line 1383
    :cond_1c
    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Landroid/view/WindowInsets;->insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;

    move-result-object v12

    .line 1385
    invoke-static {v12, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1386
    if-nez v3, :cond_39

    .line 1387
    invoke-virtual {p0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Landroid/graphics/Rect;

    .line 1388
    const/4 v3, 0x1

    .line 1390
    :cond_39
    aput-object v12, p0, v4

    .line 1377
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1393
    :cond_3e
    return-object p0
.end method

.method static blacklist insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;
    .registers 7

    .line 1358
    iget v0, p0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1359
    iget v1, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1360
    iget v1, p0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, p3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1361
    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, p4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1362
    iget p4, p0, Landroid/graphics/Insets;->left:I

    if-ne v0, p4, :cond_2e

    iget p4, p0, Landroid/graphics/Insets;->top:I

    if-ne p2, p4, :cond_2e

    iget p4, p0, Landroid/graphics/Insets;->right:I

    if-ne p3, p4, :cond_2e

    iget p4, p0, Landroid/graphics/Insets;->bottom:I

    if-ne p1, p4, :cond_2e

    .line 1364
    return-object p0

    .line 1366
    :cond_2e
    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;
    .registers 12

    .line 1337
    nop

    .line 1338
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_27

    aget v4, v0, v2

    .line 1339
    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    .line 1340
    aget-object v5, p0, v4

    .line 1341
    if-nez v5, :cond_13

    .line 1342
    goto :goto_24

    .line 1344
    :cond_13
    invoke-static {v5, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v6

    .line 1345
    if-eq v6, v5, :cond_24

    .line 1346
    if-nez v3, :cond_22

    .line 1347
    invoke-virtual {p0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Insets;

    .line 1348
    const/4 v3, 0x1

    .line 1350
    :cond_22
    aput-object v6, p0, v4

    .line 1338
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1353
    :cond_27
    return-object p0
.end method

.method private static blacklist insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;
    .registers 9

    .line 1413
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1414
    return-object v0

    .line 1419
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    sub-int/2addr p6, p4

    invoke-direct {v1, p1, p2, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1422
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1423
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 1427
    neg-int p0, p1

    neg-int p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1428
    return-object p3

    .line 1431
    :cond_1c
    return-object v0
.end method

.method private static blacklist setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .registers 8

    .line 270
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 271
    and-int v4, p1, v3

    if-nez v4, :cond_d

    .line 272
    goto :goto_13

    .line 274
    :cond_d
    invoke-static {v3}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    aput-object p2, p0, v3

    .line 270
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 276
    :cond_16
    return-void
.end method

.method private static blacklist toShortString(Landroid/graphics/Insets;)Ljava/lang/String;
    .registers 4

    .line 1153
    if-nez p0, :cond_6

    .line 1154
    const-string/jumbo p0, "null"

    return-object p0

    .line 1156
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist consumeDisplayCutout()Landroid/view/WindowInsets;
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 700
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v3

    goto :goto_d

    :cond_b
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 701
    :goto_d
    iget-boolean v4, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v4, :cond_13

    move-object v4, v3

    goto :goto_15

    :cond_13
    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    :goto_15
    move-object v5, v3

    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    move-object v6, v1

    move-object v1, v2

    move-object v2, v4

    iget-boolean v4, v0, Landroid/view/WindowInsets;->mIsRound:Z

    move-object v7, v5

    iget v5, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    move-object v8, v6

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    move-object v9, v7

    iget v7, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    move-object v10, v9

    iget-object v9, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    move-object v11, v10

    iget-object v10, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object v12, v11

    iget-object v11, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    move-object v13, v12

    iget v12, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move-object v14, v13

    iget-boolean v13, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 706
    iget-boolean v15, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v15, :cond_3b

    move-object v15, v14

    goto :goto_3d

    :cond_3b
    iget-object v15, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 707
    :goto_3d
    iget-boolean v14, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v14, :cond_44

    const/16 v16, 0x0

    goto :goto_48

    :cond_44
    iget-object v14, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v14

    :goto_48
    iget v14, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v17, v0

    move-object v0, v8

    const/4 v8, 0x0

    move-object/from16 v18, v16

    move/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 700
    return-object v0
.end method

.method public whitelist consumeStableInsets()Landroid/view/WindowInsets;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    return-object p0
.end method

.method public whitelist consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v4, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v5, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v7, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 761
    iget v2, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v8

    and-int/2addr v2, v8

    if-eqz v2, :cond_19

    .line 762
    const/4 v2, 0x0

    goto :goto_1d

    :cond_19
    invoke-static {v0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v2

    :goto_1d
    move-object v8, v2

    iget-object v9, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v10, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v11, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v12, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v13, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v17, v0

    move-object v0, v1

    const/4 v1, 0x0

    move/from16 v16, v2

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 755
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1293
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1294
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_a2

    instance-of v2, p1, Landroid/view/WindowInsets;

    if-nez v2, :cond_d

    goto/16 :goto_a2

    .line 1295
    :cond_d
    check-cast p1, Landroid/view/WindowInsets;

    .line 1297
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mIsRound:Z

    if-ne v2, v3, :cond_a0

    iget v2, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget v3, p1, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    if-ne v2, v3, :cond_a0

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    if-ne v2, v3, :cond_a0

    iget v2, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget v3, p1, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    if-ne v2, v3, :cond_a0

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-ne v2, v3, :cond_a0

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-ne v2, v3, :cond_a0

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-ne v2, v3, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1304
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1305
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 1306
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1307
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v3, p1, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1308
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v3, p1, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1309
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v3, p1, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1310
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1311
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1312
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v3, p1, Landroid/view/WindowInsets;->mFrameWidth:I

    if-ne v2, v3, :cond_a0

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    iget p1, p1, Landroid/view/WindowInsets;->mFrameHeight:I

    if-ne v2, p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move v0, v1

    .line 1297
    :goto_a1
    return v0

    .line 1294
    :cond_a2
    :goto_a2
    return v1
.end method

.method public whitelist getBoundingRects(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getBoundingRectsIgnoringVisibility(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 590
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_b

    .line 593
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 591
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to query the bounding rects for IME"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    .line 637
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist getDisplayShape()Landroid/view/DisplayShape;
    .registers 2

    .line 686
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0
.end method

.method public blacklist getForceConsumingTypes()I
    .registers 2

    .line 1048
    iget v0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return v0
.end method

.method public whitelist getFrame()Landroid/util/Size;
    .registers 4

    .line 1247
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public whitelist getInsets(I)Landroid/graphics/Insets;
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;
    .registers 3

    .line 408
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_b

    .line 411
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 409
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to query the maximum insets for IME"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getMandatorySystemGestureInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 996
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .registers 2

    .line 674
    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 675
    :cond_6
    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0}, Landroid/view/PrivacyIndicatorBounds;->getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 674
    :goto_c
    return-object v0
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 3

    .line 654
    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getStableInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getStableInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getStableInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getStableInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 855
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getStableInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 837
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSuppressScrimTypes()I
    .registers 2

    .line 1063
    iget v0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return v0
.end method

.method public whitelist getSystemGestureInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemWindowInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getSystemWindowInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getSystemWindowInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getSystemWindowInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getSystemWindowInsets()Landroid/graphics/Insets;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v0, :cond_11

    .line 365
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_17

    .line 366
    :cond_11
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 369
    :goto_17
    iget v1, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v1, :cond_30

    .line 370
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 372
    :cond_30
    return-object v0
.end method

.method public blacklist getSystemWindowInsetsAsRect()Landroid/graphics/Rect;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 346
    :cond_b
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 347
    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 348
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getTappableElementInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasInsets()Z
    .registers 3

    .line 520
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 521
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 520
    :goto_30
    return v0
.end method

.method public whitelist hasStableInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist hasSystemWindowInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 21

    .line 1319
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 1320
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mIsRound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v7, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget v1, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    .line 1321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v1, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 1322
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v15, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1323
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1324
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 1319
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist inset(IIII)Landroid/view/WindowInsets;
    .registers 5

    .line 1221
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1222
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1223
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1224
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1226
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public whitelist inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;
    .registers 5

    .line 1193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1173
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist insetUnchecked(IIII)Landroid/view/WindowInsets;
    .registers 29

    .line 1256
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v8, Landroid/view/WindowInsets;

    .line 1257
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_13

    .line 1258
    move-object v10, v9

    goto :goto_1a

    .line 1259
    :cond_13
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v10, v1

    .line 1260
    :goto_1a
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_20

    .line 1261
    move-object v11, v9

    goto :goto_27

    .line 1262
    :cond_20
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v11, v1

    :goto_27
    iget-object v12, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v13, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v14, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v15, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v1, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 1266
    iget-boolean v6, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v6, :cond_38

    .line 1267
    move-object/from16 v16, v9

    goto :goto_49

    .line 1268
    :cond_38
    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v6, :cond_41

    .line 1269
    sget-object v6, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    move-object/from16 v16, v6

    goto :goto_49

    .line 1270
    :cond_41
    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v6

    move-object/from16 v16, v6

    .line 1271
    :goto_49
    iget-object v6, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v6, :cond_52

    .line 1272
    sget-object v6, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    move-object/from16 v17, v6

    goto :goto_5a

    .line 1273
    :cond_52
    iget-object v6, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v6

    move-object/from16 v17, v6

    .line 1274
    :goto_5a
    iget-object v6, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v6, :cond_61

    .line 1275
    move-object/from16 v18, v9

    goto :goto_69

    .line 1276
    :cond_61
    iget-object v6, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v6

    move-object/from16 v18, v6

    :goto_69
    move-object/from16 v19, v11

    iget-object v11, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    move-object/from16 v20, v12

    iget v12, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move/from16 v21, v13

    iget-boolean v13, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 1279
    iget-boolean v6, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v6, :cond_7e

    .line 1280
    move/from16 v22, v1

    move-object/from16 v23, v9

    goto :goto_8d

    .line 1281
    :cond_7e
    move v7, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v22, v7

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v23, v1

    .line 1283
    :goto_8d
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_92

    .line 1284
    goto :goto_a4

    .line 1285
    :cond_92
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v9

    :goto_a4
    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    sub-int v1, v1, p1

    sub-int v1, v1, p3

    .line 1287
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    sub-int v0, v0, p2

    sub-int v0, v0, p4

    .line 1288
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v14

    move v6, v15

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v7, v22

    move-object/from16 v14, v23

    move-object v15, v9

    move-object/from16 v9, v17

    move/from16 v17, v0

    move-object v0, v8

    move-object/from16 v8, v16

    move/from16 v16, v1

    move-object v1, v10

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 1256
    return-object v0
.end method

.method public whitelist isConsumed()Z
    .registers 2

    .line 726
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isForceConsumingOpaqueCaptionBar()Z
    .registers 2

    .line 1055
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return v0
.end method

.method public whitelist isRound()Z
    .registers 2

    .line 741
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method greylist-max-o isSystemWindowInsetsConsumed()Z
    .registers 2

    .line 1439
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return v0
.end method

.method public whitelist isVisible(I)Z
    .registers 8

    .line 423
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1c

    aget v4, v0, v3

    .line 424
    and-int v5, p1, v4

    if-nez v5, :cond_e

    .line 425
    goto :goto_19

    .line 427
    :cond_e
    iget-object v5, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    aget-boolean v4, v5, v4

    if-nez v4, :cond_19

    .line 428
    return v2

    .line 423
    :cond_19
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 431
    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_5

    .line 793
    return-object p0

    .line 795
    :cond_5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public whitelist replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 817
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method blacklist toDiffString(Landroid/view/WindowInsets;)Ljava/lang/String;
    .registers 10

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    const-string v1, " "

    if-eqz p1, :cond_15

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v3, p1, Landroid/view/WindowInsets;->mFrameWidth:I

    if-ne v2, v3, :cond_15

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    iget v3, p1, Landroid/view/WindowInsets;->mFrameHeight:I

    if-eq v2, v3, :cond_2b

    .line 1130
    :cond_15
    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_2b
    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1133
    const/4 v3, 0x0

    if-eqz p1, :cond_33

    iget-object p1, p1, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    goto :goto_34

    :cond_33
    move-object p1, v3

    .line 1134
    :goto_34
    const/4 v4, 0x0

    :goto_35
    sget-object v5, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v5, v5

    if-ge v4, v5, :cond_6c

    .line 1135
    sget-object v5, Landroid/view/WindowInsets$Type;->TYPES:[I

    aget v5, v5, v4

    .line 1136
    sparse-switch v5, :sswitch_data_72

    goto :goto_69

    .line 1139
    :sswitch_42
    aget-object v6, v2, v4

    .line 1140
    if-eqz p1, :cond_49

    aget-object v7, p1, v4

    goto :goto_4a

    :cond_49
    move-object v7, v3

    .line 1141
    :goto_4a
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    .line 1142
    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1143
    invoke-static {v6}, Landroid/view/WindowInsets;->toShortString(Landroid/graphics/Insets;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_69
    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 1148
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_42
        0x2 -> :sswitch_42
        0x8 -> :sswitch_42
        0x20 -> :sswitch_42
    .end sparse-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInsets{\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    const-string v4, "\n    "

    if-ge v3, v2, :cond_83

    aget v5, v1, v3

    .line 1070
    invoke-static {v5}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v6

    .line 1071
    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aget-object v7, v7, v6

    .line 1072
    iget-object v8, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aget-object v8, v8, v6

    .line 1073
    iget-object v9, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    aget-boolean v9, v9, v6

    .line 1074
    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v10, v7}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v10, v8}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    if-eqz v9, :cond_80

    .line 1075
    :cond_33
    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1076
    const-string v7, " max="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1077
    const-string v7, " vis="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1078
    const-string v7, " boundingRects="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    .line 1079
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1080
    const-string v7, " maxBoundingRects="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v6, v7, v6

    .line 1081
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1082
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1086
    :cond_83
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    const-string v2, ""

    if-eqz v1, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cutout="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    :cond_9f
    move-object v1, v2

    :goto_a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v1, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "roundedCorners="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c2

    :cond_c1
    move-object v1, v2

    :goto_c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v1, :cond_e3

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "privacyIndicatorBounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e4

    :cond_e3
    move-object v1, v2

    .line 1090
    :goto_e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    if-eqz v1, :cond_104

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayShape="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_105

    :cond_104
    move-object v1, v2

    :goto_105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const-string v1, "forceConsumingTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v1, "forceConsumingOpaqueCaptionBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    const-string/jumbo v1, "suppressScrimTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v1, "compatInsetsTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v1, "compatIgnoreVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const-string/jumbo v1, "systemWindowInsetsConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const-string/jumbo v1, "stableInsetsConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    const-string v1, "displayCutoutConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_193

    const-string/jumbo v2, "round"

    :cond_193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const-string v1, "frameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    const-string v1, "frameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1116
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
