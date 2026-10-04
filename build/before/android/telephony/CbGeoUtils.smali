.class public Landroid/telephony/CbGeoUtils;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Circle;,
        Landroid/telephony/CbGeoUtils$LatLng;,
        Landroid/telephony/CbGeoUtils$Polygon;,
        Landroid/telephony/CbGeoUtils$Geometry;
    }
.end annotation


# static fields
.field private static final blacklist CIRCLE_SYMBOL:Ljava/lang/String; = "circle"

.field public static final blacklist EARTH_RADIUS_METER:I = 0x6136b8

.field public static final blacklist EPS:D = 1.0E-7

.field public static final blacklist GEOMETRY_TYPE_CIRCLE:I = 0x3

.field public static final blacklist GEOMETRY_TYPE_POLYGON:I = 0x2

.field public static final blacklist GEO_FENCING_MAXIMUM_WAIT_TIME:I = 0x1

.field private static final blacklist POLYGON_SYMBOL:Ljava/lang/String; = "polygon"

.field private static final blacklist TAG:Ljava/lang/String; = "CbGeoUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 440
    if-eqz p0, :cond_2c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 441
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 442
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 443
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 444
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 441
    return-object p0

    .line 440
    :cond_2c
    :goto_2c
    const-string p0, ""

    return-object p0
.end method

.method private static blacklist encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .registers 7

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Polygon;

    const-string v2, ","

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_3c

    .line 459
    const-string/jumbo v1, "polygon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    check-cast p0, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Polygon;->getVertices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CbGeoUtils$LatLng;

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-wide v4, v1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-wide v4, v1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 465
    goto :goto_1e

    :cond_3b
    goto :goto_6a

    .line 466
    :cond_3c
    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Circle;

    if-eqz v1, :cond_6f

    .line 467
    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    check-cast p0, Landroid/telephony/CbGeoUtils$Circle;

    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v1

    iget-wide v4, v1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v1

    iget-wide v1, v1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Circle;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 479
    nop

    .line 483
    :goto_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 480
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported geometry object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CbGeoUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$encodeGeometriesToString$0(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .registers 1

    .line 442
    invoke-static {p0}, Landroid/telephony/CbGeoUtils;->encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$encodeGeometriesToString$1(Ljava/lang/String;)Z
    .registers 1

    .line 443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_8e

    aget-object v4, p0, v3

    .line 410
    const-string v5, "\\s*\\|\\s*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 411
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_90

    :cond_22
    goto :goto_38

    :sswitch_23
    const-string/jumbo v7, "polygon"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v8

    goto :goto_39

    :sswitch_2e
    const-string v7, "circle"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v2

    goto :goto_39

    :goto_38
    const/4 v6, -0x1

    :goto_39
    packed-switch v6, :pswitch_data_9a

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid geometry format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CbGeoUtils"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 417
    :pswitch_55
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v5

    sub-int/2addr v6, v8

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    nop

    :goto_5d
    array-length v6, v5

    if-ge v8, v6, :cond_6c

    .line 419
    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    .line 421
    :cond_6c
    new-instance v5, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-direct {v5, v4}, Landroid/telephony/CbGeoUtils$Polygon;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    goto :goto_8b

    .line 413
    :pswitch_75
    new-instance v4, Landroid/telephony/CbGeoUtils$Circle;

    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v5, v5, v7

    .line 414
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v4, v6, v7, v8}, Landroid/telephony/CbGeoUtils$Circle;-><init>(Landroid/telephony/CbGeoUtils$LatLng;D)V

    .line 413
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    nop

    .line 409
    :goto_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 427
    :cond_8e
    return-object v0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x51134330 -> :sswitch_2e
        -0x17b1aac6 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_75
        :pswitch_55
    .end packed-switch
.end method

.method public static blacklist parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;
    .registers 6

    .line 496
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 497
    new-instance v0, Landroid/telephony/CbGeoUtils$LatLng;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static blacklist sign(D)I
    .registers 4

    .line 506
    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, p0, v0

    if-lez v0, :cond_b

    const/4 p0, 0x1

    return p0

    .line 507
    :cond_b
    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double p0, p0, v0

    if-gez p0, :cond_16

    const/4 p0, -0x1

    return p0

    .line 508
    :cond_16
    const/4 p0, 0x0

    return p0
.end method
