.class public Landroid/window/BackAnimationAdapter;
.super Ljava/lang/Object;
.source "BackAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mOriginDisplayId:I

.field private final blacklist mRunner:Landroid/window/IBackAnimationRunner;

.field private blacklist mSupportedAnimators:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/window/BackAnimationAdapter$1;

    invoke-direct {v0}, Landroid/window/BackAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IBackAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    .line 45
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IBackAnimationRunner;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    .line 39
    iput-object p1, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRunner()Landroid/window/IBackAnimationRunner;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-object v0
.end method

.method public blacklist isAnimatable(I)Z
    .registers 6

    .line 90
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 91
    return v1

    .line 93
    :cond_6
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_b
    if-ltz v0, :cond_17

    .line 94
    iget-object v3, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_14

    .line 95
    return v2

    .line 93
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 98
    :cond_17
    return v1
.end method

.method public blacklist updateSupportedAnimators(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    .line 57
    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1d

    .line 58
    iget-object v1, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 60
    :cond_1d
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 69
    iget-object p2, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 70
    iget-object p2, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object p2, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 72
    iget p2, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
