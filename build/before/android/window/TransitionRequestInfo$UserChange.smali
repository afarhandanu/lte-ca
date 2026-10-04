.class public final Landroid/window/TransitionRequestInfo$UserChange;
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
    name = "UserChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$UserChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mNewUserId:I

.field private final blacklist mPreviousUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 711
    new-instance v0, Landroid/window/TransitionRequestInfo$UserChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$UserChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$UserChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput p1, p0, Landroid/window/TransitionRequestInfo$UserChange;->mPreviousUserId:I

    .line 640
    iput p2, p0, Landroid/window/TransitionRequestInfo$UserChange;->mNewUserId:I

    .line 641
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 704
    iput v0, p0, Landroid/window/TransitionRequestInfo$UserChange;->mPreviousUserId:I

    .line 705
    iput p1, p0, Landroid/window/TransitionRequestInfo$UserChange;->mNewUserId:I

    .line 708
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNewUserId()I
    .registers 2

    .line 665
    iget v0, p0, Landroid/window/TransitionRequestInfo$UserChange;->mNewUserId:I

    return v0
.end method

.method public blacklist getPreviousUserId()I
    .registers 2

    .line 660
    iget v0, p0, Landroid/window/TransitionRequestInfo$UserChange;->mPreviousUserId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserChange { previousUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$UserChange;->mPreviousUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$UserChange;->mNewUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 686
    iget p2, p0, Landroid/window/TransitionRequestInfo$UserChange;->mPreviousUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget p2, p0, Landroid/window/TransitionRequestInfo$UserChange;->mNewUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    return-void
.end method
