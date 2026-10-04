.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private greylist-max-o mPropagationSpeed:F

.field private greylist-max-o mSide:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 36
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private greylist-max-o distance(Landroid/view/View;IIIIIIII)I
    .registers 16

    .line 124
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const v1, 0x800003

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_18

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v5, :cond_12

    goto :goto_13

    :cond_12
    move v5, v4

    .line 126
    :goto_13
    if-eqz v5, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    .line 127
    :goto_17
    goto :goto_2d

    :cond_18
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const v1, 0x800005

    if-ne v0, v1, :cond_2b

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v5, :cond_26

    goto :goto_27

    :cond_26
    move v5, v4

    .line 129
    :goto_27
    if-eqz v5, :cond_2a

    move v2, v3

    .line 130
    :cond_2a
    goto :goto_2d

    .line 131
    :cond_2b
    iget v2, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 133
    :goto_2d
    nop

    .line 134
    sparse-switch v2, :sswitch_data_58

    goto :goto_56

    .line 145
    :sswitch_32
    sub-int/2addr p3, p7

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p3, p1

    goto :goto_56

    .line 139
    :sswitch_3b
    sub-int/2addr p9, p3

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p9, p1

    .line 140
    goto :goto_56

    .line 142
    :sswitch_44
    sub-int/2addr p2, p6

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p2, p1

    .line 143
    goto :goto_56

    .line 136
    :sswitch_4d
    sub-int/2addr p8, p2

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p8, p1

    .line 137
    nop

    .line 148
    :goto_56
    return v4

    nop

    :sswitch_data_58
    .sparse-switch
        0x3 -> :sswitch_4d
        0x5 -> :sswitch_44
        0x30 -> :sswitch_3b
        0x50 -> :sswitch_32
    .end sparse-switch
.end method

.method private greylist-max-o getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 3

    .line 152
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    sparse-switch v0, :sswitch_data_10

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    return p1

    .line 157
    :sswitch_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    return p1

    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_a
        0x800003 -> :sswitch_a
        0x800005 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .registers 20

    .line 75
    move-object/from16 v1, p3

    const-wide/16 v10, 0x0

    if-nez v1, :cond_9

    if-nez p4, :cond_9

    .line 76
    return-wide v10

    .line 78
    :cond_9
    nop

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    .line 81
    const/4 v3, 0x1

    if-eqz p4, :cond_1c

    invoke-virtual {p0, v1}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v4

    if-nez v4, :cond_18

    goto :goto_1c

    .line 85
    :cond_18
    move-object/from16 v1, p4

    move v12, v3

    goto :goto_1f

    .line 82
    :cond_1c
    :goto_1c
    nop

    .line 83
    const/4 v4, -0x1

    move v12, v4

    .line 88
    :goto_1f
    move-object v4, v2

    invoke-virtual {p0, v1}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v2

    .line 89
    invoke-virtual {p0, v1}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v1

    .line 91
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 92
    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 93
    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    .line 94
    aget v3, v6, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v3, v6

    .line 95
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int/2addr v6, v8

    .line 96
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    .line 100
    if-eqz v4, :cond_5f

    .line 101
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 102
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move v14, v5

    move v5, v4

    move v4, v14

    goto :goto_66

    .line 104
    :cond_5f
    add-int v4, v8, v6

    div-int/2addr v4, v5

    .line 105
    add-int v13, v3, v9

    div-int/lit8 v5, v13, 0x2

    .line 108
    :goto_66
    move v0, v3

    move v3, v1

    move-object v1, v7

    move v7, v0

    move v0, v8

    move v8, v6

    move v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v2

    int-to-float v1, v2

    .line 110
    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v2

    int-to-float v2, v2

    .line 111
    div-float/2addr v1, v2

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v2

    .line 114
    cmp-long v4, v2, v10

    if-gez v4, :cond_83

    .line 115
    const-wide/16 v2, 0x12c

    .line 118
    :cond_83
    int-to-long v4, v12

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v2, v0

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist setPropagationSpeed(F)V
    .registers 3

    .line 66
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 69
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 70
    return-void

    .line 67
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "propagationSpeed may not be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSide(I)V
    .registers 2

    .line 50
    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 51
    return-void
.end method
