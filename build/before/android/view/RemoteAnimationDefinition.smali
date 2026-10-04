.class public Landroid/view/RemoteAnimationDefinition;
.super Ljava/lang/Object;
.source "RemoteAnimationDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationDefinition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mTransitionAnimationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Landroid/view/RemoteAnimationDefinition$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    .line 114
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_25

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    sget-object v3, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    .line 118
    iget-object v4, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 120
    :cond_25
    return-void
.end method


# virtual methods
.method public greylist addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V
    .registers 6

    .line 59
    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    invoke-direct {v1, p3, p2}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;-><init>(Landroid/view/RemoteAnimationAdapter;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public greylist addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V
    .registers 4

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    .line 74
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 101
    return-object v0

    .line 103
    :cond_c
    iget v1, p1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    if-eqz v1, :cond_1e

    iget v1, p1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_1e

    .line 107
    :cond_1d
    return-object v0

    .line 105
    :cond_1e
    :goto_1e
    iget-object p1, p1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    return-object p1
.end method

.method public greylist-max-o hasTransition(ILandroid/util/ArraySet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 5

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_2
    iget-object v2, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 138
    iget-object v2, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    iget-object v2, v2, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 139
    invoke-interface {v2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_23

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_22
    goto :goto_2b

    .line 141
    :catch_23
    move-exception p1

    .line 142
    const-string p1, "RemoteAnimationDefinition"

    const-string v0, "Failed to link to death recipient"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_2b
    return-void
.end method

.method public blacklist setCallingPidUid(II)V
    .registers 5

    .line 127
    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 128
    iget-object v1, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    iget-object v1, v1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1, p1, p2}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 130
    :cond_1a
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 153
    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    .line 156
    iget-object v2, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v2, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 159
    :cond_23
    return-void
.end method
