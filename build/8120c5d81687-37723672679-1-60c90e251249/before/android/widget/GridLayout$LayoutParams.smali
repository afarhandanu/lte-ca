.class public Landroid/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final greylist-max-o BOTTOM_MARGIN:I = 0x6

.field private static final greylist-max-o COLUMN:I = 0x1

.field private static final greylist-max-o COLUMN_SPAN:I = 0x4

.field private static final greylist-max-o COLUMN_WEIGHT:I = 0x6

.field private static final greylist-max-o DEFAULT_COLUMN:I = -0x80000000

.field private static final greylist-max-o DEFAULT_HEIGHT:I = -0x2

.field private static final greylist-max-o DEFAULT_MARGIN:I = -0x80000000

.field private static final greylist-max-o DEFAULT_ROW:I = -0x80000000

.field private static final greylist-max-o DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

.field private static final greylist-max-o DEFAULT_SPAN_SIZE:I

.field private static final greylist-max-o DEFAULT_WIDTH:I = -0x2

.field private static final greylist-max-o GRAVITY:I = 0x0

.field private static final greylist-max-o LEFT_MARGIN:I = 0x3

.field private static final greylist-max-o MARGIN:I = 0x2

.field private static final greylist-max-o RIGHT_MARGIN:I = 0x5

.field private static final greylist-max-o ROW:I = 0x2

.field private static final greylist-max-o ROW_SPAN:I = 0x3

.field private static final greylist-max-o ROW_WEIGHT:I = 0x5

.field private static final greylist-max-o TOP_MARGIN:I = 0x4


# instance fields
.field public whitelist columnSpec:Landroid/widget/GridLayout$Spec;

.field public whitelist rowSpec:Landroid/widget/GridLayout$Spec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2029
    new-instance v0, Landroid/widget/GridLayout$Interval;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    sput-object v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    .line 2030
    sget-object v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 2111
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    sget-object v1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2112
    return-void
.end method

.method private constructor greylist-max-o <init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .registers 9

    .line 2087
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2065
    sget-object p1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object p1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2088
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 2089
    iput-object p7, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2090
    iput-object p8, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2091
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2152
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2153
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2154
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2155
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 2120
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    sget-object p1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object p1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2121
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 2127
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2065
    sget-object p1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object p1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2128
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/GridLayout$LayoutParams;)V
    .registers 3

    .line 2137
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2079
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2139
    iget-object v0, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2140
    iget-object p1, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .registers 12

    .line 2102
    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2105
    return-void
.end method

.method private greylist-max-o init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 2184
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2186
    const/4 p2, 0x0

    :try_start_7
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2188
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2189
    sget v4, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2190
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 2191
    invoke-static {v0, v2}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v2

    invoke-static {v3, v4, v2, v5}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2193
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2194
    sget v2, Landroid/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2195
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 2196
    invoke-static {v0, p2}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object p2

    invoke-static {v1, v2, p2, v3}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_49

    .line 2198
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    nop

    .line 2200
    return-void

    .line 2198
    :catchall_49
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    throw p2
.end method

.method private greylist-max-o reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2169
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    .line 2170
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2172
    const/4 p2, 0x2

    const/high16 v0, -0x80000000

    :try_start_9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 2174
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 2175
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 2176
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 2177
    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2e

    .line 2179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2180
    nop

    .line 2181
    return-void

    .line 2179
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2180
    throw p2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2231
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2232
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 2234
    :cond_12
    check-cast p1, Landroid/widget/GridLayout$LayoutParams;

    .line 2236
    iget-object v2, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v3, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 2237
    :cond_1f
    iget-object v2, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    iget-object p1, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v2, p1}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    .line 2239
    :cond_2a
    return v0

    .line 2232
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2244
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Spec;->hashCode()I

    move-result v0

    .line 2245
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v1}, Landroid/widget/GridLayout$Spec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    return v0
.end method

.method protected whitelist setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 5

    .line 2217
    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 2218
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 2219
    return-void
.end method

.method final greylist-max-o setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .registers 3

    .line 2226
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2227
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 4

    .line 2211
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2212
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2213
    return-void
.end method

.method final greylist-max-o setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .registers 3

    .line 2222
    iget-object v0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2223
    return-void
.end method
