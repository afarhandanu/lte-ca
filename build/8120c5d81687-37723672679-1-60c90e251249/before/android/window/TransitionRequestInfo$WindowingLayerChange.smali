.class public final Landroid/window/TransitionRequestInfo$WindowingLayerChange;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowingLayerChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$WindowingLayerChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRemoteCallback:Landroid/os/IRemoteCallback;

.field private final blacklist mWindowingLayer:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 820
    new-instance v0, Landroid/window/TransitionRequestInfo$WindowingLayerChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$WindowingLayerChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/IRemoteCallback;)V
    .registers 3

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput p1, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mWindowingLayer:I

    .line 745
    iput-object p2, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 746
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 809
    iput v0, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mWindowingLayer:I

    .line 810
    const-class v0, Landroid/app/ActivityManager$AppTask$WindowingLayer;

    iget v1, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mWindowingLayer:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 812
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 813
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 817
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRemoteCallback()Landroid/os/IRemoteCallback;
    .registers 2

    .line 770
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mRemoteCallback:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getWindowingLayer()I
    .registers 2

    .line 765
    iget v0, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mWindowingLayer:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowingLayerChange { windowingLayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mWindowingLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 791
    iget p2, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mWindowingLayer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-object p2, p0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 793
    return-void
.end method
