.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public blacklist isResampled:Z

.field private greylist mPackedAxisBits:J

.field private greylist mPackedAxisValues:[F

.field public whitelist orientation:F

.field public whitelist pressure:F

.field public blacklist relativeX:F

.field public blacklist relativeY:F

.field public whitelist size:F

.field public whitelist toolMajor:F

.field public whitelist toolMinor:F

.field public whitelist touchMajor:F

.field public whitelist touchMinor:F

.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4360
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2

    .line 4368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4369
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 4370
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4

    .line 4375
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 4376
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_f

    .line 4377
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 4376
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4379
    :cond_f
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 3

    .line 4526
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4528
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4529
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4530
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4531
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4532
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4533
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4534
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4535
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4536
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4537
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4538
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4539
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    .line 4540
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 6

    .line 4548
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4549
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4550
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    .line 4551
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4552
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 4553
    iget-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4554
    if-eqz v1, :cond_17

    array-length v3, v1

    if-le v0, v3, :cond_1c

    .line 4555
    :cond_17
    array-length v1, v2

    new-array v1, v1, [F

    .line 4556
    iput-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4558
    :cond_1c
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4561
    :cond_20
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4562
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4563
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4564
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4565
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4566
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4567
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4568
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4569
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4570
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4571
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4572
    iget-boolean p1, p1, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    iput-boolean p1, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    .line 4573
    return-void
.end method

.method public whitelist getAxisValue(I)F
    .registers 8

    .line 4585
    sparse-switch p1, :sswitch_data_4e

    .line 4609
    if-ltz p1, :cond_46

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_46

    .line 4612
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4613
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4614
    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_38

    .line 4615
    const/4 p1, 0x0

    return p1

    .line 4607
    :sswitch_17
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return p1

    .line 4605
    :sswitch_1a
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return p1

    .line 4603
    :sswitch_1d
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return p1

    .line 4601
    :sswitch_20
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return p1

    .line 4599
    :sswitch_23
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return p1

    .line 4597
    :sswitch_26
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return p1

    .line 4595
    :sswitch_29
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return p1

    .line 4593
    :sswitch_2c
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return p1

    .line 4591
    :sswitch_2f
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return p1

    .line 4589
    :sswitch_32
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return p1

    .line 4587
    :sswitch_35
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return p1

    .line 4617
    :cond_38
    const-wide/16 v2, -0x1

    ushr-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    .line 4618
    iget-object v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget p1, v0, p1

    return p1

    .line 4610
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Axis out of range."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_35
        0x1 -> :sswitch_32
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x5 -> :sswitch_26
        0x6 -> :sswitch_23
        0x7 -> :sswitch_20
        0x8 -> :sswitch_1d
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_17
    .end sparse-switch
.end method

.method public whitelist isResampled()Z
    .registers 2

    .line 4518
    iget-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    return v0
.end method

.method public whitelist setAxisValue(IF)V
    .registers 12

    .line 4633
    sparse-switch p1, :sswitch_data_7c

    .line 4668
    if-ltz p1, :cond_73

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_73

    .line 4671
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4672
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4673
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    .line 4674
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4675
    and-long v5, v0, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_70

    .line 4676
    if-nez v4, :cond_4b

    .line 4677
    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 4678
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_6d

    .line 4665
    :sswitch_2a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4666
    goto :goto_72

    .line 4662
    :sswitch_2d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4663
    goto :goto_72

    .line 4659
    :sswitch_30
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4660
    goto :goto_72

    .line 4656
    :sswitch_33
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4657
    goto :goto_72

    .line 4653
    :sswitch_36
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4654
    goto :goto_72

    .line 4650
    :sswitch_39
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4651
    goto :goto_72

    .line 4647
    :sswitch_3c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4648
    goto :goto_72

    .line 4644
    :sswitch_3f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4645
    goto :goto_72

    .line 4641
    :sswitch_42
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4642
    goto :goto_72

    .line 4638
    :sswitch_45
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4639
    goto :goto_72

    .line 4635
    :sswitch_48
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4636
    goto :goto_72

    .line 4680
    :cond_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 4681
    array-length v6, v4

    if-ge v5, v6, :cond_5b

    .line 4682
    if-eq p1, v5, :cond_6d

    .line 4683
    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v5, p1

    invoke-static {v4, p1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6d

    .line 4687
    :cond_5b
    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [F

    .line 4688
    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4689
    add-int/lit8 v7, p1, 0x1

    sub-int/2addr v5, p1

    invoke-static {v4, p1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4691
    nop

    .line 4692
    iput-object v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    move-object v4, v6

    .line 4695
    :cond_6d
    :goto_6d
    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4697
    :cond_70
    aput p2, v4, p1

    .line 4700
    :goto_72
    return-void

    .line 4669
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Axis out of range."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_45
        0x2 -> :sswitch_42
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_39
        0x6 -> :sswitch_36
        0x7 -> :sswitch_33
        0x8 -> :sswitch_30
        0x1b -> :sswitch_2d
        0x1c -> :sswitch_2a
    .end sparse-switch
.end method
