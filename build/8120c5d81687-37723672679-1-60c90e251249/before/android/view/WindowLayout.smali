.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist MAX_X:I = 0x186a0

.field static final blacklist MAX_Y:I = 0x186a0

.field static final blacklist MIN_X:I = -0x186a0

.field static final blacklist MIN_Y:I = -0x186a0

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final blacklist mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .registers 8

    .line 320
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    .line 322
    nop

    .line 323
    goto :goto_1b

    .line 328
    :cond_8
    if-eqz p5, :cond_13

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_1b

    .line 334
    :cond_13
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 335
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 341
    :goto_1b
    const/4 p1, 0x1

    if-ge p2, p1, :cond_1f

    .line 342
    move p2, p1

    .line 344
    :cond_1f
    if-ge p3, p1, :cond_22

    .line 345
    move p3, p1

    .line 349
    :cond_22
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 350
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    add-int/2addr p2, p1

    .line 351
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    add-int/2addr p3, p1

    .line 353
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 354
    return-void
.end method

.method public static blacklist extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 302
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    return-void

    .line 305
    :cond_7
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    const/4 v0, 0x0

    invoke-static {v0, p0, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 311
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 313
    :cond_17
    return-void
.end method

.method private static blacklist intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    .line 294
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 295
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 296
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 297
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 298
    return-void
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .registers 32

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 70
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 72
    const/16 v9, 0x100

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_19

    const/4 v7, 0x1

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    .line 73
    :goto_1a
    iget-object v9, v5, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 74
    iget-object v12, v5, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 75
    iget-object v13, v5, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 76
    iget-object v14, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 79
    nop

    .line 80
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v11

    .line 79
    invoke-virtual {v2, v4, v4, v15, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v11

    .line 81
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v15

    .line 82
    and-int/lit8 v17, v15, 0x1

    if-eqz v17, :cond_3a

    iget v10, v11, Landroid/graphics/Insets;->left:I

    goto :goto_3b

    :cond_3a
    const/4 v10, 0x0

    .line 83
    :goto_3b
    and-int/lit8 v18, v15, 0x2

    if-eqz v18, :cond_44

    move/from16 v18, v7

    iget v7, v11, Landroid/graphics/Insets;->top:I

    goto :goto_47

    :cond_44
    move/from16 v18, v7

    const/4 v7, 0x0

    .line 84
    :goto_47
    and-int/lit8 v19, v15, 0x4

    if-eqz v19, :cond_50

    move/from16 v19, v7

    iget v7, v11, Landroid/graphics/Insets;->right:I

    goto :goto_53

    :cond_50
    move/from16 v19, v7

    const/4 v7, 0x0

    .line 85
    :goto_53
    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_5a

    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    goto :goto_5b

    :cond_5a
    const/4 v11, 0x0

    .line 86
    :goto_5b
    iget v15, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v10

    iget v10, v4, Landroid/graphics/Rect;->top:I

    add-int v10, v10, v19

    move/from16 v19, v7

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int v7, v7, v19

    move/from16 v19, v8

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v11

    invoke-virtual {v12, v15, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    if-nez v9, :cond_8c

    .line 90
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    const/high16 v7, 0x40000000    # 2.0f

    and-int v7, v19, v7

    if-eqz v7, :cond_94

    .line 92
    sget v7, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v7}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    .line 93
    if-eqz v7, :cond_8b

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v7, v13, v4, v8}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 97
    :cond_8b
    goto :goto_94

    .line 99
    :cond_8c
    if-nez v18, :cond_90

    move-object v7, v9

    goto :goto_91

    :cond_90
    move-object v7, v12

    :goto_91
    invoke-virtual {v13, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    :cond_94
    :goto_94
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 104
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 105
    iget-object v10, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    const/4 v11, 0x0

    iput-boolean v11, v5, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 108
    const/4 v15, 0x3

    if-eq v7, v15, :cond_177

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_177

    .line 111
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v15

    .line 112
    const/4 v11, 0x1

    if-ne v7, v11, :cond_d4

    .line 113
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v11

    move-object/from16 v20, v8

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v11, v8, :cond_c9

    .line 114
    const v8, -0x186a0

    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 115
    const v11, 0x186a0

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_d6

    .line 117
    :cond_c9
    const v8, -0x186a0

    const v11, 0x186a0

    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 118
    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto :goto_d6

    .line 112
    :cond_d4
    move-object/from16 v20, v8

    .line 121
    :goto_d6
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x10000

    and-int/2addr v8, v11

    if-eqz v8, :cond_df

    const/4 v8, 0x1

    goto :goto_e0

    :cond_df
    const/4 v8, 0x0

    .line 122
    :goto_e0
    if-eqz v18, :cond_12d

    if-eqz v8, :cond_12d

    if-eqz v7, :cond_e9

    const/4 v11, 0x1

    if-ne v7, v11, :cond_12d

    .line 125
    :cond_e9
    nop

    .line 126
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    .line 125
    move/from16 v8, p8

    invoke-virtual {v2, v15, v4, v7, v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Insets;

    move-result-object v7

    .line 127
    iget v8, v7, Landroid/graphics/Insets;->left:I

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v11

    if-lt v8, v11, :cond_102

    .line 128
    const v8, -0x186a0

    iput v8, v10, Landroid/graphics/Rect;->left:I

    goto :goto_105

    .line 127
    :cond_102
    const v8, -0x186a0

    .line 130
    :goto_105
    iget v11, v7, Landroid/graphics/Insets;->top:I

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v8

    if-lt v11, v8, :cond_112

    .line 131
    const v8, -0x186a0

    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 133
    :cond_112
    iget v8, v7, Landroid/graphics/Insets;->right:I

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v11

    if-lt v8, v11, :cond_120

    .line 134
    const v11, 0x186a0

    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto :goto_123

    .line 133
    :cond_120
    const v11, 0x186a0

    .line 136
    :goto_123
    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v8

    if-lt v7, v8, :cond_12d

    .line 137
    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 140
    :cond_12d
    const/16 v7, 0x7db

    if-ne v6, v7, :cond_147

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    const v11, 0x186a0

    if-eq v7, v11, :cond_147

    .line 142
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v15, v4, v7, v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_147

    .line 145
    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 147
    :cond_147
    if-eqz v9, :cond_14d

    if-nez v18, :cond_14d

    const/4 v2, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v2, 0x0

    .line 151
    :goto_14e
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-nez v4, :cond_15b

    if-eqz v18, :cond_15b

    const/4 v11, 0x1

    if-eq v6, v11, :cond_15b

    const/4 v4, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v4, 0x0

    .line 159
    :goto_15c
    if-nez v2, :cond_174

    if-nez v4, :cond_174

    .line 160
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    invoke-static {v13, v10}, Landroid/view/WindowLayout;->intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 162
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v5, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 164
    :cond_174
    invoke-static {v12, v10}, Landroid/view/WindowLayout;->intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 167
    :cond_177
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_17f

    const/4 v8, 0x1

    goto :goto_180

    :cond_17f
    const/4 v8, 0x0

    .line 168
    :goto_180
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    .line 172
    if-eqz v8, :cond_19a

    const/16 v4, 0x7da

    if-eq v6, v4, :cond_19a

    if-nez v2, :cond_19a

    .line 173
    const v4, -0x186a0

    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 174
    iput v4, v12, Landroid/graphics/Rect;->top:I

    .line 175
    const v11, 0x186a0

    iput v11, v12, Landroid/graphics/Rect;->right:I

    .line 176
    iput v11, v12, Landroid/graphics/Rect;->bottom:I

    .line 179
    :cond_19a
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p9, v4

    if-eqz v4, :cond_1a2

    const/4 v4, 0x1

    goto :goto_1a3

    :cond_1a2
    const/4 v4, 0x0

    .line 180
    :goto_1a3
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 181
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 182
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_1b3

    const/4 v7, 0x1

    goto :goto_1b4

    :cond_1b3
    const/4 v7, 0x0

    .line 184
    :goto_1b4
    nop

    .line 185
    nop

    .line 194
    const/4 v9, -0x1

    move/from16 v10, p6

    if-eq v10, v9, :cond_1bd

    if-eqz v7, :cond_1c5

    .line 195
    :cond_1bd
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v10, :cond_1c4

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1c5

    :cond_1c4
    move v10, v5

    .line 197
    :cond_1c5
    :goto_1c5
    move/from16 v11, p7

    if-eq v11, v9, :cond_1cb

    if-eqz v7, :cond_1d3

    .line 198
    :cond_1cb
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v11, :cond_1d2

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1d3

    :cond_1d2
    move v11, v6

    .line 201
    :cond_1d3
    :goto_1d3
    iget v15, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v15, v15, 0x4000

    const/high16 v18, 0x3f000000    # 0.5f

    if-eqz v15, :cond_202

    .line 202
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v9, :cond_1e1

    .line 203
    move v9, v5

    goto :goto_1ee

    .line 204
    :cond_1e1
    if-eqz v4, :cond_1ec

    .line 205
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v9, v9

    mul-float v9, v9, p9

    add-float v9, v9, v18

    float-to-int v9, v9

    goto :goto_1ee

    .line 207
    :cond_1ec
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 209
    :goto_1ee
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v10, :cond_1f4

    .line 210
    move v11, v6

    goto :goto_224

    .line 211
    :cond_1f4
    if-eqz v4, :cond_1ff

    .line 212
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v10, v10

    mul-float v10, v10, p9

    add-float v10, v10, v18

    float-to-int v11, v10

    goto :goto_224

    .line 214
    :cond_1ff
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_224

    .line 217
    :cond_202
    iget v15, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v15, v9, :cond_208

    .line 218
    move v10, v5

    goto :goto_212

    .line 219
    :cond_208
    if-eqz v4, :cond_211

    .line 220
    int-to-float v10, v10

    mul-float v10, v10, p9

    add-float v10, v10, v18

    float-to-int v10, v10

    goto :goto_212

    .line 222
    :cond_211
    nop

    .line 224
    :goto_212
    iget v15, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v15, v9, :cond_219

    .line 225
    move v11, v6

    move v9, v10

    goto :goto_224

    .line 226
    :cond_219
    if-eqz v4, :cond_223

    .line 227
    int-to-float v9, v11

    mul-float v9, v9, p9

    add-float v9, v9, v18

    float-to-int v11, v9

    move v9, v10

    goto :goto_224

    .line 229
    :cond_223
    move v9, v10

    .line 233
    :goto_224
    if-eqz v4, :cond_231

    .line 234
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    mul-float v4, v4, p9

    .line 235
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    mul-float v10, v10, p9

    goto :goto_237

    .line 237
    :cond_231
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    .line 238
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    .line 241
    :goto_237
    if-eqz v2, :cond_247

    iget v15, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v15, v15, 0x4000

    if-nez v15, :cond_247

    .line 245
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 246
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 256
    :cond_247
    if-eqz v2, :cond_253

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v15, 0x1

    if-eq v2, v15, :cond_251

    if-nez v8, :cond_251

    goto :goto_254

    :cond_251
    const/4 v15, 0x0

    goto :goto_254

    :cond_253
    const/4 v15, 0x1

    .line 260
    :goto_254
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v5, v5

    mul-float/2addr v8, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v10, v5

    float-to-int v5, v10

    move/from16 p4, v2

    move/from16 p8, v4

    move/from16 p9, v5

    move/from16 p5, v9

    move/from16 p6, v11

    move-object/from16 p7, v13

    move-object/from16 p10, v14

    invoke-static/range {p4 .. p10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 265
    move-object/from16 v2, p10

    if-eqz v15, :cond_27c

    .line 266
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1, v12, v2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 269
    :cond_27c
    if-eqz v7, :cond_283

    .line 270
    iget-object v0, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v3, v12, v2, v0}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 285
    :cond_283
    return-void
.end method
