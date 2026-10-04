.class public final Landroid/view/DisplayAddress$Network;
.super Landroid/view/DisplayAddress;
.source "DisplayAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Network"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAddress$Network;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Landroid/view/DisplayAddress$Network$1;

    invoke-direct {v0}, Landroid/view/DisplayAddress$Network$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAddress$Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 217
    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    .line 219
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/view/DisplayAddress-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/DisplayAddress$Network;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 199
    instance-of v0, p1, Landroid/view/DisplayAddress$Network;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    check-cast p1, Landroid/view/DisplayAddress$Network;

    iget-object p1, p1, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 214
    iget-object p2, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return-void
.end method
