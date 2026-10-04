.class public final Landroid/window/BackNavigationInfo$CustomAnimationInfo;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackNavigationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomAnimationInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo$CustomAnimationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCustomBackground:I

.field private blacklist mCustomEnterAnim:I

.field private blacklist mCustomExitAnim:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mWindowAnimations:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCustomBackground(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomEnterAnim(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomExitAnim(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowAnimations(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 435
    new-instance v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$CustomAnimationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    .line 427
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    .line 405
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomBackground()I
    .registers 2

    .line 400
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    return v0
.end method

.method public blacklist getCustomEnterAnim()I
    .registers 2

    .line 393
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    return v0
.end method

.method public blacklist getCustomExitAnim()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWindowAnimations()I
    .registers 2

    .line 379
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomAnimationInfo, package name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 414
    iget-object p2, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 415
    iget p2, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget p2, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget p2, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget p2, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return-void
.end method
