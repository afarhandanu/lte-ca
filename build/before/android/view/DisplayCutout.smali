.class public final Landroid/view/DisplayCutout;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayCutout$Bounds;,
        Landroid/view/DisplayCutout$CutoutPathParserInfo;,
        Landroid/view/DisplayCutout$Builder;,
        Landroid/view/DisplayCutout$ParcelableWrapper;,
        Landroid/view/DisplayCutout$BoundsPosition;
    }
.end annotation


# static fields
.field public static final blacklist BOUNDS_POSITION_BOTTOM:I = 0x3

.field public static final blacklist BOUNDS_POSITION_LEFT:I = 0x0

.field public static final blacklist BOUNDS_POSITION_LENGTH:I = 0x4

.field public static final blacklist BOUNDS_POSITION_RIGHT:I = 0x2

.field public static final blacklist BOUNDS_POSITION_TOP:I = 0x1

.field private static final greylist-max-o CACHE_LOCK:Ljava/lang/Object;

.field private static final blacklist EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field public static final greylist-max-o EMULATION_OVERLAY_CATEGORY:Ljava/lang/String; = "com.android.internal.display_cutout_emulation"

.field static final blacklist INVALID_OVERRIDES:[I

.field private static final blacklist INVALID_SIDE_OVERRIDE:I = -0x1

.field public static final greylist-max-o NO_CUTOUT:Landroid/view/DisplayCutout;

.field private static final greylist-max-o NULL_PAIR:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SIDE_STRING_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final blacklist SIDE_STRING_LEFT:Ljava/lang/String; = "left"

.field private static final blacklist SIDE_STRING_RIGHT:Ljava/lang/String; = "right"

.field private static final blacklist SIDE_STRING_TOP:Ljava/lang/String; = "top"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayCutout"

.field private static final greylist-max-o ZERO_RECT:Landroid/graphics/Rect;

.field private static greylist-max-o sCachedCutout:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedCutoutPath:Landroid/graphics/Path;

.field private static blacklist sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field private static greylist-max-o sCachedDensity:F

.field private static greylist-max-o sCachedDisplayHeight:I

.field private static greylist-max-o sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedSideOverrides:[I

.field private static greylist-max-o sCachedSpec:Ljava/lang/String;

.field private static blacklist sCachedWaterfallInsets:Landroid/graphics/Insets;


# instance fields
.field private final blacklist mBounds:Landroid/view/DisplayCutout$Bounds;

.field private final blacklist mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field private final greylist-max-o mSafeInsets:Landroid/graphics/Rect;

.field private blacklist mSideOverrides:[I

.field private final blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCACHE_LOCK()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCachedCutoutPath(Landroid/graphics/Path;)V
    .registers 1

    sput-object p0, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCachedCutoutPathParserInfo(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 1

    sput-object p0, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 2

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    .line 83
    new-instance v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    sput-object v1, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 94
    new-instance v2, Landroid/view/DisplayCutout;

    sget-object v3, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    sget-object v5, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v6, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v7, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v8, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v9, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    sput-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 99
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    .line 111
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    .line 168
    const/4 v0, -0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/view/DisplayCutout;->INVALID_OVERRIDES:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 17

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 425
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .registers 17

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/view/DisplayCutout$Bounds;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v3 .. v9}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object/from16 v3, p6

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 507
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 15

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object p4, p6

    move-object p6, p7

    move-object p5, v0

    const/4 p7, 0x0

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 453
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V
    .registers 16

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object p2, p1

    move-object p3, p6

    move-object p5, p7

    move-object p6, p8

    move-object p4, v0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 482
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V
    .registers 16

    .line 549
    invoke-static {p1, p8}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p8

    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object p4, v0

    const/4 p6, 0x0

    move-object p3, p2

    move-object p5, p7

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 552
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 11

    .line 562
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 563
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V
    .registers 6

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    .line 568
    if-nez p2, :cond_9

    sget-object p2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :cond_9
    iput-object p2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 569
    iput-object p3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    .line 570
    if-nez p4, :cond_11

    sget-object p4, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    :cond_11
    iput-object p4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 571
    iput-object p5, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 572
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V
    .registers 12

    .line 556
    invoke-static {p1, p5}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/view/DisplayCutout$Bounds;

    const/4 p1, 0x0

    invoke-direct {v3, p3, p5, p1}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 558
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    .line 525
    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->extractBoundsFromList(Landroid/graphics/Rect;Ljava/util/List;)[Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v4, p1, v0, p2}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    .line 524
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 526
    return-void
.end method

.method private static greylist-max-o atLeastZero(I)I
    .registers 1

    .line 1003
    if-gez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    return p0
.end method

.method private static blacklist computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    .line 1392
    iget v0, p2, Landroid/graphics/Insets;->left:I

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x3

    invoke-static {p0, p1, v1, v2}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1394
    iget v1, p2, Landroid/graphics/Insets;->top:I

    const/4 v3, 0x1

    aget-object v3, p3, v3

    const/16 v4, 0x30

    invoke-static {p0, p1, v3, v4}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1396
    iget v3, p2, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const/4 v5, 0x5

    invoke-static {p0, p1, v4, v5}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1398
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    aget-object p3, p3, v2

    const/16 v2, 0x50

    invoke-static {p0, p1, p3, v2}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1401
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static blacklist computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .registers 4

    .line 1385
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1386
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object p2

    .line 1385
    invoke-static {p0, p1, v0, p2}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;
    .registers 9

    .line 1029
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v0
.end method

.method public static blacklist extractBoundsFromList(Landroid/graphics/Rect;Ljava/util/List;)[Landroid/graphics/Rect;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)[",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 606
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 607
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_e

    .line 608
    sget-object v4, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    aput-object v4, v1, v3

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 610
    :cond_e
    if-eqz p0, :cond_47

    if-eqz p1, :cond_47

    .line 614
    iget v0, p0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    if-gtz v0, :cond_1e

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    move p0, v2

    goto :goto_1f

    :cond_1e
    :goto_1e
    move p0, v3

    .line 615
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 616
    if-eqz p0, :cond_3c

    .line 617
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_38

    .line 618
    aput-object v0, v1, v3

    goto :goto_46

    .line 620
    :cond_38
    const/4 v4, 0x3

    aput-object v0, v1, v4

    goto :goto_46

    .line 623
    :cond_3c
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_43

    .line 624
    aput-object v0, v1, v2

    goto :goto_46

    .line 626
    :cond_43
    const/4 v4, 0x2

    aput-object v0, v1, v4

    .line 629
    :goto_46
    goto :goto_23

    .line 631
    :cond_47
    return-object v1
.end method

.method private static blacklist findCutoutInsetForSide(IILandroid/graphics/Rect;I)I
    .registers 6

    .line 1406
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1407
    return v1

    .line 1410
    :cond_8
    nop

    .line 1411
    sparse-switch p3, :sswitch_data_44

    .line 1416
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown gravity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1413
    :sswitch_26
    iget p0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_43

    .line 1412
    :sswitch_2e
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_43

    .line 1415
    :sswitch_35
    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_43

    .line 1414
    :sswitch_3d
    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1411
    :goto_43
    return p0

    :sswitch_data_44
    .sparse-switch
        0x3 -> :sswitch_3d
        0x5 -> :sswitch_35
        0x30 -> :sswitch_2e
        0x50 -> :sswitch_26
    .end sparse-switch
.end method

.method public static blacklist fromBoundingRect(IIIII)Landroid/view/DisplayCutout;
    .registers 12

    .line 1015
    const/4 v0, 0x4

    new-array v4, v0, [Landroid/graphics/Rect;

    .line 1016
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    .line 1017
    new-instance v2, Landroid/graphics/Rect;

    if-ne p4, v1, :cond_e

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_11

    :cond_e
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_11
    aput-object v2, v4, v1

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1019
    :cond_16
    new-instance v1, Landroid/view/DisplayCutout;

    sget-object v2, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v1
.end method

.method public static blacklist fromBounds([Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 7

    .line 1039
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v0
.end method

.method public static blacklist fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;
    .registers 15

    .line 1187
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutPath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutApproximationRect(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float v6, v2, v3

    .line 1191
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;

    move-result-object v7

    .line 1192
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I

    move-result-object v8

    .line 1187
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v8}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public static blacklist fromSpec(Ljava/lang/String;IIFLandroid/graphics/Insets;[I)Landroid/view/DisplayCutout;
    .registers 15

    .line 1203
    const/4 v1, 0x0

    move v4, p1

    move v5, p2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/DisplayCutout;

    return-object p0
.end method

.method private static blacklist getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 2

    .line 575
    if-nez p0, :cond_5

    .line 576
    sget-object p0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    return-object p0

    .line 577
    :cond_5
    if-eqz p1, :cond_d

    .line 578
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1

    .line 580
    :cond_d
    return-object p0
.end method

.method private static blacklist getDisplayCutoutApproximationRect(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1065
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 1066
    const v0, 0x1070058

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1068
    if-ltz p1, :cond_13

    array-length v1, v0

    if-ge p1, v1, :cond_13

    .line 1069
    aget-object p0, v0, p1

    return-object p0

    .line 1071
    :cond_13
    const p1, 0x104029f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDisplayCutoutPath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1050
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 1051
    const v0, 0x1070059

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1052
    if-ltz p1, :cond_13

    array-length v1, v0

    if-ge p1, v1, :cond_13

    .line 1053
    aget-object p0, v0, p1

    return-object p0

    .line 1055
    :cond_13
    const p1, 0x104029e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1151
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 1152
    const v0, 0x107005a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1154
    const/4 v1, 0x0

    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_19

    .line 1155
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    goto :goto_1a

    .line 1156
    :cond_19
    move p1, v1

    .line 1157
    :goto_1a
    if-eqz p1, :cond_25

    .line 1158
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_2c

    .line 1159
    :cond_25
    const p1, 0x107009b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 1160
    :goto_2c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1161
    array-length p1, p0

    if-nez p1, :cond_35

    .line 1162
    sget-object p0, Landroid/view/DisplayCutout;->INVALID_OVERRIDES:[I

    return-object p0

    .line 1163
    :cond_35
    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_66

    .line 1168
    nop

    :goto_3a
    const/4 p1, 0x3

    if-gt v1, p1, :cond_65

    .line 1169
    aget p1, p0, v1

    if-ltz p1, :cond_48

    aget p1, p0, v1

    if-ge p1, v0, :cond_48

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1171
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid side override definition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1172
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1175
    :cond_65
    return-object p0

    .line 1164
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid side override definition, exact 4 overrides required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1166
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 4

    .line 1106
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 1107
    const v0, 0x1070080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1109
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 1110
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    goto :goto_20

    .line 1112
    :cond_19
    const p1, 0x11101b5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 1114
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1115
    return p0
.end method

.method public static blacklist getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 4

    .line 1084
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 1085
    const v0, 0x107009e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1087
    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 1088
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    goto :goto_20

    .line 1090
    :cond_19
    const p1, 0x1110201

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 1092
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1093
    return p0
.end method

.method private static blacklist getRotationToOverride(I[Landroid/graphics/Rect;I)I
    .registers 7

    .line 1355
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 1356
    return p2

    .line 1358
    :cond_4
    nop

    .line 1359
    const/4 v1, 0x0

    move v2, v0

    :goto_7
    const/4 v3, 0x3

    if-gt v1, v3, :cond_1a

    .line 1360
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1361
    goto :goto_17

    .line 1363
    :cond_13
    if-eq v2, v0, :cond_16

    .line 1365
    return p2

    .line 1367
    :cond_16
    move v2, v1

    .line 1359
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1369
    :cond_1a
    if-ne v2, v0, :cond_1d

    .line 1370
    return p2

    .line 1372
    :cond_1d
    sub-int/2addr p0, v2

    .line 1373
    if-gez p0, :cond_22

    .line 1374
    add-int/lit8 p0, p0, 0x4

    .line 1376
    :cond_22
    return p0
.end method

.method private static blacklist getSideOverride([II)I
    .registers 4

    .line 1346
    if-eqz p0, :cond_a

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_a

    .line 1349
    :cond_7
    aget p0, p0, p1

    return p0

    .line 1347
    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;
    .registers 7

    .line 1129
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 1130
    const v0, 0x10700f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1131
    const/4 v1, 0x0

    if-ltz p1, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_19

    .line 1132
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    goto :goto_1a

    .line 1133
    :cond_19
    move p1, v1

    .line 1134
    :goto_1a
    if-eqz p1, :cond_3c

    .line 1135
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1136
    nop

    .line 1137
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 1138
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1139
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1140
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1136
    invoke-static {p1, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    .line 1141
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1142
    goto :goto_40

    .line 1143
    :cond_3c
    invoke-static {p0}, Landroid/view/DisplayCutout;->loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;

    move-result-object p1

    .line 1145
    :goto_40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1146
    return-object p1
.end method

.method private blacklist insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 974
    if-gtz p2, :cond_6

    iget v0, p5, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_f

    .line 975
    :cond_6
    iget v0, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p2

    iput p2, p5, Landroid/graphics/Rect;->top:I

    .line 977
    :cond_f
    if-gtz p4, :cond_15

    iget p2, p5, Landroid/graphics/Rect;->bottom:I

    if-lez p2, :cond_1e

    .line 978
    :cond_15
    iget p2, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    invoke-static {p2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p2

    iput p2, p5, Landroid/graphics/Rect;->bottom:I

    .line 980
    :cond_1e
    if-gtz p1, :cond_24

    iget p2, p5, Landroid/graphics/Rect;->left:I

    if-lez p2, :cond_2d

    .line 981
    :cond_24
    iget p2, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 983
    :cond_2d
    if-gtz p3, :cond_33

    iget p1, p5, Landroid/graphics/Rect;->right:I

    if-lez p1, :cond_3c

    .line 984
    :cond_33
    iget p1, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    invoke-static {p1}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->right:I

    .line 986
    :cond_3c
    return-object p5
.end method

.method private static blacklist loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;
    .registers 5

    .line 1298
    nop

    .line 1299
    const v0, 0x10503d1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1300
    const v1, 0x10503d3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1301
    const v2, 0x10503d2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1302
    const v3, 0x10503d0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1298
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Landroid/graphics/Insets;",
            "[I)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation

    .line 1227
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v5, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    goto :goto_11

    :cond_f
    move-object/from16 v0, p0

    .line 1228
    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v10, v3}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1229
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v0

    .line 1232
    :cond_22
    invoke-static/range {p2 .. p5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v9

    .line 1235
    sget-object v3, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 1236
    :try_start_29
    sget-object v4, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    sget v4, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    if-ne v4, v1, :cond_59

    sget v4, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    if-ne v4, v2, :cond_59

    sget v4, Landroid/view/DisplayCutout;->sCachedDensity:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_59

    sget-object v4, Landroid/view/DisplayCutout;->sCachedWaterfallInsets:Landroid/graphics/Insets;

    .line 1239
    invoke-virtual {v10, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    sget v4, Landroid/view/DisplayCutout;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_59

    sget-object v4, Landroid/view/DisplayCutout;->sCachedSideOverrides:[I

    .line 1241
    invoke-static {v4, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1242
    sget-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v3

    return-object v0

    .line 1244
    :cond_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_29 .. :try_end_5a} :catchall_12a

    .line 1246
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1248
    new-instance v0, Landroid/view/CutoutSpecification$Parser;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v5, v3, v4, v9}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    .line 1250
    invoke-virtual {v0, v12}, Landroid/view/CutoutSpecification$Parser;->parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;

    move-result-object v13

    .line 1251
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getSafeInset()Landroid/graphics/Rect;

    move-result-object v0

    .line 1252
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getLeftBound()Landroid/graphics/Rect;

    move-result-object v14

    .line 1253
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getTopBound()Landroid/graphics/Rect;

    move-result-object v15

    .line 1254
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getRightBound()Landroid/graphics/Rect;

    move-result-object v16

    .line 1255
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getBottomBound()Landroid/graphics/Rect;

    move-result-object v17

    .line 1257
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v10, v6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_aa

    .line 1258
    iget v6, v10, Landroid/graphics/Insets;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1259
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v10, Landroid/graphics/Insets;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 1260
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v10, Landroid/graphics/Insets;->right:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 1261
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v10, Landroid/graphics/Insets;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1262
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1258
    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1265
    :cond_aa
    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 1267
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct/range {v0 .. v9}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1268
    move v8, v1

    move/from16 v18, v9

    move v9, v2

    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroid/view/DisplayCutout;->getSideOverride([II)I

    move-result v2

    .line 1269
    move v3, v1

    new-instance v1, Landroid/view/DisplayCutout$Bounds;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v14

    move v14, v2

    move-object v2, v4

    move-object v4, v15

    move v15, v3

    move-object v3, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    .line 1270
    invoke-static {v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v1

    .line 1271
    invoke-static {v14, v1, v15}, Landroid/view/DisplayCutout;->getRotationToOverride(I[Landroid/graphics/Rect;I)I

    move-result v2

    .line 1273
    if-eqz v2, :cond_e6

    .line 1274
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 1276
    :cond_e6
    move-object v2, v1

    invoke-static {v8, v9, v10, v2}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1278
    move-object v4, v0

    new-instance v0, Landroid/view/DisplayCutout;

    new-instance v19, Landroid/view/DisplayCutout$Bounds;

    aget-object v20, v2, v15

    const/4 v3, 0x1

    aget-object v21, v2, v3

    const/4 v3, 0x2

    aget-object v22, v2, v3

    const/4 v3, 0x3

    aget-object v23, v2, v3

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v19 .. v25}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object v2, v10

    move-object v5, v11

    move-object/from16 v3, v19

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 1283
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1284
    sget-object v2, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1285
    :try_start_115
    sput-object v12, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    .line 1286
    sput v8, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    .line 1287
    sput v9, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    .line 1288
    sput p6, Landroid/view/DisplayCutout;->sCachedDensity:F

    .line 1289
    sput-object v1, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    .line 1290
    sput-object p7, Landroid/view/DisplayCutout;->sCachedWaterfallInsets:Landroid/graphics/Insets;

    .line 1291
    sput v18, Landroid/view/DisplayCutout;->sCachedPhysicalPixelDisplaySizeRatio:F

    .line 1292
    sput-object p8, Landroid/view/DisplayCutout;->sCachedSideOverrides:[I

    .line 1293
    monitor-exit v2

    .line 1294
    return-object v1

    .line 1293
    :catchall_127
    move-exception v0

    monitor-exit v2
    :try_end_129
    .catchall {:try_start_115 .. :try_end_129} :catchall_127

    throw v0

    .line 1244
    :catchall_12a
    move-exception v0

    :try_start_12b
    monitor-exit v3
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    throw v0
.end method

.method private static blacklist sideOverridesToString([I)Ljava/lang/String;
    .registers 7

    .line 879
    if-nez p0, :cond_6

    .line 880
    const-string/jumbo p0, "null"

    return-object p0

    .line 882
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    array-length v1, p0

    .line 885
    const/4 v2, 0x4

    if-eq v1, v2, :cond_25

    .line 886
    const-string v2, "length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_25
    nop

    .line 889
    const/4 v2, 0x0

    move v3, v2

    :goto_28
    if-ge v2, v1, :cond_65

    .line 890
    aget v4, p0, v2

    .line 891
    const/4 v5, -0x1

    if-eq v4, v5, :cond_62

    .line 892
    if-eqz v3, :cond_36

    .line 893
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_36
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    packed-switch v4, :pswitch_data_72

    goto :goto_61

    .line 907
    :pswitch_47
    const-string v3, "bottom"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 904
    :pswitch_4d
    const-string/jumbo v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    goto :goto_61

    .line 901
    :pswitch_54
    const-string/jumbo v3, "top"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    goto :goto_61

    .line 898
    :pswitch_5b
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    nop

    .line 910
    :goto_61
    const/4 v3, 0x1

    .line 889
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 913
    :cond_65
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_54
        :pswitch_4d
        :pswitch_47
    .end packed-switch
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 920
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 921
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 922
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    const-wide v2, 0x10b00000003L

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 923
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    const-wide v2, 0x10b00000004L

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 924
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    const-wide v2, 0x10b00000005L

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 925
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    const-wide v2, 0x10b00000006L

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 926
    iget-object v0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const-wide v2, 0x10b00000007L

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 927
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    if-eqz v0, :cond_6e

    .line 928
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    array-length v2, v0

    :goto_5f
    if-ge v1, v2, :cond_6e

    aget v3, v0, v1

    .line 929
    const-wide v4, 0x20500000008L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 932
    :cond_6e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 933
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 855
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 856
    return v0

    .line 858
    :cond_4
    instance-of v1, p1, Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 859
    check-cast p1, Landroid/view/DisplayCutout;

    .line 860
    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    iget-object v3, p1, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v1, v3}, Landroid/view/DisplayCutout$Bounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 861
    invoke-virtual {v1, v3}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v3, p1, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 862
    invoke-virtual {v1, v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    iget-object p1, p1, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 863
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 860
    :goto_3f
    return v0

    .line 865
    :cond_40
    return v2
.end method

.method public whitelist getBoundingRectBottom()Landroid/graphics/Rect;
    .registers 3

    .line 782
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectLeft()Landroid/graphics/Rect;
    .registers 3

    .line 749
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectRight()Landroid/graphics/Rect;
    .registers 3

    .line 771
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectTop()Landroid/graphics/Rect;
    .registers 3

    .line 760
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRects()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 715
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 716
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 719
    :cond_20
    return-object v0
.end method

.method public blacklist getBoundingRectsAll()[Landroid/graphics/Rect;
    .registers 2

    .line 738
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCutoutPath()Landroid/graphics/Path;
    .registers 7

    .line 796
    iget-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-static {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->-$$Nest$mhasCutout(Landroid/view/DisplayCutout$CutoutPathParserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 797
    return-object v1

    .line 799
    :cond_a
    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_d
    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    sget-object v3, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 801
    sget-object v1, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object v1

    .line 803
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_98

    .line 804
    new-instance v0, Landroid/view/CutoutSpecification$Parser;

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 805
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 806
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 807
    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 808
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/CutoutSpecification$Parser;->parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Landroid/view/CutoutSpecification;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_97

    .line 814
    :cond_50
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 815
    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v2

    if-eqz v2, :cond_72

    .line 816
    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 817
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 818
    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 819
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v4

    .line 816
    invoke-static {v2, v3, v4, v1}, Landroid/util/RotationUtils;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 823
    :cond_72
    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 824
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 826
    sget-object v2, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 827
    :try_start_87
    new-instance v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-direct {v1, v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V

    sput-object v1, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 828
    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    .line 829
    monitor-exit v2

    .line 830
    return-object v0

    .line 829
    :catchall_94
    move-exception v0

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_94

    throw v0

    .line 812
    :cond_97
    :goto_97
    return-object v1

    .line 803
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method public blacklist getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .registers 2

    .line 839
    iget-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-object v0
.end method

.method public blacklist getRotated(IIII)Landroid/view/DisplayCutout;
    .registers 24

    .line 1311
    move-object/from16 v0, p0

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne v0, v1, :cond_9

    .line 1312
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v0

    .line 1314
    :cond_9
    invoke-static/range {p3 .. p4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    .line 1315
    if-nez v1, :cond_10

    .line 1316
    return-object v0

    .line 1318
    :cond_10
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1320
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    .line 1321
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1322
    move v8, v5

    :goto_27
    array-length v9, v3

    if-ge v8, v9, :cond_3b

    .line 1323
    aget-object v9, v3, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_33

    goto :goto_38

    .line 1324
    :cond_33
    aget-object v9, v3, v8

    invoke-static {v9, v4, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1322
    :goto_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 1326
    :cond_3b
    neg-int v4, v1

    .line 1327
    iget-object v8, v0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    move/from16 v9, p4

    invoke-static {v8, v9}, Landroid/view/DisplayCutout;->getSideOverride([II)I

    move-result v8

    .line 1328
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1329
    invoke-static {v8, v3, v4}, Landroid/view/DisplayCutout;->getRotationToOverride(I[Landroid/graphics/Rect;I)I

    move-result v4

    .line 1328
    invoke-static {v10, v4}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 1330
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v4

    .line 1331
    new-instance v9, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 1332
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v12

    .line 1333
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v13

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v14

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v15

    .line 1334
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v17

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v18

    move/from16 v16, p4

    invoke-direct/range {v9 .. v18}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1335
    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7f

    const/4 v5, 0x1

    .line 1336
    :cond_7f
    if-eqz v5, :cond_83

    move v1, v7

    goto :goto_84

    :cond_83
    move v1, v6

    .line 1337
    :goto_84
    if-eqz v5, :cond_87

    goto :goto_88

    :cond_87
    move v6, v7

    .line 1338
    :goto_88
    nop

    .line 1339
    invoke-static {v3, v2, v9}, Landroid/view/DisplayCutout;->constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;

    move-result-object v2

    .line 1340
    invoke-static {v1, v6, v2}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1341
    iget-object v0, v0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    iput-object v0, v2, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 1342
    invoke-virtual {v2, v1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSafeInsetBottom()I
    .registers 2

    .line 668
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getSafeInsetLeft()I
    .registers 2

    .line 677
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getSafeInsetRight()I
    .registers 2

    .line 686
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getSafeInsetTop()I
    .registers 2

    .line 659
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public greylist-max-o getSafeInsets()Landroid/graphics/Rect;
    .registers 3

    .line 696
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public whitelist getWaterfallInsets()Landroid/graphics/Insets;
    .registers 2

    .line 595
    iget-object v0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 844
    nop

    .line 845
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    .line 846
    const v0, 0xbc8f

    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$Bounds;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 847
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v2}, Landroid/graphics/Insets;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 848
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 849
    mul-int/2addr v1, v0

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 850
    return v1
.end method

.method public greylist-max-o inset(IIII)Landroid/view/DisplayCutout;
    .registers 17

    .line 942
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    if-eqz p4, :cond_18

    .line 943
    :cond_8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 944
    :cond_18
    return-object p0

    .line 947
    :cond_19
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;->insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 952
    if-nez p1, :cond_37

    if-nez p2, :cond_37

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 953
    return-object p0

    .line 956
    :cond_37
    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 957
    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 956
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;->insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 959
    iget-object v4, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v9

    .line 960
    const/4 v4, 0x0

    :goto_4e
    array-length v5, v9

    if-ge v4, v5, :cond_65

    .line 961
    aget-object v5, v9, v4

    sget-object v6, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 962
    aget-object v5, v9, v4

    neg-int v6, p1

    neg-int v8, p2

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 960
    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 966
    :cond_65
    new-instance v6, Landroid/view/DisplayCutout;

    invoke-static {v3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v8

    iget-object v10, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v6
.end method

.method public greylist-max-o isBoundsEmpty()Z
    .registers 2

    .line 640
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$misEmpty(Landroid/view/DisplayCutout$Bounds;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 3

    .line 650
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 8

    .line 998
    new-instance v0, Landroid/view/DisplayCutout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v5, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutout{insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " waterfall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boundingRect={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} cutoutPathParserInfo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} sideOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 874
    invoke-static {v1}, Landroid/view/DisplayCutout;->sideOverridesToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    return-object v0
.end method
