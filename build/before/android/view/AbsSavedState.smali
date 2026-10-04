.class public abstract Landroid/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY_STATE:Landroid/view/AbsSavedState;


# instance fields
.field private final greylist-max-o mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/view/AbsSavedState$1;

    invoke-direct {v0}, Landroid/view/AbsSavedState$1;-><init>()V

    sput-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 83
    new-instance v0, Landroid/view/AbsSavedState$2;

    invoke-direct {v0}, Landroid/view/AbsSavedState$2;-><init>()V

    sput-object v0, Landroid/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 36
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 57
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    .line 68
    if-eqz p1, :cond_a

    goto :goto_c

    :cond_a
    sget-object p1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    :goto_c
    iput-object p1, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 69
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcelable;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_e

    .line 47
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-object p1, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 48
    return-void

    .line 45
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "superState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Landroid/view/AbsSavedState-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/AbsSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getSuperState()Landroid/os/Parcelable;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 80
    iget-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    return-void
.end method
