.class public final Landroid/window/ScreenCapture$ScreenCaptureResult;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenCaptureResult"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCapture$ScreenCaptureResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 480
    new-instance v0, Landroid/window/ScreenCapture$ScreenCaptureResult$1;

    invoke-direct {v0}, Landroid/window/ScreenCapture$ScreenCaptureResult$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCapture$ScreenCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/ColorSpace;Landroid/hardware/HardwareBuffer;)V
    .registers 3

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 500
    iput-object p2, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 501
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    sget-object v0, Landroid/graphics/ParcelableColorSpace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ParcelableColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ParcelableColorSpace;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 493
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/HardwareBuffer;

    iput-object p1, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 494
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCapture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$ScreenCaptureResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 465
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 475
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    iget-object v1, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-direct {v0, v1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/ParcelableColorSpace;->writeToParcel(Landroid/os/Parcel;I)V

    .line 476
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenCaptureResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/HardwareBuffer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    return-void
.end method
