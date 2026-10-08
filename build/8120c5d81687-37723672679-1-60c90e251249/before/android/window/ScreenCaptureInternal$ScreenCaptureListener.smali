.class public Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;
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
    name = "ScreenCaptureListener"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field final blacklist mNativeObject:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 789
    nop

    .line 791
    const-class v0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/window/ScreenCaptureInternal;->-$$Nest$smgetNativeListenerFinalizer()J

    move-result-wide v1

    .line 790
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 832
    new-instance v0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener$1;

    invoke-direct {v0}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 803
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal;->-$$Nest$smnativeReadListenerFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    .line 804
    sget-object p1, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    goto :goto_1b

    .line 806
    :cond_17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    .line 808
    :goto_1b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCaptureInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/ObjIntConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;",
            ">;)V"
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal;->-$$Nest$smnativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    .line 798
    sget-object p1, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 799
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onError(I)V
    .registers 4

    .line 829
    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/window/ScreenCaptureInternal;->-$$Nest$smnativeListenerOnError(JI)V

    .line 830
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 817
    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_d

    .line 818
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_16

    .line 820
    :cond_d
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 821
    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/window/ScreenCaptureInternal;->-$$Nest$smnativeWriteListenerToParcel(JLandroid/os/Parcel;)V

    .line 823
    :goto_16
    return-void
.end method
