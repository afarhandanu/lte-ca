.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Gravity$GravityFlags;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_CLIP:I = 0x8

.field public static final whitelist AXIS_PULL_AFTER:I = 0x4

.field public static final whitelist AXIS_PULL_BEFORE:I = 0x2

.field public static final whitelist AXIS_SPECIFIED:I = 0x1

.field public static final whitelist AXIS_X_SHIFT:I = 0x0

.field public static final whitelist AXIS_Y_SHIFT:I = 0x4

.field public static final whitelist BOTTOM:I = 0x50

.field public static final whitelist CENTER:I = 0x11

.field public static final whitelist CENTER_HORIZONTAL:I = 0x1

.field public static final whitelist CENTER_VERTICAL:I = 0x10

.field public static final whitelist CLIP_HORIZONTAL:I = 0x8

.field public static final whitelist CLIP_VERTICAL:I = 0x80

.field public static final whitelist DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final whitelist DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final whitelist END:I = 0x800005

.field public static final whitelist FILL:I = 0x77

.field public static final whitelist FILL_HORIZONTAL:I = 0x7

.field public static final whitelist FILL_VERTICAL:I = 0x70

.field public static final whitelist HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final whitelist LEFT:I = 0x3

.field public static final whitelist NO_GRAVITY:I = 0x0

.field public static final whitelist RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final whitelist RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final whitelist RIGHT:I = 0x5

.field public static final whitelist START:I = 0x800003

.field public static final whitelist TOP:I = 0x30

