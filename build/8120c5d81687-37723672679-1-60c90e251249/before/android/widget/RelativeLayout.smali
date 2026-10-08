.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final whitelist ABOVE:I = 0x2

.field public static final whitelist ALIGN_BASELINE:I = 0x4

.field public static final whitelist ALIGN_BOTTOM:I = 0x8

.field public static final whitelist ALIGN_END:I = 0x13

.field public static final whitelist ALIGN_LEFT:I = 0x5

.field public static final whitelist ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final whitelist ALIGN_PARENT_END:I = 0x15

.field public static final whitelist ALIGN_PARENT_LEFT:I = 0x9

.field public static final whitelist ALIGN_PARENT_RIGHT:I = 0xb

.field public static final whitelist ALIGN_PARENT_START:I = 0x14

.field public static final whitelist ALIGN_PARENT_TOP:I = 0xa

.field public static final whitelist ALIGN_RIGHT:I = 0x7

.field public static final whitelist ALIGN_START:I = 0x12

.field public static final whitelist ALIGN_TOP:I = 0x6

.field public static final whitelist BELOW:I = 0x3

.field public static final whitelist CENTER_HORIZONTAL:I = 0xe

.field public static final whitelist CENTER_IN_PARENT:I = 0xd

.field public static final whitelist CENTER_VERTICAL:I = 0xf

.field private static final greylist-max-o DEFAULT_WIDTH:I = 0x10000

.field public static final whitelist END_OF:I = 0x11

.field public static final whitelist LEFT_OF:I = 0x0

.field public static final whitelist RIGHT_OF:I = 0x1

