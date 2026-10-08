.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mCaptureTime:J

.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mDensityDpi:I

.field private blacklist mHasImeSurface:Z

.field private blacklist mId:J

.field private blacklist mIsRealSnapshot:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private blacklist mOrientation:I

.field private blacklist mPixelFormat:I

.field private blacklist mRotation:I

.field private blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private blacklist mTaskSize:Landroid/graphics/Point;

.field private blacklist mTopActivity:Landroid/content/ComponentName;

.field private blacklist mUiMode:I

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    iput v0, p0, Landroid/window/TaskSnapshot$Builder;->mDensityDpi:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskSnapshot;
    .registers 25

    .line 689
    move-object/from16 v0, p0

    new-instance v1, Landroid/window/TaskSnapshot;

    move-object v3, v1

    iget-wide v1, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    move-object v5, v3

    iget-wide v3, v0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    move-object v6, v5

    iget-object v5, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    move-object v7, v6

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    move-object v8, v7

    iget-object v7, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    move-object v9, v8

    iget v8, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    move-object v10, v9

    iget v9, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    move-object v11, v10

    iget-object v10, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    move-object v12, v11

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v12

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v15, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    move-wide/from16 v16, v1

    iget v1, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    iget-boolean v2, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v19, v1

    iget v1, v0, Landroid/window/TaskSnapshot$Builder;->mUiMode:I

    iget v0, v0, Landroid/window/TaskSnapshot$Builder;->mDensityDpi:I

    move/from16 v20, v0

    move-object v0, v13

    const/4 v13, 0x0

    move/from16 v21, v19

    move/from16 v19, v1

    move-wide/from16 v22, v16

    move/from16 v17, v2

    move-wide/from16 v1, v22

    move/from16 v16, v18

    move/from16 v18, v21

    invoke-direct/range {v0 .. v20}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZII)V

    return-object v0
.end method

.method public blacklist getPixelFormat()I
    .registers 2

    .line 680
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public blacklist setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 645
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    .line 646
    return-object p0
.end method

.method public blacklist setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3

    .line 587
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    .line 588
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 602
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 603
    return-object p0
.end method

.method public blacklist setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 625
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    .line 626
    return-object p0
.end method

.method public blacklist setDensityDpi(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 675
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mDensityDpi:I

    .line 676
    return-object p0
.end method

.method public blacklist setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 658
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    .line 659
    return-object p0
.end method

.method public blacklist setId(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3

    .line 582
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    .line 583
    return-object p0
.end method

.method public blacklist setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 635
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    .line 636
    return-object p0
.end method

.method public blacklist setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 650
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    .line 651
    return-object p0
.end method

.method public blacklist setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 630
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 631
    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 607
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    .line 608
    return-object p0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 684
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    .line 685
    return-object p0
.end method

.method public blacklist setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 612
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    .line 613
    return-object p0
.end method

.method public blacklist setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 597
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 598
    return-object p0
.end method

.method public blacklist setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 620
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    .line 621
    return-object p0
.end method

.method public blacklist setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 592
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    .line 593
    return-object p0
.end method

.method public blacklist setUiMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 666
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mUiMode:I

    .line 667
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    .line 640
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    .line 641
    return-object p0
.end method
