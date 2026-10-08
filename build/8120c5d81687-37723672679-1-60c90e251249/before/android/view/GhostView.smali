.class public Landroid/view/GhostView;
.super Landroid/view/View;
.source "GhostView.java"


# instance fields
.field private greylist-max-o mBeingMoved:Z

.field private greylist-max-o mReferences:I

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 4

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    .line 44
    iget-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object p0, p1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 45
    iget-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 46
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 48
    return-void
.end method

.method public static greylist-max-p addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;
    .registers 3

    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object p0

    return-object p0
.end method

.method public static greylist addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;
    .registers 9

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_72

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 104
    iget-object v1, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 105
    iget-object v2, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 106
    nop

    .line 107
    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 108
    invoke-virtual {v2}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 110
    if-eq v5, v1, :cond_29

    .line 111
    iget v1, v2, Landroid/view/GhostView;->mReferences:I

    .line 112
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    const/4 v2, 0x0

    goto :goto_2a

    .line 116
    :cond_29
    move v1, v3

    :goto_2a
    if-nez v2, :cond_66

    .line 117
    if-nez p2, :cond_36

    .line 118
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    invoke-static {p0, p1, p2}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 121
    :cond_36
    new-instance v2, Landroid/view/GhostView;

    invoke-direct {v2, p0}, Landroid/view/GhostView;-><init>(Landroid/view/View;)V

    .line 122
    invoke-virtual {v2, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 123
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 125
    invoke-static {p1, p2}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 126
    invoke-static {p1, v2}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 127
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object p1, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {p1, p0}, Landroid/view/GhostView;->moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I

    move-result p1

    .line 130
    iget-object v0, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v0, p2, v2, p0, p1}, Landroid/view/GhostView;->insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V

    .line 131
    iput v1, v2, Landroid/view/GhostView;->mReferences:I

    .line 132
    :cond_65
    goto :goto_6b

    :cond_66
    if-eqz p2, :cond_65

    .line 133
    invoke-virtual {v2, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 135
    :goto_6b
    iget p0, v2, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v2, Landroid/view/GhostView;->mReferences:I

    .line 136
    return-object v2

    .line 101
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .registers 4

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 93
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 96
    return-void
.end method

.method private static greylist-max-o copySize(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBottom(I)V

    .line 166
    return-void
.end method

.method public static greylist-max-o getGhost(Landroid/view/View;)Landroid/view/GhostView;
    .registers 1

    .line 158
    iget-object p0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    return-object p0
.end method

.method private static greylist-max-o getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .line 244
    nop

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 247
    :goto_7
    if-gt p3, v0, :cond_30

    .line 248
    add-int v1, p3, v0

    div-int/lit8 v1, v1, 0x2

    .line 249
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/GhostView;

    .line 251
    iget-object v2, v2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v2, p2}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 252
    invoke-static {p1, p2}, Landroid/view/GhostView;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 253
    add-int/lit8 v1, v1, 0x1

    move p3, v1

    goto :goto_2c

    .line 255
    :cond_29
    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .line 257
    :goto_2c
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 258
    goto :goto_7

    .line 260
    :cond_30
    return p3
.end method

.method private static greylist-max-o getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 311
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 313
    :cond_f
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method private static greylist-max-o insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/GhostView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 222
    const/4 v0, -0x1

    if-ne p4, v0, :cond_7

    .line 223
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 225
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object p2, p2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {p2, v0}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 228
    invoke-static {p0, v0, p3, p4}, Landroid/view/GhostView;->getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I

    move-result p2

    .line 229
    if-ltz p2, :cond_22

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-lt p2, p3, :cond_1e

    goto :goto_22

    .line 232
    :cond_1e
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_25

    .line 230
    :cond_22
    :goto_22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    :goto_25
    return-void
.end method

.method private static greylist-max-o isGhostWrapper(Landroid/view/View;)Z
    .registers 4

    .line 267
    instance-of v0, p0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 268
    check-cast p0, Landroid/widget/FrameLayout;

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 270
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 271
    instance-of p0, p0, Landroid/view/GhostView;

    return p0

    .line 274
    :cond_15
    return v1
.end method

.method private static greylist-max-o isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .registers 10

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 325
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1a

    .line 327
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v4

    goto :goto_1b

    :cond_1a
    move v5, v3

    .line 332
    :goto_1b
    nop

    .line 333
    move v6, v3

    :goto_1d
    if-ge v6, v1, :cond_40

    .line 334
    if-eqz v5, :cond_26

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v7

    goto :goto_27

    :cond_26
    move v7, v6

    .line 335
    :goto_27
    if-nez v2, :cond_2e

    .line 336
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_34

    :cond_2e
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 337
    :goto_34
    if-ne v7, p0, :cond_38

    .line 338
    nop

    .line 339
    goto :goto_41

    .line 340
    :cond_38
    if-ne v7, p1, :cond_3d

    .line 341
    nop

    .line 342
    move v3, v4

    goto :goto_41

    .line 333
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_40
    move v3, v4

    .line 346
    :goto_41
    if-eqz v2, :cond_46

    .line 347
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 349
    :cond_46
    return v3
.end method

.method private static greylist-max-o isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_47

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_19

    goto :goto_47

    .line 289
    :cond_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 290
    move v3, v1

    :goto_26
    if-ge v3, v2, :cond_3e

    .line 291
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 292
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 294
    if-eq v4, v5, :cond_3b

    .line 296
    invoke-static {v4, v5}, Landroid/view/GhostView;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0

    .line 290
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 301
    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v2, :cond_45

    goto :goto_46

    :cond_45
    move v1, v0

    .line 302
    :goto_46
    return v1

    .line 287
    :cond_47
    :goto_47
    return v1
.end method

.method private static greylist-max-o moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 176
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 177
    return v1

    .line 178
    :cond_8
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 180
    nop

    .line 181
    add-int/lit8 v0, v0, -0x2

    move p1, v2

    move v2, v0

    :goto_19
    if-ltz v2, :cond_2d

    .line 182
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 183
    goto :goto_2d

    .line 185
    :cond_26
    nop

    .line 181
    add-int/lit8 p1, v2, -0x1

    move v5, v2

    move v2, p1

    move p1, v5

    goto :goto_19

    .line 187
    :cond_2d
    :goto_2d
    return p1

    .line 191
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    :goto_30
    const/4 v2, 0x1

    if-ltz v0, :cond_53

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    invoke-static {v3}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 194
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/GhostView;

    .line 196
    iput-boolean v2, v3, Landroid/view/GhostView;->mBeingMoved:Z

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 198
    iput-boolean v4, v3, Landroid/view/GhostView;->mBeingMoved:Z

    .line 191
    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 203
    :cond_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 204
    goto :goto_74

    .line 206
    :cond_5a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_63
    if-ltz v0, :cond_71

    .line 209
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_63

    .line 211
    :cond_71
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    :goto_74
    return v1
.end method

.method public static greylist-max-p removeGhost(Landroid/view/View;)V
    .registers 2

    .line 146
    iget-object p0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 147
    if-eqz p0, :cond_1d

    .line 148
    iget v0, p0, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/GhostView;->mReferences:I

    .line 149
    iget v0, p0, Landroid/view/GhostView;->mReferences:I

    if-nez v0, :cond_1d

    .line 150
    invoke-virtual {p0}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    :cond_1d
    return-void
.end method


# virtual methods
.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 80
    iget-boolean v0, p0, Landroid/view/GhostView;->mBeingMoved:Z

    if-nez v0, :cond_1f

    .line 81
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 82
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 83
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    if-eqz v0, :cond_1f

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 88
    :cond_1f
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 52
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_20

    .line 53
    check-cast p1, Landroid/graphics/RecordingCanvas;

    .line 54
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 55
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 57
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 62
    :cond_20
    return-void
.end method

.method public greylist-max-o setMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/view/GhostView;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 66
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-ne v0, p0, :cond_13

    .line 72
    if-nez p1, :cond_d

    const/4 p1, 0x4

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 73
    :goto_e
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 75
    :cond_13
    return-void
.end method