.field private static final greylist-max-o RULES_HORIZONTAL:[I

.field private static final greylist-max-o RULES_VERTICAL:[I

.field public static final whitelist START_OF:I = 0x10

.field public static final whitelist TRUE:I = -0x1

.field private static final greylist-max-o VALUE_NOT_SET:I = -0x80000000

.field private static final greylist-max-o VERB_COUNT:I = 0x16


# instance fields
.field private greylist-max-o mAllowBrokenMeasureSpecs:Z

.field private greylist-max-o mBaselineView:Landroid/view/View;

.field private final greylist-max-o mContentBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDirtyHierarchy:Z

.field private final greylist-max-o mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private greylist-max-p mGravity:I

.field private greylist-max-o mIgnoreGravity:I

.field private greylist-max-o mMeasureVerticalWithPaddingMargin:Z

.field private final greylist-max-o mSelfBounds:Landroid/graphics/Rect;

.field private greylist-max-o mSortedHorizontalChildren:[Landroid/view/View;

.field private greylist-max-o mSortedVerticalChildren:[Landroid/view/View;

.field private greylist-max-o mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 197
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0x8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 201
    new-array v0, v4, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_14
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 252
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 212
    const v1, 0x800033

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 215
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 218
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 223
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout-IA;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 232
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 257
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method private greylist-max-o applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .registers 7

    .line 916
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 917
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 920
    if-eqz v1, :cond_1d

    .line 921
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_31

    .line 923
    :cond_1d
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_31

    aget v0, p3, v0

    if-eqz v0, :cond_31

    .line 924
    if-ltz p2, :cond_31

    .line 925
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 929
    :cond_31
    :goto_31
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 930
    if-eqz v1, :cond_46

    .line 931
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_56

    .line 933
    :cond_46
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_56

    aget v0, p3, v0

    if-eqz v0, :cond_56

    .line 934
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 937
    :cond_56
    :goto_56
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 938
    if-eqz v1, :cond_68

    .line 939
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_78

    .line 940
    :cond_68
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_78

    aget v0, p3, v0

    if-eqz v0, :cond_78

    .line 941
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 944
    :cond_78
    :goto_78
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 945
    if-eqz v1, :cond_8a

    .line 946
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_9e

    .line 947
    :cond_8a
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_9e

    aget v0, p3, v0

    if-eqz v0, :cond_9e

    .line 948
    if-ltz p2, :cond_9e

    .line 949
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 953
    :cond_9e
    :goto_9e
    const/16 v0, 0x9

    aget v0, p3, v0

    if-eqz v0, :cond_ac

    .line 954
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 957
    :cond_ac
    const/16 v0, 0xb

    aget p3, p3, v0

    if-eqz p3, :cond_bd

    .line 958
    if-ltz p2, :cond_bd

    .line 959
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 962
    :cond_bd
    return-void
.end method

.method private greylist-max-o applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 8

    .line 965
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 968
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 969
    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_17

    .line 970
    if-eq p3, v3, :cond_10

    .line 971
    sub-int/2addr v1, p3

    .line 973
    :cond_10
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 974
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 975
    return-void

    .line 980
    :cond_17
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 981
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 983
    const/4 p3, 0x2

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 984
    if-eqz v1, :cond_32

    .line 985
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_46

    .line 987
    :cond_32
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_46

    aget p3, v0, p3

    if-eqz p3, :cond_46

    .line 988
    if-ltz p2, :cond_46

    .line 989
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int p3, p2, p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 993
    :cond_46
    :goto_46
    const/4 p3, 0x3

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 994
    if-eqz v1, :cond_5b

    .line 995
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_6b

    .line 997
    :cond_5b
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_6b

    aget p3, v0, p3

    if-eqz p3, :cond_6b

    .line 998
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1001
    :cond_6b
    :goto_6b
    const/4 p3, 0x6

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 1002
    if-eqz v1, :cond_7d

    .line 1003
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_8d

    .line 1004
    :cond_7d
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_8d

    aget p3, v0, p3

    if-eqz p3, :cond_8d

    .line 1005
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1008
    :cond_8d
    :goto_8d
    const/16 p3, 0x8

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 1009
    if-eqz v1, :cond_a0

    .line 1010
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_b4

    .line 1011
    :cond_a0
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_b4

    aget p3, v0, p3

    if-eqz p3, :cond_b4

    .line 1012
    if-ltz p2, :cond_b4

    .line 1013
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int p3, p2, p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1017
    :cond_b4
    :goto_b4
    const/16 p3, 0xa

    aget p3, v0, p3

    if-eqz p3, :cond_c2

    .line 1018
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1021
    :cond_c2
    const/16 p3, 0xc

    aget p3, v0, p3

    if-eqz p3, :cond_d3

    .line 1022
    if-ltz p2, :cond_d3

    .line 1023
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1026
    :cond_d3
    return-void
.end method

.method private static greylist-max-o centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 3

    .line 1077
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    .line 1078
    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    .line 1080
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1081
    add-int/2addr p2, p0

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1082
    return-void
.end method

.method private static greylist-max-o centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 3

    .line 1085
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    .line 1086
    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    .line 1088
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1089
    add-int/2addr p2, p0

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1090
    return-void
.end method

.method private greylist-max-o compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 5

    .line 668
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 669
    if-eqz v0, :cond_c

    .line 670
    return v0

    .line 672
    :cond_c
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private greylist-max-o getChildMeasureSpec(IIIIIIII)I
    .registers 14

    .line 757
    nop

    .line 758
    nop

    .line 763
    const/4 v0, 0x0

    if-gez p8, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    move v1, v0

    .line 764
    :goto_8
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_29

    iget-boolean v4, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v4, :cond_29

    .line 765
    if-eq p1, v3, :cond_1d

    if-eq p2, v3, :cond_1d

    .line 767
    sub-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 768
    move v0, v2

    goto :goto_24

    .line 769
    :cond_1d
    if-ltz p3, :cond_22

    .line 771
    nop

    .line 772
    move v0, v2

    goto :goto_24

    .line 775
    :cond_22
    nop

    .line 776
    move p3, v0

    .line 779
    :goto_24
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 783
    :cond_29
    nop

    .line 784
    nop

    .line 788
    if-ne p1, v3, :cond_2f

    .line 789
    add-int/2addr p6, p4

    goto :goto_30

    .line 788
    :cond_2f
    move p6, p1

    .line 791
    :goto_30
    if-ne p2, v3, :cond_35

    .line 792
    sub-int/2addr p8, p7

    sub-int/2addr p8, p5

    goto :goto_36

    .line 791
    :cond_35
    move p8, p2

    .line 796
    :goto_36
    sub-int/2addr p8, p6

    .line 798
    if-eq p1, v3, :cond_44

    if-eq p2, v3, :cond_44

    .line 800
    if-eqz v1, :cond_3e

    move v2, v0

    .line 801
    :cond_3e
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    move-result p3

    move v0, v2

    goto :goto_6a

    .line 803
    :cond_44
    if-ltz p3, :cond_51

    .line 805
    nop

    .line 807
    if-ltz p8, :cond_4f

    .line 809
    invoke-static {p8, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v0, v2

    goto :goto_6a

    .line 812
    :cond_4f
    move v0, v2

    goto :goto_6a

    .line 814
    :cond_51
    const/4 p1, -0x1

    if-ne p3, p1, :cond_5d

    .line 817
    if-eqz v1, :cond_57

    move v2, v0

    .line 818
    :cond_57
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    move-result p3

    move v0, v2

    goto :goto_6a

    .line 819
    :cond_5d
    const/4 p1, -0x2

    if-ne p3, p1, :cond_69

    .line 822
    if-ltz p8, :cond_66

    .line 824
    nop

    .line 825
    move p3, p8

    move v0, v3

    goto :goto_6a

    .line 829
    :cond_66
    nop

    .line 830
    move p3, v0

    goto :goto_6a

    .line 819
    :cond_69
    move p3, v0

    .line 835
    :goto_6a
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private greylist-max-o getRelatedView([II)Landroid/view/View;
    .registers 6

    .line 1029
    aget p1, p1, p2

    .line 1030
    const/4 v0, 0x0

    if-eqz p1, :cond_46

    .line 1031
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1032
    if-nez p1, :cond_14

    return-object v0

    .line 1033
    :cond_14
    iget-object p1, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1036
    :goto_16
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 1037
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 1038
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v2

    aget v1, v1, p2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1040
    if-eqz v1, :cond_44

    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne p1, v2, :cond_41

    goto :goto_44

    .line 1041
    :cond_41
    iget-object p1, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_16

    .line 1040
    :cond_44
    :goto_44
    return-object v0

    .line 1044
    :cond_45
    return-object p1

    .line 1047
    :cond_46
    return-object v0
.end method

.method private greylist-max-o getRelatedViewBaselineOffset([I)I
    .registers 5

    .line 1062
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object p1

    .line 1063
    const/4 v0, -0x1

    if-eqz p1, :cond_22

    .line 1064
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1065
    if-eq v1, v0, :cond_22

    .line 1066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1067
    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_22

    .line 1068
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1069
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    .line 1073
    :cond_22
    return v0
.end method

.method private greylist-max-o getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 1051
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object p1

    .line 1052
    if-eqz p1, :cond_15

    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 1054
    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_15

    .line 1055
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1

    .line 1058
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 262
    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 264
    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RelativeLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 266
    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 267
    const/4 p1, 0x0

    iget p2, v1, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout;->mGravity:I

    .line 268
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    return-void
.end method

.method private greylist-max-o measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 14

    .line 686
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p3

    .line 691
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p2

    .line 696
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 697
    return-void
.end method

.method private greylist-max-o measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 14

    .line 701
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p3

    .line 706
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-gez p4, :cond_31

    iget-boolean v3, v0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v3, :cond_31

    .line 707
    iget p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz p4, :cond_2c

    .line 708
    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_56

    .line 715
    :cond_2c
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_56

    .line 719
    :cond_31
    iget-boolean v3, v0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v3, :cond_46

    .line 720
    iget v3, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int/2addr p4, v3

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr p4, v0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p4, v0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_4a

    .line 723
    :cond_46
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 727
    :goto_4a
    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_50

    .line 728
    goto :goto_52

    .line 730
    :cond_50
    const/high16 v1, -0x80000000

    .line 732
    :goto_52
    invoke-static {p4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 735
    :goto_56
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 736
    return-void
.end method

.method private greylist-max-o positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 5

    .line 869
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 870
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int/2addr p3, v0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, v0

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 871
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_30

    .line 873
    :cond_1c
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v0

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 874
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 876
    :goto_30
    return-void
.end method

.method private greylist-max-o positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 9

    .line 841
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 842
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v0

    .line 844
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_24

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_24

    .line 846
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_64

    .line 847
    :cond_24
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_3d

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_3d

    .line 849
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_64

    .line 850
    :cond_3d
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_64

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_64

    .line 852
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_5a

    const/16 v1, 0xe

    aget v1, v0, v1

    if-eqz v1, :cond_56

    goto :goto_5a

    .line 862
    :cond_56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_64

    .line 853
    :cond_5a
    :goto_5a
    if-nez p4, :cond_60

    .line 854
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_63

    .line 856
    :cond_60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 858
    :goto_63
    return v2

    .line 865
    :cond_64
    :goto_64
    const/16 p1, 0x15

    aget p1, v0, p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    return v2
.end method

.method private greylist-max-o positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 9

    .line 881
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 883
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_20

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_20

    .line 885
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_82

    .line 886
    :cond_20
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_39

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_39

    .line 888
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_82

    .line 889
    :cond_39
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_82

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_82

    .line 891
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_67

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_52

    goto :goto_67

    .line 900
    :cond_52
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 901
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_82

    .line 892
    :cond_67
    :goto_67
    if-nez p4, :cond_6d

    .line 893
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_81

    .line 895
    :cond_6d
    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 896
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 898
    :goto_81
    return v2

    .line 904
    :cond_82
    :goto_82
    const/16 p1, 0xc

    aget p1, v0, p1

    if-eqz p1, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    return v2
.end method

.method private greylist-max-o queryCompatibilityModes(Landroid/content/Context;)V
    .registers 5

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 273
    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 274
    const/16 v0, 0x12

    if-lt p1, v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 275
    return-void
.end method

.method private greylist-max-o sortChildren()V
    .registers 5

    .line 385
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 386
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_11

    .line 387
    :cond_d
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 390
    :cond_11
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_1e

    .line 391
    :cond_1a
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 394
    :cond_1e
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 395
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 397
    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_30

    .line 398
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 401
    :cond_30
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v2, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 402
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v2, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 403
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1126
    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return p1
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7

    .line 1144
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_11

    .line 1145
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1149
    :cond_11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_25

    .line 1150
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1153
    :cond_25
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1154
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4a

    .line 1155
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1156
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->clear()V

    .line 1157
    const/4 p1, 0x1

    return p1

    .line 1159
    :cond_4a
    goto :goto_2b

    .line 1161
    :cond_4b
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->clear()V

    .line 1162
    return v1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1131
    sget-boolean v0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1c

    .line 1132
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_10

    .line 1133
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    .line 1134
    :cond_10
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    .line 1135
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1138
    :cond_1c
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    .line 1110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1167
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :goto_f
    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 320
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public whitelist getIgnoreGravity()I
    .registers 2

    .line 305
    iget v0, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 1096
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    .line 1098
    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_30

    .line 1099
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1100
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_2d

    .line 1101
    nop

    .line 1102
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1103
    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p5

    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p4

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 1098
    :cond_2d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 1106
    :cond_30
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 30

    .line 407
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 408
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 409
    invoke-direct {v0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 412
    :cond_c
    nop

    .line 413
    nop

    .line 415
    nop

    .line 416
    nop

    .line 418
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 419
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 420
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 421
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 424
    const/4 v6, -0x1

    if-eqz v1, :cond_24

    .line 425
    goto :goto_25

    .line 424
    :cond_24
    move v4, v6

    .line 428
    :goto_25
    if-eqz v3, :cond_28

    .line 429
    goto :goto_29

    .line 428
    :cond_28
    move v5, v6

    .line 432
    :goto_29
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v7, :cond_2f

    .line 433
    move v8, v4

    goto :goto_30

    .line 432
    :cond_2f
    move v8, v2

    .line 436
    :goto_30
    if-ne v3, v7, :cond_34

    .line 437
    move v9, v5

    goto :goto_35

    .line 436
    :cond_34
    move v9, v2

    .line 440
    :goto_35
    nop

    .line 441
    iget v10, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v11, 0x800007

    and-int/2addr v10, v11

    .line 442
    const v11, 0x800003

    if-eq v10, v11, :cond_45

    if-eqz v10, :cond_45

    const/4 v10, 0x1

    goto :goto_46

    :cond_45
    move v10, v2

    .line 443
    :goto_46
    iget v11, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    .line 444
    const/16 v13, 0x30

    if-eq v11, v13, :cond_52

    if-eqz v11, :cond_52

    const/4 v11, 0x1

    goto :goto_53

    :cond_52
    move v11, v2

    .line 446
    :goto_53
    nop

    .line 447
    nop

    .line 448
    nop

    .line 449
    nop

    .line 451
    nop

    .line 452
    nop

    .line 454
    if-nez v10, :cond_5d

    if-eqz v11, :cond_68

    :cond_5d
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v14, v6, :cond_68

    .line 455
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    goto :goto_69

    .line 458
    :cond_68
    const/4 v14, 0x0

    :goto_69
    if-eq v1, v7, :cond_6d

    const/4 v1, 0x1

    goto :goto_6e

    :cond_6d
    move v1, v2

    .line 459
    :goto_6e
    if-eq v3, v7, :cond_72

    const/4 v3, 0x1

    goto :goto_73

    :cond_72
    move v3, v2

    .line 466
    :goto_73
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v7

    .line 467
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_81

    if-ne v4, v6, :cond_81

    .line 468
    const/high16 v4, 0x10000

    .line 471
    :cond_81
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 472
    array-length v15, v6

    .line 474
    move/from16 v16, v2

    :goto_86
    const/16 v12, 0x8

    if-ge v2, v15, :cond_af

    .line 475
    aget-object v13, v6, v2

    .line 476
    move/from16 v19, v2

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v12, :cond_ac

    .line 477
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v12

    .line 480
    invoke-direct {v0, v2, v4, v12}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 481
    invoke-direct {v0, v13, v2, v4, v5}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 483
    invoke-direct {v0, v13, v2, v4, v1}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 484
    const/16 v16, 0x1

    .line 474
    :cond_ac
    add-int/lit8 v2, v19, 0x1

    goto :goto_86

    .line 489
    :cond_af
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 490
    array-length v6, v2

    .line 491
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 493
    const/high16 v15, -0x80000000

    const v19, 0x7fffffff

    move/from16 v21, v15

    move/from16 v22, v19

    move/from16 v23, v22

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_ca
    if-ge v12, v6, :cond_1a6

    .line 494
    move/from16 v20, v1

    aget-object v1, v2, v12

    .line 495
    move-object/from16 v24, v2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v25, v10

    const/16 v10, 0x8

    if-eq v2, v10, :cond_192

    .line 496
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 498
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v10

    invoke-direct {v0, v2, v5, v10}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 499
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 500
    invoke-direct {v0, v1, v2, v5, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v10

    if-eqz v10, :cond_f4

    .line 501
    const/16 v19, 0x1

    .line 504
    :cond_f4
    const/16 v10, 0x13

    if-eqz v20, :cond_138

    .line 505
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v26

    if-eqz v26, :cond_11d

    .line 506
    if-ge v13, v10, :cond_10d

    .line 507
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v26

    sub-int v10, v4, v26

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v26, v3

    goto :goto_13a

    .line 509
    :cond_10d
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v10

    sub-int v10, v4, v10

    move/from16 v26, v3

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_13a

    .line 512
    :cond_11d
    move/from16 v26, v3

    const/16 v3, 0x13

    if-ge v13, v3, :cond_12c

    .line 513
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_13a

    .line 515
    :cond_12c
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v10

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_13a

    .line 504
    :cond_138
    move/from16 v26, v3

    .line 520
    :goto_13a
    if-eqz v26, :cond_154

    .line 521
    const/16 v3, 0x13

    if-ge v13, v3, :cond_149

    .line 522
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_154

    .line 524
    :cond_149
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 528
    :cond_154
    :goto_154
    if-ne v1, v14, :cond_158

    if-eqz v11, :cond_172

    .line 529
    :cond_158
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v10

    move/from16 v10, v23

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 530
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v10

    move/from16 v10, v22

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 533
    :cond_172
    if-ne v1, v14, :cond_176

    if-eqz v25, :cond_19a

    .line 534
    :cond_176
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 535
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    move/from16 v2, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v15, v1

    move/from16 v21, v2

    goto :goto_19a

    .line 495
    :cond_192
    move/from16 v26, v3

    move/from16 v2, v21

    move/from16 v1, v22

    move/from16 v10, v23

    .line 493
    :cond_19a
    :goto_19a
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v20

    move-object/from16 v2, v24

    move/from16 v10, v25

    move/from16 v3, v26

    goto/16 :goto_ca

    .line 542
    :cond_1a6
    move/from16 v20, v1

    move-object/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v10

    move/from16 v2, v21

    move/from16 v1, v22

    move/from16 v10, v23

    .line 543
    nop

    .line 544
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_1b8
    if-ge v5, v6, :cond_1e2

    .line 545
    aget-object v12, v24, v5

    .line 546
    move/from16 v21, v1

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v17, v2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1db

    .line 547
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    if-eqz v13, :cond_1d8

    if-eqz v3, :cond_1d8

    .line 549
    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_1db

    .line 550
    :cond_1d8
    nop

    .line 551
    move-object v3, v1

    move-object v13, v12

    .line 544
    :cond_1db
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    move/from16 v1, v21

    goto :goto_1b8

    .line 555
    :cond_1e2
    move/from16 v21, v1

    move/from16 v17, v2

    iput-object v13, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 557
    const/16 v1, 0xd

    if-eqz v20, :cond_254

    .line 560
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int/2addr v8, v2

    .line 562
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_201

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v2, :cond_201

    .line 563
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 566
    :cond_201
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 567
    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v8

    .line 569
    if-eqz v16, :cond_254

    .line 570
    const/4 v2, 0x0

    :goto_212
    if-ge v2, v6, :cond_254

    .line 571
    aget-object v3, v24, v2

    .line 572
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v12, 0x8

    if-eq v5, v12, :cond_251

    .line 573
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 574
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v12

    .line 575
    aget v13, v12, v1

    if-nez v13, :cond_24e

    const/16 v13, 0xe

    aget v13, v12, v13

    if-eqz v13, :cond_233

    goto :goto_24e

    .line 577
    :cond_233
    const/16 v13, 0xb

    aget v12, v12, v13

    if-eqz v12, :cond_251

    .line 578
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 579
    iget v12, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v12, v8, v12

    sub-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 580
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_251

    .line 576
    :cond_24e
    :goto_24e
    invoke-static {v3, v5, v8}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 570
    :cond_251
    :goto_251
    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    .line 587
    :cond_254
    if-eqz v26, :cond_2be

    .line 590
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int/2addr v9, v2

    .line 592
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_26b

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_26b

    .line 593
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 596
    :cond_26b
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 597
    move/from16 v3, p2

    invoke-static {v2, v3}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v9

    .line 599
    if-eqz v19, :cond_2be

    .line 600
    const/4 v2, 0x0

    :goto_27c
    if-ge v2, v6, :cond_2be

    .line 601
    aget-object v3, v24, v2

    .line 602
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v12, 0x8

    if-eq v5, v12, :cond_2bb

    .line 603
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 604
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v12

    .line 605
    aget v13, v12, v1

    if-nez v13, :cond_2b8

    const/16 v13, 0xf

    aget v13, v12, v13

    if-eqz v13, :cond_29d

    goto :goto_2b8

    .line 607
    :cond_29d
    const/16 v13, 0xc

    aget v12, v12, v13

    if-eqz v12, :cond_2bb

    .line 608
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 609
    iget v12, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v12, v9, v12

    sub-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 610
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2bb

    .line 606
    :cond_2b8
    :goto_2b8
    invoke-static {v3, v5, v9}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 600
    :cond_2bb
    :goto_2bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_27c

    .line 617
    :cond_2be
    if-nez v25, :cond_2c2

    if-eqz v11, :cond_32e

    .line 618
    :cond_2c2
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 619
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v3, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v5, v8, v5

    iget v12, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v12, v9, v12

    invoke-virtual {v1, v2, v3, v5, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 622
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 623
    move v3, v15

    iget v15, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v16, v3, v10

    sub-int v17, v17, v21

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-static/range {v15 .. v20}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 626
    move-object/from16 v1, v19

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v10

    .line 627
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v1, v21

    .line 628
    if-nez v2, :cond_2f2

    if-eqz v1, :cond_32e

    .line 629
    :cond_2f2
    const/4 v3, 0x0

    :goto_2f3
    if-ge v3, v6, :cond_32e

    .line 630
    aget-object v5, v24, v3

    .line 631
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v12, 0x8

    if-eq v7, v12, :cond_32b

    if-eq v5, v14, :cond_32b

    .line 632
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    if-eqz v25, :cond_319

    .line 634
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 635
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 637
    :cond_319
    if-eqz v11, :cond_32b

    .line 638
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 639
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 629
    :cond_32b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f3

    .line 646
    :cond_32e
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_35b

    .line 647
    sub-int/2addr v4, v8

    .line 648
    const/4 v2, 0x0

    :goto_336
    if-ge v2, v6, :cond_35b

    .line 649
    aget-object v1, v24, v2

    .line 650
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v12, 0x8

    if-eq v3, v12, :cond_358

    .line 651
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 652
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 653
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 648
    :cond_358
    add-int/lit8 v2, v2, 0x1

    goto :goto_336

    .line 658
    :cond_35b
    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 659
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 380
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 382
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 341
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 342
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 343
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 346
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 347
    or-int/lit8 p1, p1, 0x30

    .line 350
    :cond_14
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 351
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 353
    :cond_19
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 357
    const v0, 0x800007

    and-int/2addr p1, v0

    .line 358
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_15

    .line 359
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 360
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 362
    :cond_15
    return-void
.end method

.method public whitelist setIgnoreGravity(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 295
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 296
    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 366
    and-int/lit8 p1, p1, 0x70

    .line 367
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_12

    .line 368
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 369
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 371
    :cond_12
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 279
    const/4 v0, 0x0

    return v0
.end method
