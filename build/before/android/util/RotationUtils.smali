.class public Landroid/util/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deltaRotation(II)I
    .registers 2

    .line 142
    sub-int/2addr p1, p0

    .line 143
    if-gez p1, :cond_5

    add-int/lit8 p1, p1, 0x4

    .line 144
    :cond_5
    return p1
.end method

.method public static blacklist reverseRotationDirectionAroundZAxis(I)I
    .registers 3

    .line 262
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_6

    .line 263
    move p0, v0

    goto :goto_9

    .line 264
    :cond_6
    if-ne p0, v0, :cond_9

    .line 265
    move p0, v1

    .line 267
    :cond_9
    :goto_9
    return p0
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;III)V
    .registers 6

    .line 102
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 103
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 104
    packed-switch p3, :pswitch_data_42

    goto :goto_40

    .line 120
    :pswitch_8
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 121
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget p1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 123
    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_40

    .line 114
    :pswitch_1a
    iget p3, p0, Landroid/graphics/Rect;->right:I

    sub-int p3, p1, p3

    iput p3, p0, Landroid/graphics/Rect;->left:I

    .line 115
    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 116
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 117
    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 118
    return-void

    .line 108
    :pswitch_2d
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 109
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 110
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 111
    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 112
    return-void

    .line 106
    :pswitch_3f
    return-void

    .line 125
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_2d
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 4

    .line 136
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, p1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 137
    return-void
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 4

    .line 90
    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 91
    return-void
.end method

.method public static blacklist rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 4

    .line 46
    if-eqz p0, :cond_4e

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne p0, v0, :cond_7

    goto :goto_4e

    .line 50
    :cond_7
    packed-switch p1, :pswitch_data_50

    .line 76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :pswitch_24
    iget p1, p0, Landroid/graphics/Insets;->bottom:I

    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget p0, p0, Landroid/graphics/Insets;->right:I

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    .line 74
    goto :goto_4d

    .line 62
    :pswitch_31
    iget p1, p0, Landroid/graphics/Insets;->right:I

    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget p0, p0, Landroid/graphics/Insets;->top:I

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    .line 67
    goto :goto_4d

    .line 55
    :pswitch_3e
    iget p1, p0, Landroid/graphics/Insets;->top:I

    iget v0, p0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    iget p0, p0, Landroid/graphics/Insets;->left:I

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    .line 60
    goto :goto_4d

    .line 52
    :pswitch_4b
    nop

    .line 53
    nop

    .line 78
    :goto_4d
    return-object p0

    .line 47
    :cond_4e
    :goto_4e
    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3e
        :pswitch_31
        :pswitch_24
    .end packed-switch
.end method

.method public static blacklist rotatePoint(Landroid/graphics/Point;III)V
    .registers 5

    .line 180
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 181
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 193
    :pswitch_6
    iget p1, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Landroid/graphics/Point;->x:I

    .line 194
    iput v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_22

    .line 189
    :pswitch_e
    iget p1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Point;->x:I

    .line 190
    iget p1, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Landroid/graphics/Point;->y:I

    .line 191
    return-void

    .line 185
    :pswitch_19
    iget p1, p0, Landroid/graphics/Point;->y:I

    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 186
    sub-int/2addr p2, v0

    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 187
    return-void

    .line 183
    :pswitch_21
    return-void

    .line 196
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_19
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist rotatePointF(Landroid/graphics/PointF;IFF)V
    .registers 5

    .line 203
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 204
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 216
    :pswitch_6
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    iput p3, p0, Landroid/graphics/PointF;->x:F

    .line 217
    iput v0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_22

    .line 212
    :pswitch_e
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/PointF;->x:F

    .line 213
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    iput p3, p0, Landroid/graphics/PointF;->y:F

    .line 214
    return-void

    .line 208
    :pswitch_19
    iget p1, p0, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 209
    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/PointF;->y:F

    .line 210
    return-void

    .line 206
    :pswitch_21
    return-void

    .line 219
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_19
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 15

    .line 157
    packed-switch p2, :pswitch_data_36

    goto :goto_34

    .line 168
    :pswitch_4
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    .line 165
    :pswitch_10
    move-object v6, p0

    move-object v7, p1

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 166
    goto :goto_34

    .line 162
    :pswitch_1c
    move-object v6, p0

    move-object v7, p1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 163
    goto :goto_34

    .line 159
    :pswitch_28
    move-object v6, p0

    move-object v7, p1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 160
    nop

    .line 171
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1c
        :pswitch_10
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 5

    .line 230
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_42

    .line 247
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :pswitch_1d
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 244
    int-to-float p0, p2

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    goto :goto_40

    .line 239
    :pswitch_27
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 240
    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 241
    goto :goto_40

    .line 235
    :pswitch_32
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 236
    int-to-float p0, p1

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 237
    goto :goto_40

    .line 232
    :pswitch_3c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 233
    nop

    .line 249
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_32
        :pswitch_27
        :pswitch_1d
    .end packed-switch
.end method
