.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$SortDirection;
    }
.end annotation


# static fields
.field public static final whitelist SORT_DIRECTION_ASCENDING:I = 0x1

.field public static final whitelist SORT_DIRECTION_DESCENDING:I = 0x2

.field public static final whitelist SORT_DIRECTION_NONE:I = 0x0

.field public static final whitelist SORT_DIRECTION_OTHER:I = 0x3


# instance fields
.field private greylist-max-o mColumnIndex:I

.field private greylist-max-o mColumnSpan:I

.field private blacklist mColumnTitle:Ljava/lang/String;

.field private greylist-max-o mHeading:Z

.field private greylist-max-o mRowIndex:I

.field private greylist-max-o mRowSpan:I

.field private blacklist mRowTitle:Ljava/lang/String;

.field private greylist-max-o mSelected:Z

.field private blacklist mSortDirection:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSortDirection(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSortDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortDirection(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSortDirection:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smenforceValidSortDirection(I)V
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->enforceValidSortDirection(I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7599
    return-void
.end method

.method public constructor whitelist <init>(IIIIZ)V
    .registers 13

    .line 7612
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    .line 7613
    return-void
.end method

.method public constructor whitelist <init>(IIIIZZ)V
    .registers 16

    .line 7627
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    .line 7629
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V
    .registers 9

    .line 7646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7647
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 7648
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 7649
    iput p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 7650
    iput p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 7651
    iput-boolean p7, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 7652
    iput-boolean p8, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 7653
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    .line 7654
    iput-object p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    .line 7655
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IIZZI)V
    .registers 10

    .line 7674
    invoke-direct/range {p0 .. p8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    .line 7676
    move-object p1, p0

    iput p9, p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSortDirection:I

    .line 7677
    return-void
.end method

.method private greylist-max-o clear()V
    .registers 3

    .line 7788
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 7789
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 7790
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 7791
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 7792
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 7793
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 7794
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    .line 7795
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    .line 7797
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->a11ySortDirectionApi()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 7798
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSortDirection:I

    .line 7800
    :cond_1a
    return-void
.end method

.method private static blacklist enforceValidSortDirection(I)V
    .registers 4

    .line 7968
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->a11ySortDirectionApi()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7969
    packed-switch p0, :pswitch_data_24

    .line 7976
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sort direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7974
    :pswitch_22
    return-void

    .line 7980
    :cond_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public static whitelist obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7533
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v0
.end method

.method public static whitelist obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7555
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7511
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    iget v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    iget-boolean v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    iget v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSortDirection:I

    invoke-direct/range {v0 .. v9}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZI)V

    return-object v0
.end method

.method public static greylist obtain(Ljava/lang/String;IILjava/lang/String;IIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7583
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist getColumnIndex()I
    .registers 2

    .line 7685
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return v0
.end method

.method public whitelist getColumnSpan()I
    .registers 2

    .line 7703
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return v0
.end method

.method public whitelist getColumnTitle()Ljava/lang/String;
    .registers 2

    .line 7775
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRowIndex()I
    .registers 2

    .line 7694
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return v0
.end method

.method public whitelist getRowSpan()I
    .registers 2

    .line 7712
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return v0
.end method

.method public whitelist getRowTitle()Ljava/lang/String;
    .registers 2

    .line 7765
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSortDirection()I
    .registers 2

    .line 7735
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSortDirection:I

    return v0
.end method

.method public whitelist isHeading()Z
    .registers 2

    .line 7746
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .registers 2

    .line 7755
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return v0
.end method

.method greylist-max-o recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7785
    return-void
.end method
