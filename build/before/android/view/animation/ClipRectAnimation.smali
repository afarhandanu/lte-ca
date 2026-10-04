.class public Landroid/view/animation/ClipRectAnimation;
.super Landroid/view/animation/Animation;
.source "ClipRectAnimation.java"


# instance fields
.field private greylist-max-o mFromBottomType:I

.field private greylist-max-o mFromBottomValue:F

.field private greylist-max-o mFromLeftType:I

.field private greylist-max-o mFromLeftValue:F

.field protected final greylist-max-o mFromRect:Landroid/graphics/Rect;

.field private greylist-max-o mFromRightType:I

.field private greylist-max-o mFromRightValue:F

.field private greylist-max-o mFromTopType:I

.field private greylist-max-o mFromTopValue:F

.field private greylist-max-o mToBottomType:I

.field private greylist-max-o mToBottomValue:F

.field private greylist-max-o mToLeftType:I

.field private greylist-max-o mToLeftValue:F

.field protected final greylist-max-o mToRect:Landroid/graphics/Rect;

.field private greylist-max-o mToRightType:I

.field private greylist-max-o mToRightValue:F

.field private greylist-max-o mToTopType:I

.field private greylist-max-o mToTopValue:F


# direct methods
.method public constructor greylist-max-o <init>(IIIIIIII)V
    .registers 10

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p5, p6, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 138
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    .line 36
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    .line 37
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    .line 38
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    .line 42
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->ClipRectAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 69
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    .line 70
    iget v1, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    .line 72
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 74
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    .line 75
    iget v1, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    .line 77
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 79
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    .line 80
    iget v1, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 84
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    .line 85
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    .line 88
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 90
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    .line 91
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    .line 93
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 95
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    .line 96
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    .line 98
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 100
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    .line 101
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object p1

    .line 105
    iget v0, p1, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    .line 106
    iget p1, p1, Landroid/view/animation/Animation$Description;->value:F

    iput p1, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    .line 117
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    .line 36
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    .line 37
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    .line 38
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    .line 42
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    .line 118
    if-eqz p1, :cond_4f

    if-eqz p2, :cond_4f

    .line 121
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    .line 122
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    .line 123
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    .line 124
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    .line 126
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    .line 127
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    .line 128
    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iput p1, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    .line 129
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    .line 130
    return-void

    .line 119
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Expected non-null animation clip rects"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9

    .line 142
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 143
    iget-object v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 144
    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 145
    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int p1, v4

    add-int/2addr v3, p1

    .line 146
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 147
    return-void
.end method

.method public whitelist initialize(IIII)V
    .registers 11

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 157
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    invoke-virtual {p0, v1, v2, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    .line 158
    invoke-virtual {p0, v2, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    .line 159
    invoke-virtual {p0, v3, v4, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    iget v5, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    .line 160
    invoke-virtual {p0, v4, v5, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v4

    float-to-int v4, v4

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    invoke-virtual {p0, v1, v2, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    .line 162
    invoke-virtual {p0, v2, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    .line 163
    invoke-virtual {p0, v3, v4, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result p1

    float-to-int p1, p1

    iget p3, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    .line 164
    invoke-virtual {p0, p3, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result p2

    float-to-int p2, p2

    .line 161
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    return-void
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method
