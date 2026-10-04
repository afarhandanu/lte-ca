.class public final Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo$AnimationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomActivityTransition"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCustomBackgroundColor:I

.field private blacklist mCustomEnterResId:I

.field private blacklist mCustomExitResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1467
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    .line 1443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    .line 1444
    return-void
.end method


# virtual methods
.method public blacklist addCustomActivityTransition(III)V
    .registers 4

    .line 1449
    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    .line 1450
    iput p2, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    .line 1451
    iput p3, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    .line 1452
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1456
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .registers 2

    .line 1436
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    return v0
.end method

.method public blacklist getCustomEnterResId()I
    .registers 2

    .line 1426
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    return v0
.end method

.method public blacklist getCustomExitResId()I
    .registers 2

    .line 1431
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1461
    iget p2, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1462
    iget p2, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    iget p2, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    return-void
.end method
