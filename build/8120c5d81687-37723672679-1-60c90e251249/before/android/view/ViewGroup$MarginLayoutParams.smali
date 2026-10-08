.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final greylist-max-o DEFAULT_MARGIN_RELATIVE:I = -0x80000000

.field private static final greylist-max-o DEFAULT_MARGIN_RESOLVED:I = 0x0

.field private static final greylist-max-o LAYOUT_DIRECTION_MASK:I = 0x3

.field private static final greylist-max-o LEFT_MARGIN_UNDEFINED_MASK:I = 0x4

.field private static final greylist-max-o NEED_RESOLUTION_MASK:I = 0x20

.field private static final greylist-max-o RIGHT_MARGIN_UNDEFINED_MASK:I = 0x8

.field private static final greylist-max-o RTL_COMPATIBILITY_MODE_MASK:I = 0x10

.field private static final greylist-max-o UNDEFINED_MARGIN:I = -0x80000000


# instance fields
.field public whitelist bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public whitelist leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field greylist-max-o mMarginFlags:B
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LAYOUT_DIRECTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "LEFT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "RIGHT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "RTL_COMPATIBILITY_MODE_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NEED_RESOLUTION_MASK"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public whitelist rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public whitelist topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3

    .line 8700
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8561
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8570
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8702
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8703
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8705
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x21

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8706
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x11

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8707
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 8624
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 8561
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8570
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8626
    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8627
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 8631
    const/4 v1, 0x2

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 8633
    if-ltz v1, :cond_25

    .line 8634
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8635
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8636
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8637
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_8f

    .line 8639
    :cond_25
    const/16 v1, 0x9

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 8641
    const/16 v4, 0xa

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 8644
    const/16 v4, 0x8

    const/4 v5, 0x4

    if-ltz v1, :cond_3b

    .line 8645
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8646
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_61

    .line 8648
    :cond_3b
    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8651
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v1, v0, :cond_4e

    .line 8652
    iget-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v1, v5

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8653
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8655
    :cond_4e
    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8658
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v1, v0, :cond_61

    .line 8659
    iget-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v1, v4

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8660
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8664
    :cond_61
    :goto_61
    const/4 v1, 0x7

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8667
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8671
    if-ltz v3, :cond_75

    .line 8672
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8673
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_82

    .line 8675
    :cond_75
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8678
    const/4 v0, 0x6

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8683
    :goto_82
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 8684
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8688
    :cond_8f
    :goto_8f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p1

    .line 8689
    if-nez p1, :cond_a0

    .line 8690
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8694
    :cond_a0
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr p1, v2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8696
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 8697
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 8729
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8561
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8570
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8731
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8732
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8734
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x21

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8735
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x11

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8736
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 8714
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 8561
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8570
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8715
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8716
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8718
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8719
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8720
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8721
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8722
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8723
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8725
    iget-byte p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8726
    return-void
.end method

.method private greylist-max-o doResolveMargins()V
    .registers 4

    .line 8935
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v2, -0x80000000

    if-ne v0, v1, :cond_27

    .line 8938
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v2, :cond_17

    .line 8940
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8942
    :cond_17
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v2, :cond_58

    .line 8944
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_58

    .line 8950
    :cond_27
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_60

    .line 8959
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v2, :cond_4b

    .line 8960
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    goto :goto_4c

    .line 8952
    :pswitch_36
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v2, :cond_3d

    .line 8953
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8954
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v2, :cond_47

    .line 8955
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    goto :goto_48

    :cond_47
    nop

    :goto_48
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8956
    goto :goto_58

    .line 8960
    :cond_4b
    move v0, v1

    :goto_4c
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8961
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v2, :cond_55

    .line 8962
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    goto :goto_56

    :cond_55
    nop

    :goto_56
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8966
    :cond_58
    :goto_58
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8967
    return-void

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method public final greylist-max-o copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 8742
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8743
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8744
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8745
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8746
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8747
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8749
    iget-byte p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8750
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 8998
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 8999
    const-string v0, "leftMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9000
    const-string/jumbo v0, "topMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9001
    const-string/jumbo v0, "rightMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9002
    const-string v0, "bottomMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9003
    const-string/jumbo v0, "startMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9004
    const-string v0, "endMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9005
    return-void
.end method

.method public whitelist getLayoutDirection()I
    .registers 2

    .line 8914
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getMarginEnd()I
    .registers 3

    .line 8862
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    return v0

    .line 8863
    :cond_9
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 8864
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 8866
    :cond_13
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_20

    .line 8871
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0

    .line 8868
    :pswitch_1d
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist getMarginStart()I
    .registers 3

    .line 8829
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    return v0

    .line 8830
    :cond_9
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 8831
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 8833
    :cond_13
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_20

    .line 8838
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0

    .line 8835
    :pswitch_1d
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method public greylist-max-o isLayoutRtl()Z
    .registers 3

    .line 8973
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isMarginRelative()Z
    .registers 3

    .line 8884
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_d

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public greylist-max-o onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 17

    .line 8981
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 8983
    :goto_f
    nop

    .line 8984
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int v4, v1, v2

    .line 8985
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->top:I

    add-int v5, v1, v2

    .line 8986
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->right:I

    sub-int v6, v1, v2

    .line 8987
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int v7, p1, v0

    iget v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8983
    move-object v3, p2

    move-object/from16 v12, p3

    invoke-static/range {v3 .. v12}, Landroid/view/ViewGroup;->-$$Nest$smfillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    .line 8993
    return-void
.end method

.method public whitelist resolveLayoutDirection(I)V
    .registers 3

    .line 8923
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 8927
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_11

    goto :goto_15

    .line 8931
    :cond_11
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 8932
    return-void

    .line 8928
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist setLayoutDirection(I)V
    .registers 3

    .line 8894
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 8895
    return-void

    .line 8896
    :cond_6
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    if-eq p1, v0, :cond_30

    .line 8897
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8898
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8899
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 8900
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    goto :goto_30

    .line 8902
    :cond_29
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x21

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8905
    :cond_30
    :goto_30
    return-void
.end method

.method public whitelist setMarginEnd(I)V
    .registers 2

    .line 8850
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8851
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8852
    return-void
.end method

.method public whitelist setMarginStart(I)V
    .registers 2

    .line 8817
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8818
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8819
    return-void
.end method

.method public whitelist setMargins(IIII)V
    .registers 5

    .line 8769
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8770
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8771
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8772
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8773
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x5

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8774
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x9

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8775
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 8776
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    goto :goto_2b

    .line 8778
    :cond_24
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 p1, p1, -0x21

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8780
    :goto_2b
    return-void
.end method

.method public greylist setMarginsRelative(IIII)V
    .registers 5

    .line 8802
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8803
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8804
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8805
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8806
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8807
    return-void
.end method
