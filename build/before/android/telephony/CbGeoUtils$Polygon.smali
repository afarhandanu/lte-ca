.class public Landroid/telephony/CbGeoUtils$Polygon;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"

# interfaces
.implements Landroid/telephony/CbGeoUtils$Geometry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Polygon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Polygon$Point;
    }
.end annotation


# static fields
.field private static final blacklist SCALE:D = 1000.0


# instance fields
.field private final blacklist mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

.field private final blacklist mScaledVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Polygon$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$lGZ1xFBE-5bi5sas7dayvOLy8kc(Landroid/telephony/CbGeoUtils$Polygon;Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->lambda$new$0(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    .line 178
    nop

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, v2, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_23

    .line 181
    move v0, v1

    .line 179
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 184
    :cond_26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CbGeoUtils$LatLng;

    iput-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    .line 186
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/CbGeoUtils$Polygon;)V

    .line 187
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 188
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    .line 189
    return-void
.end method

.method private blacklist convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 12

    .line 255
    iget-wide v0, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iget-object v2, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, v2, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v0, v2

    .line 256
    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v2, v4

    .line 264
    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    iget-wide v5, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v5, v6}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v5

    if-eq v4, v5, :cond_51

    .line 265
    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 266
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result p1

    if-lez p1, :cond_51

    .line 267
    iget-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v2, v3}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result p1

    int-to-double v2, p1

    sub-double/2addr v8, v4

    mul-double/2addr v2, v8

    .line 270
    :cond_51
    new-instance p1, Landroid/telephony/CbGeoUtils$Polygon$Point;

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    mul-double/2addr v2, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/telephony/CbGeoUtils$Polygon$Point;-><init>(DD)V

    return-object p1
.end method

.method private static blacklist crossProduct(Landroid/telephony/CbGeoUtils$Polygon$Point;Landroid/telephony/CbGeoUtils$Polygon$Point;)D
    .registers 6

    .line 274
    iget-wide v0, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide p0, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 2

    .line 187
    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public whitelist contains(Landroid/telephony/CbGeoUtils$LatLng;)Z
    .registers 15

    .line 209
    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p1

    .line 211
    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 212
    nop

    .line 213
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_e
    const/4 v4, 0x1

    if-ge v2, v0, :cond_9c

    .line 214
    iget-object v5, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CbGeoUtils$Polygon$Point;

    .line 215
    iget-object v6, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    rem-int v7, v2, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CbGeoUtils$Polygon$Point;

    .line 222
    invoke-virtual {v6, v5}, Landroid/telephony/CbGeoUtils$Polygon$Point;->subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v7

    invoke-virtual {p1, v5}, Landroid/telephony/CbGeoUtils$Polygon$Point;->subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/CbGeoUtils$Polygon;->crossProduct(Landroid/telephony/CbGeoUtils$Polygon$Point;Landroid/telephony/CbGeoUtils$Polygon$Point;)D

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v7

    .line 224
    if-nez v7, :cond_70

    .line 225
    iget-wide v7, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v9, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iget-wide v9, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_9a

    iget-wide v7, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v9, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v11, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_9a

    iget-wide v7, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v9, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    .line 226
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iget-wide v9, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_9a

    iget-wide v7, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v9, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v5, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    cmpg-double v5, v7, v5

    if-gtz v5, :cond_9a

    .line 227
    return v4

    .line 230
    :cond_70
    iget-wide v4, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v8, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-gtz v4, :cond_8b

    .line 232
    if-lez v7, :cond_9a

    iget-wide v4, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-lez v4, :cond_9a

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 237
    :cond_8b
    if-gez v7, :cond_9a

    iget-wide v4, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-gtz v4, :cond_9a

    .line 238
    add-int/lit8 v3, v3, -0x1

    .line 213
    :cond_9a
    :goto_9a
    goto/16 :goto_e

    .line 243
    :cond_9c
    if-eqz v3, :cond_9f

    move v1, v4

    :cond_9f
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 306
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 307
    return v0

    .line 310
    :cond_4
    instance-of v1, p1, Landroid/telephony/CbGeoUtils$Polygon;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 311
    return v2

    .line 314
    :cond_a
    check-cast p1, Landroid/telephony/CbGeoUtils$Polygon;

    .line 315
    iget-object v1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1b

    .line 316
    return v2

    .line 318
    :cond_1b
    move v1, v2

    :goto_1c
    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3c

    .line 319
    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CbGeoUtils$LatLng;

    iget-object v4, p1, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 320
    return v2

    .line 318
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 324
    :cond_3c
    return v0
.end method

.method public whitelist getVertices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 294
    nop

    .line 295
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v1, "Polygon: "

    if-eqz v0, :cond_1a

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_1a
    return-object v1
.end method
