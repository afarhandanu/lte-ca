.class public final Landroid/view/DisplayCutout$ParcelableWrapper;
.super Ljava/lang/Object;
.source "DisplayCutout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableWrapper"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayCutout$ParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1487
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper$1;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper$1;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1432
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {p0, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    .line 1433
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayCutout;)V
    .registers 2

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1437
    return-void
.end method

.method public static greylist-max-o readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;
    .registers 18

    .line 1505
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1506
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    .line 1507
    return-object v3

    .line 1509
    :cond_b
    if-nez v1, :cond_10

    .line 1510
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v0

    .line 1513
    :cond_10
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    .line 1514
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 1515
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 1516
    sget-object v2, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Insets;

    .line 1517
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1518
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 1522
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1524
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 1526
    new-instance v7, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-direct/range {v7 .. v16}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1529
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 1531
    new-instance v4, Landroid/view/DisplayCutout;

    move-object v8, v7

    new-instance v7, Landroid/view/DisplayCutout$Bounds;

    const/4 v0, 0x0

    invoke-direct {v7, v1, v0, v3}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V

    return-object v4
.end method

.method public static greylist-max-o writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V
    .registers 4

    .line 1455
    if-nez p0, :cond_8

    .line 1456
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_99

    .line 1457
    :cond_8
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_12

    .line 1458
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_99

    .line 1460
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1462
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v0

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1463
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1464
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1469
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1470
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1472
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1473
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1475
    :goto_99
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1577
    instance-of v0, p1, Landroid/view/DisplayCutout$ParcelableWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    check-cast p1, Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object p1, p1, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1578
    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1577
    :goto_13
    return p1
.end method

.method public greylist-max-o get()Landroid/view/DisplayCutout;
    .registers 2

    .line 1536
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1572
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 2

    .line 1484
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1485
    return-void
.end method

.method public blacklist scale(F)V
    .registers 15

    .line 1548
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v10

    .line 1549
    invoke-virtual {v10, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 1550
    new-instance v11, Landroid/view/DisplayCutout$Bounds;

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v0

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$fgetmRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v11, v0, v1, v2}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    .line 1551
    invoke-static {v11, p1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mscale(Landroid/view/DisplayCutout$Bounds;F)V

    .line 1552
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1553
    invoke-virtual {v12, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 1554
    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1555
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v2}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v2

    .line 1556
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v3}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v3

    .line 1557
    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v4}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v4

    .line 1558
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v5}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v5

    .line 1559
    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v5

    iget-object v6, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v6}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v6

    .line 1560
    invoke-virtual {v6}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v7}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v7

    .line 1561
    invoke-virtual {v7}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v7

    iget-object v9, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v9}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v9

    .line 1563
    invoke-virtual {v9}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v9

    move v8, p1

    invoke-direct/range {v0 .. v9}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1564
    iget-object v1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I

    move-result-object v6

    .line 1566
    new-instance v1, Landroid/view/DisplayCutout;

    invoke-static {v12}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v3

    const/4 v7, 0x0

    move-object v5, v0

    move-object v2, v10

    move-object v4, v11

    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V

    iput-object v1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1568
    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout$ParcelableWrapper;)V
    .registers 2

    .line 1540
    invoke-virtual {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1541
    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout;)V
    .registers 2

    .line 1544
    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1545
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1583
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1446
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 1447
    return-void
.end method
