.class final Landroid/widget/SmartSelectSprite$RectangleList;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RectangleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList$DisplayType;
    }
.end annotation


# static fields
.field private static final greylist-max-o PROPERTY_LEFT_BOUNDARY:Ljava/lang/String; = "leftBoundary"

.field private static final greylist-max-o PROPERTY_RIGHT_BOUNDARY:Ljava/lang/String; = "rightBoundary"


# instance fields
.field private greylist-max-o mDisplayType:I

.field private final greylist-max-o mOutlinePolygonPath:Landroid/graphics/Path;

.field private final greylist-max-o mRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mReversedRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetTotalWidth(Landroid/widget/SmartSelectSprite$RectangleList;)I
    .registers 1

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    .line 246
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 247
    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    .line 248
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/widget/SmartSelectSprite-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private greylist-max-o drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    .line 311
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 312
    return-void
.end method

.method private greylist-max-o drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    .line 305
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 306
    invoke-virtual {v1, p1, p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 307
    goto :goto_6

    .line 308
    :cond_16
    return-void
.end method

.method private static greylist-max-o generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 316
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 317
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 318
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 319
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$fgetmBoundingRectangle(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 320
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 321
    goto :goto_9

    .line 322
    :cond_29
    return-object v0
.end method

.method private greylist-max-o getTotalWidth()I
    .registers 4

    .line 288
    nop

    .line 289
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 290
    int-to-float v1, v1

    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 291
    goto :goto_8

    .line 292
    :cond_1c
    return v1
.end method

.method private greylist-max-o setLeftBoundary(F)V
    .registers 7

    .line 251
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result v0

    int-to-float v0, v0

    .line 252
    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 253
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    sub-float v3, v0, v3

    .line 254
    cmpg-float v4, p1, v3

    if-gez v4, :cond_26

    .line 255
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_3c

    .line 256
    :cond_26
    cmpl-float v4, p1, v0

    if-lez v4, :cond_32

    .line 257
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v0

    invoke-static {v2, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_3c

    .line 259
    :cond_32
    nop

    .line 260
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v4, p1

    .line 259
    invoke-static {v2, v4}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    .line 263
    :goto_3c
    nop

    .line 264
    move v0, v3

    goto :goto_b

    .line 265
    :cond_3f
    return-void
.end method

.method private greylist-max-o setRightBoundary(F)V
    .registers 8

    .line 268
    nop

    .line 269
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 270
    invoke-static {v3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v4

    add-float/2addr v4, v2

    .line 271
    cmpg-float v5, v4, p1

    if-gez v5, :cond_26

    .line 272
    invoke-static {v3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v2

    invoke-static {v3, v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_33

    .line 273
    :cond_26
    cmpl-float v5, v2, p1

    if-lez v5, :cond_2e

    .line 274
    invoke-static {v3, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_33

    .line 276
    :cond_2e
    sub-float v2, p1, v2

    invoke-static {v3, v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    .line 279
    :goto_33
    nop

    .line 280
    move v2, v4

    goto :goto_9

    .line 281
    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    .line 297
    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 298
    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 300
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 302
    :goto_c
    return-void
.end method

.method greylist-max-o setDisplayType(I)V
    .registers 2

    .line 284
    iput p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    .line 285
    return-void
.end method
