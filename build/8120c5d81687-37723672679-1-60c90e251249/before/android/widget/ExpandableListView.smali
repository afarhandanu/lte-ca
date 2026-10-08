.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$SavedState;
    }
.end annotation


# static fields
.field public static final whitelist CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final greylist-max-o CHILD_LAST_STATE_SET:[I

.field private static final greylist-max-o EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EXPANDED_STATE_SET:[I

.field private static final greylist GROUP_STATE_SETS:[[I

.field private static final greylist-max-o INDICATOR_UNDEFINED:I = -0x2

.field private static final greylist-max-o PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final greylist-max-o PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final greylist-max-o PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final greylist-max-o PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final greylist-max-o PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final greylist-max-o PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final greylist-max-o PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final whitelist PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final whitelist PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final whitelist PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final whitelist PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ExpandableListAdapter;

.field private greylist mChildDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mChildIndicatorEnd:I

.field private greylist-max-o mChildIndicatorLeft:I

.field private greylist-max-o mChildIndicatorRight:I

.field private greylist-max-o mChildIndicatorStart:I

.field private greylist mConnector:Landroid/widget/ExpandableListConnector;

.field private greylist mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIndicatorEnd:I

.field private greylist mIndicatorLeft:I

.field private final greylist-max-o mIndicatorRect:Landroid/graphics/Rect;

.field private greylist mIndicatorRight:I

.field private greylist-max-o mIndicatorStart:I

.field private greylist mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private greylist mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private greylist mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private greylist mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 198
    const v0, 0x10100a8

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 202
    const v1, 0x10100a9

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 206
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 211
    sget-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    sget-object v3, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 219
    const v0, 0x10100a6

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 234
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 239
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 245
    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 247
    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/ExpandableListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 250
    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v1, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 252
    const/4 p2, 0x1

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v1, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 254
    const/4 p2, 0x2

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v1, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 256
    const/4 p2, 0x3

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 258
    iget p1, v1, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez p1, :cond_49

    iget-object p1, v1, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_49

    .line 259
    iget p1, v1, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object p2, v1, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 261
    :cond_49
    const/4 p1, 0x4

    const/4 p2, -0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 264
    const/4 p1, 0x5

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 267
    const/4 p1, 0x6

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 270
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result p1

    if-nez p1, :cond_85

    .line 271
    const/4 p1, 0x7

    const/4 p3, -0x2

    invoke-virtual {v5, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 274
    const/16 p1, 0x8

    invoke-virtual {v5, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 278
    const/16 p1, 0x9

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 281
    const/16 p1, 0xa

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 286
    :cond_85
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    return-void
.end method

.method private greylist-max-o getAbsoluteFlatPosition(I)I
    .registers 3

    .line 651
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private greylist-max-o getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .registers 4

    .line 1183
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1184
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget p1, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, p1}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 1186
    :cond_10
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getFlatPositionForConnector(I)I
    .registers 3

    .line 640
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private greylist-max-o getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 490
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 491
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 493
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 497
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_21

    goto :goto_23

    :cond_21
    move v2, v3

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 501
    :goto_24
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result p1

    .line 502
    if-eqz v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    or-int/2addr p1, v1

    .line 503
    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 504
    goto :goto_51

    .line 506
    :cond_35
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 508
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 510
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget p1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, p1, :cond_4c

    .line 511
    sget-object p1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_4e

    .line 512
    :cond_4c
    sget-object p1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 513
    :goto_4e
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 517
    :cond_51
    :goto_51
    return-object v0
.end method

.method public static whitelist getPackedPositionChild(J)I
    .registers 10

    .line 1090
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_b

    return v3

    .line 1093
    :cond_b
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_14

    return v3

    .line 1095
    :cond_14
    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static whitelist getPackedPositionForChild(II)J
    .registers 6

    .line 1115
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/16 v2, -0x1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static whitelist getPackedPositionForGroup(I)J
    .registers 5

    .line 1130
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist getPackedPositionGroup(J)I
    .registers 4

    .line 1071
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 p0, -0x1

    return p0

    .line 1073
    :cond_b
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static whitelist getPackedPositionType(J)I
    .registers 4

    .line 1051
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 1052
    const/4 p0, 0x2

    return p0

    .line 1055
    :cond_b
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_14

    .line 1056
    const/4 p0, 0x1

    goto :goto_15

    .line 1057
    :cond_14
    const/4 p0, 0x0

    .line 1055
    :goto_15
    return p0
.end method

.method private greylist-max-o hasRtlSupport()Z
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isHeaderOrFooterPosition(I)Z
    .registers 4

    .line 628
    iget v0, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 629
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_12

    if-lt p1, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    :goto_13
    return p1
.end method

.method private greylist-max-o isRtlCompatibilityMode()Z
    .registers 3

    .line 294
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 295
    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private greylist-max-o resolveChildIndicator()V
    .registers 3

    .line 341
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 342
    const/4 v1, -0x1

    if-eqz v0, :cond_18

    .line 343
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v0, v1, :cond_f

    .line 344
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 346
    :cond_f
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v0, v1, :cond_28

    .line 347
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    goto :goto_28

    .line 350
    :cond_18
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v0, v1, :cond_20

    .line 351
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 353
    :cond_20
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v0, v1, :cond_28

    .line 354
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 357
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o resolveIndicator()V
    .registers 3

    .line 315
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 316
    if-eqz v0, :cond_17

    .line 317
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v0, :cond_e

    .line 318
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 320
    :cond_e
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v0, :cond_27

    .line 321
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_27

    .line 324
    :cond_17
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v0, :cond_1f

    .line 325
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 327
    :cond_1f
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v0, :cond_27

    .line 328
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 331
    :cond_27
    :goto_27
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3a

    .line 332
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 334
    :cond_3a
    return-void
.end method


# virtual methods
.method public whitelist collapseGroup(I)Z
    .registers 4

    .line 791
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 793
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_f

    .line 794
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 797
    :cond_f
    return v0
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 11

    .line 1136
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1138
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0

    .line 1141
    :cond_c
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result p2

    .line 1142
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 1143
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1145
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v4

    .line 1146
    invoke-virtual {p3}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1148
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1150
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v0
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 365
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_10

    iget-object v2, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_10

    .line 366
    return-void

    .line 369
    :cond_10
    nop

    .line 370
    iget v2, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1c

    move v2, v5

    goto :goto_1d

    :cond_1c
    move v2, v4

    .line 371
    :goto_1d
    if-eqz v2, :cond_43

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 373
    iget v6, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    .line 374
    iget v7, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    .line 375
    iget v8, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v8, v6

    iget v9, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    add-int/2addr v9, v7

    iget v10, v0, Landroid/widget/ExpandableListView;->mRight:I

    add-int/2addr v6, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mLeft:I

    sub-int/2addr v6, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v6, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mBottom:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mTop:I

    sub-int/2addr v7, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    sub-int/2addr v7, v10

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_44

    .line 371
    :cond_43
    move v3, v4

    .line 380
    :goto_44
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v6

    .line 382
    iget v7, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    .line 384
    iget v8, v0, Landroid/widget/ExpandableListView;->mBottom:I

    .line 392
    nop

    .line 394
    iget-object v9, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 399
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v10

    .line 400
    iget v11, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    sub-int/2addr v11, v6

    const/4 v6, -0x4

    :goto_5e
    if-ge v4, v10, :cond_11a

    .line 403
    if-gez v11, :cond_66

    .line 405
    move/from16 v17, v5

    goto/16 :goto_112

    .line 406
    :cond_66
    if-le v11, v7, :cond_6a

    .line 408
    goto/16 :goto_11a

    .line 411
    :cond_6a
    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 412
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 413
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 416
    if-ltz v12, :cond_110

    if-le v13, v8, :cond_7e

    move/from16 v17, v5

    goto/16 :goto_112

    .line 419
    :cond_7e
    iget-object v14, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v14, v11}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v14

    .line 421
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v15

    .line 422
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v16

    .line 426
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v5, v6, :cond_eb

    .line 427
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b1

    .line 428
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a1

    .line 429
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_a3

    :cond_a1
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    :goto_a3
    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 430
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    if-ne v5, v6, :cond_ac

    .line 431
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_ae

    :cond_ac
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    :goto_ae
    iput v5, v9, Landroid/graphics/Rect;->right:I

    goto :goto_b9

    .line 433
    :cond_b1
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 434
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    iput v5, v9, Landroid/graphics/Rect;->right:I

    .line 437
    :goto_b9
    if-eqz v15, :cond_d6

    .line 438
    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 439
    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int v6, v16, v6

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 440
    sub-int v5, v16, v5

    iput v5, v9, Landroid/graphics/Rect;->right:I

    .line 442
    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 443
    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iput v5, v9, Landroid/graphics/Rect;->right:I

    .line 444
    goto :goto_e4

    .line 445
    :cond_d6
    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v5, v6

    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 446
    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v5, v6

    iput v5, v9, Landroid/graphics/Rect;->right:I

    .line 449
    :goto_e4
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/16 v17, 0x1

    goto :goto_ed

    .line 426
    :cond_eb
    const/16 v17, 0x1

    .line 452
    :goto_ed
    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v15, v9, Landroid/graphics/Rect;->right:I

    if-eq v5, v15, :cond_10c

    .line 454
    iget-boolean v5, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    if-eqz v5, :cond_fc

    .line 456
    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 457
    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_100

    .line 459
    :cond_fc
    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 460
    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 464
    :goto_100
    invoke-direct {v0, v14}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 465
    if-eqz v5, :cond_10c

    .line 467
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 468
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 471
    :cond_10c
    invoke-virtual {v14}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_112

    .line 416
    :cond_110
    move/from16 v17, v5

    .line 401
    :goto_112
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    goto/16 :goto_5e

    .line 474
    :cond_11a
    :goto_11a
    if-eqz v2, :cond_11f

    .line 475
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 477
    :cond_11f
    return-void
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 7

    .line 533
    iget v0, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int/2addr p3, v0

    .line 537
    if-ltz p3, :cond_37

    .line 538
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 539
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 541
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v1, v2, :cond_27

    goto :goto_2b

    .line 550
    :cond_27
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_37

    .line 544
    :cond_2b
    :goto_2b
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 545
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 546
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 547
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 548
    return-void

    .line 554
    :cond_37
    :goto_37
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 555
    return-void
.end method

.method public whitelist expandGroup(I)Z
    .registers 3

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result p1

    return p1
.end method

.method public whitelist expandGroup(IZ)Z
    .registers 6

    .line 761
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 763
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 764
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 765
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v0

    .line 767
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v2, :cond_1e

    .line 768
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v2, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 771
    :cond_1e
    if-eqz p2, :cond_33

    .line 772
    iget-object p2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p2, p2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 774
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 775
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 778
    :cond_33
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 780
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1384
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 87
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 580
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getExpandableListPosition(I)J
    .registers 4

    .line 907
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 908
    const-wide v0, 0xffffffffL

    return-wide v0

    .line 911
    :cond_c
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result p1

    .line 912
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 913
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v0

    .line 914
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 915
    return-wide v0
.end method

.method public whitelist getFlatListPosition(J)I
    .registers 3

    .line 930
    nop

    .line 931
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 932
    iget-object p2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 933
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 934
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 935
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 936
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p1

    return p1
.end method

.method public whitelist getSelectedId()J
    .registers 5

    .line 962
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 963
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v0, -0x1

    return-wide v0

    .line 965
    :cond_10
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 967
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_21

    .line 969
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0

    .line 972
    :cond_21
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    invoke-interface {v3, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedPosition()J
    .registers 3

    .line 948
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 951
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o handleItemClick(Landroid/view/View;IJ)Z
    .registers 12

    .line 680
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 682
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v4

    .line 685
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 p4, 0x2

    const/4 v6, 0x0

    if-ne p3, p4, :cond_76

    .line 689
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    const/4 p4, 0x1

    if-eqz p3, :cond_2b

    .line 690
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 692
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 693
    return p4

    .line 689
    :cond_2b
    move-object v1, p0

    .line 697
    :cond_2c
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 699
    iget-object p1, v1, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 701
    invoke-virtual {p0, v6}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 703
    iget-object p1, v1, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz p1, :cond_74

    .line 704
    iget-object p1, v1, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_74

    .line 708
    :cond_48
    iget-object p1, v1, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 710
    invoke-virtual {p0, v6}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 712
    iget-object p1, v1, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz p1, :cond_5d

    .line 713
    iget-object p1, v1, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 716
    :cond_5d
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 717
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 719
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 720
    iget-object v0, v1, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 724
    :cond_74
    :goto_74
    move v6, p4

    goto :goto_91

    .line 727
    :cond_76
    move-object v1, p0

    move-object v2, p1

    iget-object p1, v1, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz p1, :cond_90

    .line 728
    invoke-virtual {p0, v6}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 729
    iget-object v0, v1, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-wide v5, v4

    move v4, p1

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p1

    return p1

    .line 733
    :cond_90
    nop

    .line 736
    :goto_91
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 738
    return v6
.end method

.method public whitelist isGroupExpanded(I)Z
    .registers 3

    .line 1038
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result p1

    return p1
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 1157
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1158
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 1159
    iget-object v0, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 1160
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1161
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1162
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1163
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 1164
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_36

    .line 1166
    :cond_31
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1171
    :cond_36
    :goto_36
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1172
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1369
    instance-of v0, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v0, :cond_8

    .line 1370
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1371
    return-void

    .line 1374
    :cond_8
    check-cast p1, Landroid/widget/ExpandableListView$SavedState;

    .line 1375
    invoke-virtual {p1}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1377
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v0, :cond_20

    iget-object v0, p1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 1378
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object p1, p1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 1380
    :cond_20
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2

    .line 306
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 307
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 308
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1362
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1363
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    .line 1364
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1363
    return-object v1
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .registers 6

    .line 657
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 659
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    return p1

    .line 663
    :cond_b
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result p2

    .line 664
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result p2

    .line 665
    if-eqz p1, :cond_19

    .line 666
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 668
    :cond_19
    return p2
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    .line 602
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 604
    if-eqz p1, :cond_c

    .line 606
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_f

    .line 608
    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 612
    :goto_f
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 613
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 565
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 528
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 529
    return-void
.end method

.method public whitelist setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1198
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1199
    return-void
.end method

.method public whitelist setChildIndicatorBounds(II)V
    .registers 3

    .line 1213
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1214
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1215
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1216
    return-void
.end method

.method public whitelist setChildIndicatorBoundsRelative(II)V
    .registers 3

    .line 1230
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1231
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1232
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1233
    return-void
.end method

.method public whitelist setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1244
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1245
    iget p1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez p1, :cond_15

    iget-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_15

    .line 1246
    iget p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1248
    :cond_15
    return-void
.end method

.method public whitelist setIndicatorBounds(II)V
    .registers 3

    .line 1262
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1263
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1264
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1265
    return-void
.end method

.method public whitelist setIndicatorBoundsRelative(II)V
    .registers 3

    .line 1279
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1280
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1281
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1282
    return-void
.end method

.method public whitelist setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .registers 2

    .line 889
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 890
    return-void
.end method

.method public whitelist setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .registers 2

    .line 861
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 862
    return-void
.end method

.method public whitelist setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .registers 2

    .line 816
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 817
    return-void
.end method

.method public whitelist setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .registers 2

    .line 835
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 836
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 593
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 594
    return-void
.end method

.method public whitelist setSelectedChild(IIZ)Z
    .registers 5

    .line 1002
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object p2

    .line 1004
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1006
    if-nez v0, :cond_24

    .line 1010
    if-nez p3, :cond_10

    const/4 p1, 0x0

    return p1

    .line 1012
    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1014
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_1c

    goto :goto_24

    .line 1018
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1022
    :cond_24
    :goto_24
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p1

    .line 1023
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1025
    invoke-virtual {p2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1028
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist setSelectedGroup(I)V
    .registers 3

    .line 981
    nop

    .line 982
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 983
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 984
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 985
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p1

    .line 986
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 987
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 988
    return-void
.end method
