.class public Landroid/window/ScreenCaptureInternal$CaptureArgs;
.super Ljava/lang/Object;
.source "ScreenCaptureInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCaptureInternal$CaptureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mCaptureMode:I

.field final blacklist mExcludeLayers:[Landroid/view/SurfaceControl;

.field public final blacklist mFrameScaleX:F

.field public final blacklist mFrameScaleY:F

.field public final blacklist mGrayscale:Z

.field public final blacklist mIncludeSystemOverlays:Z

.field public final blacklist mPixelFormat:I

.field public final blacklist mPreserveDisplayColors:Z

.field public final blacklist mProtectedContentPolicy:I

.field public final blacklist mSecureContentPolicy:I

.field public final blacklist mSourceCrop:Landroid/graphics/Rect;

.field public final blacklist mUid:J

.field public final blacklist mUseDisplayInstallationOrientation:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 614
    new-instance v0, Landroid/window/ScreenCaptureInternal$CaptureArgs$1;

    invoke-direct {v0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPixelFormat:I

    .line 357
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleX:F

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleY:F

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSecureContentPolicy:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mProtectedContentPolicy:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mCaptureMode:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUid:J

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mGrayscale:Z

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    if-lez v0, :cond_5b

    .line 368
    new-array v1, v0, [Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 369
    const/4 v1, 0x0

    :goto_4a
    if-ge v1, v0, :cond_5e

    .line 370
    iget-object v2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    aput-object v3, v2, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 373
    :cond_5b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 375
    :cond_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPreserveDisplayColors:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUseDisplayInstallationOrientation:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mIncludeSystemOverlays:Z

    .line 378
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCaptureInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder<",
            "+",
            "Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 340
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmPixelFormat(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPixelFormat:I

    .line 341
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmSourceCrop(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 342
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleX:F

    .line 343
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleY:F

    .line 344
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmSecureContentPolicy(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSecureContentPolicy:I

    .line 345
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmProtectedContentPolicy(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mProtectedContentPolicy:I

    .line 346
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmCaptureMode(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mCaptureMode:I

    .line 347
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmUid(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUid:J

    .line 348
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmGrayscale(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mGrayscale:Z

    .line 349
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 350
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmPreserveDisplayColors(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPreserveDisplayColors:Z

    .line 351
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmUseDisplayInstallationOrientation(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUseDisplayInstallationOrientation:Z

    .line 352
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->-$$Nest$fgetmIncludeSystemOverlays(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mIncludeSystemOverlays:Z

    .line 353
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;Landroid/window/ScreenCaptureInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCaptureInternal$CaptureArgs;-><init>(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)V

    return-void
.end method

.method private blacklist getNativeExcludeLayers()[J
    .registers 5

    .line 398
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_22

    .line 402
    :cond_b
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    new-array v0, v0, [J

    .line 403
    nop

    :goto_11
    iget-object v2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 404
    iget-object v2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    aget-object v2, v2, v1

    iget-wide v2, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v2, v0, v1

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 407
    :cond_21
    return-object v0

    .line 399
    :cond_22
    :goto_22
    new-array v0, v1, [J

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist release()V
    .registers 5

    .line 382
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_1b

    .line 386
    :cond_a
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 387
    if-eqz v3, :cond_17

    .line 388
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 386
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 391
    :cond_1a
    return-void

    .line 383
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 592
    iget v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPixelFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 594
    iget v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 595
    iget v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 596
    iget v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSecureContentPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mProtectedContentPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mCaptureMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    iget-boolean v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mGrayscale:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 602
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v0

    :goto_3b
    if-ge v1, v2, :cond_48

    aget-object v3, v0, v1

    .line 604
    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 607
    :cond_45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    :cond_48
    iget-boolean p2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPreserveDisplayColors:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 610
    iget-boolean p2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUseDisplayInstallationOrientation:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    iget-boolean p2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mIncludeSystemOverlays:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 612
    return-void
.end method