.field public static final whitelist VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 11

    .line 221
    and-int/lit8 v0, p0, 0x6

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_dc

    .line 257
    :pswitch_7
    iget p1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p4

    iput p1, p6, Landroid/graphics/Rect;->left:I

    .line 258
    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    iput p1, p6, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    .line 247
    :pswitch_12
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 248
    iget p4, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p1

    iput p4, p6, Landroid/graphics/Rect;->left:I

    .line 249
    and-int/lit8 p1, p0, 0x8

    if-ne p1, v1, :cond_6f

    .line 251
    iget p1, p6, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-ge p1, p4, :cond_6f

    .line 252
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, p6, Landroid/graphics/Rect;->left:I

    goto :goto_6f

    .line 237
    :pswitch_2b
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 238
    iget p4, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, p1

    iput p4, p6, Landroid/graphics/Rect;->right:I

    .line 239
    and-int/lit8 p1, p0, 0x8

    if-ne p1, v1, :cond_6f

    .line 241
    iget p1, p6, Landroid/graphics/Rect;->right:I

    iget p4, p3, Landroid/graphics/Rect;->right:I

    if-le p1, p4, :cond_6f

    .line 242
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iput p1, p6, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    .line 223
    :pswitch_44
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 225
    iget p4, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, p1

    iput p4, p6, Landroid/graphics/Rect;->right:I

    .line 226
    and-int/lit8 p1, p0, 0x8

    if-ne p1, v1, :cond_6f

    .line 228
    iget p1, p6, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-ge p1, p4, :cond_65

    .line 229
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, p6, Landroid/graphics/Rect;->left:I

    .line 231
    :cond_65
    iget p1, p6, Landroid/graphics/Rect;->right:I

    iget p4, p3, Landroid/graphics/Rect;->right:I

    if-le p1, p4, :cond_6f

    .line 232
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iput p1, p6, Landroid/graphics/Rect;->right:I

    .line 262
    :cond_6f
    :goto_6f
    and-int/lit8 p1, p0, 0x60

    const/16 p4, 0x80

    sparse-switch p1, :sswitch_data_ea

    .line 298
    iget p0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p5

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 299
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p5

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_db

    .line 288
    :sswitch_81
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p5

    iput p1, p6, Landroid/graphics/Rect;->bottom:I

    .line 289
    iget p1, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Rect;->top:I

    .line 290
    and-int/2addr p0, p4

    if-ne p0, p4, :cond_db

    .line 292
    iget p0, p6, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    if-ge p0, p1, :cond_db

    .line 293
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iput p0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_db

    .line 278
    :sswitch_99
    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p5

    iput p1, p6, Landroid/graphics/Rect;->top:I

    .line 279
    iget p1, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Rect;->bottom:I

    .line 280
    and-int/2addr p0, p4

    if-ne p0, p4, :cond_db

    .line 282
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-le p0, p1, :cond_db

    .line 283
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_db

    .line 264
    :sswitch_b1
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    add-int/2addr p1, p5

    iput p1, p6, Landroid/graphics/Rect;->top:I

    .line 266
    iget p1, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Rect;->bottom:I

    .line 267
    and-int/2addr p0, p4

    if-ne p0, p4, :cond_db

    .line 269
    iget p0, p6, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    if-ge p0, p1, :cond_d1

    .line 270
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 272
    :cond_d1
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-le p0, p1, :cond_db

    .line 273
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    .line 302
    :cond_db
    :goto_db
    return-void

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_44
        :pswitch_7
        :pswitch_2b
        :pswitch_7
        :pswitch_12
    .end packed-switch

    :sswitch_data_ea
    .sparse-switch
        0x0 -> :sswitch_b1
        0x20 -> :sswitch_99
        0x40 -> :sswitch_81
    .end sparse-switch
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 8

    .line 331
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    .line 332
    invoke-static/range {p0 .. p6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 333
    return-void
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    .line 172
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 173
    return-void
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13

    .line 194
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 195
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 196
    return-void
.end method

.method public static whitelist applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    .line 352
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 353
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_10

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 354
    :cond_10
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_55

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_55

    .line 356
    :cond_1b
    nop

    .line 357
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_28

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    goto :goto_35

    .line 358
    :cond_28
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_34

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    goto :goto_35

    :cond_34
    move v0, v1

    .line 359
    :goto_35
    if-eqz v0, :cond_55

    .line 360
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4b

    .line 361
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 362
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_55

    .line 364
    :cond_4b
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 365
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 370
    :cond_55
    :goto_55
    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_6f

    .line 371
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge p0, v0, :cond_64

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 372
    :cond_64
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-le p0, v0, :cond_a9

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iput p0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_a9

    .line 374
    :cond_6f
    nop

    .line 375
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge p0, v0, :cond_7d

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, p0, v0

    goto :goto_89

    .line 376
    :cond_7d
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-le p0, v0, :cond_89

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int v1, p0, v0

    .line 377
    :cond_89
    :goto_89
    if-eqz v1, :cond_a9

    .line 378
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    if-le p0, v0, :cond_9f

    .line 379
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 380
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iput p0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_a9

    .line 382
    :cond_9f
    iget p0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 383
    iget p0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v1

    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 387
    :cond_a9
    :goto_a9
    return-void
.end method

.method public static whitelist applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 4

    .line 411
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    .line 412
    invoke-static {p0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 413
    return-void
.end method

.method public static whitelist getAbsoluteGravity(II)I
    .registers 5

    .line 447
    nop

    .line 449
    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-lez v0, :cond_30

    .line 450
    const v0, 0x800003

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1a

    .line 452
    const v0, -0x800004

    and-int/2addr p0, v0

    .line 453
    if-ne p1, v2, :cond_17

    .line 455
    or-int/lit8 p0, p0, 0x5

    goto :goto_2c

    .line 458
    :cond_17
    or-int/lit8 p0, p0, 0x3

    goto :goto_2c

    .line 460
    :cond_1a
    const v0, 0x800005

    and-int v1, p0, v0

    if-ne v1, v0, :cond_2c

    .line 462
    const v0, -0x800006

    and-int/2addr p0, v0

    .line 463
    if-ne p1, v2, :cond_2a

    .line 465
    or-int/lit8 p0, p0, 0x3

    goto :goto_2c

    .line 468
    :cond_2a
    or-int/lit8 p0, p0, 0x5

    .line 473
    :cond_2c
    :goto_2c
    const p1, -0x800001

    and-int/2addr p0, p1

    .line 475
    :cond_30
    return p0
.end method

.method public static whitelist isHorizontal(I)Z
    .registers 2

    .line 432
    if-lez p0, :cond_a

    const v0, 0x800007

    and-int/2addr p0, v0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static whitelist isVertical(I)Z
    .registers 1

    .line 422
    if-lez p0, :cond_8

    and-int/lit8 p0, p0, 0x70

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static greylist-max-o toString(I)Ljava/lang/String;
    .registers 6

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    and-int/lit8 v1, p0, 0x77

    const/16 v2, 0x20

    const/16 v3, 0x77

    if-ne v1, v3, :cond_18

    .line 484
    const-string v1, "FILL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_93

    .line 486
    :cond_18
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_28

    .line 487
    const-string v1, "FILL_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 489
    :cond_28
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_37

    .line 490
    const-string v1, "TOP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    :cond_37
    and-int/lit8 v1, p0, 0x50

    const/16 v3, 0x50

    if-ne v1, v3, :cond_46

    .line 493
    const-string v1, "BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    :cond_46
    :goto_46
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_55

    .line 497
    const-string v1, "FILL_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 499
    :cond_55
    const v1, 0x800003

    and-int v3, p0, v1

    if-ne v3, v1, :cond_66

    .line 500
    const-string v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 501
    :cond_66
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_74

    .line 502
    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    :cond_74
    :goto_74
    const v1, 0x800005

    and-int v3, p0, v1

    if-ne v3, v1, :cond_85

    .line 505
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 506
    :cond_85
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_93

    .line 507
    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    :cond_93
    :goto_93
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-ne v1, v3, :cond_a4

    .line 512
    const-string v1, "CENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 514
    :cond_a4
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_b3

    .line 515
    const-string v1, "CENTER_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    :cond_b3
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v4, :cond_c0

    .line 518
    const-string v1, "CENTER_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_c0
    :goto_c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_cf

    .line 522
    const-string v1, "NO GRAVITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :cond_cf
    const/high16 v1, 0x10000000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_de

    .line 525
    const-string v1, "DISPLAY_CLIP_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    :cond_de
    const/high16 v1, 0x1000000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_ec

    .line 528
    const-string p0, "DISPLAY_CLIP_HORIZONTAL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    :cond_ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
