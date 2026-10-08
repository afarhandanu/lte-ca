.class public Landroid/window/WindowContextInfo;
.super Ljava/lang/Object;
.source "WindowContextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContextInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/window/WindowContextInfo$1;

    invoke-direct {v0}, Landroid/window/WindowContextInfo$1;-><init>()V

    sput-object v0, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;I)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    iput-object p1, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 48
    iput p2, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContextInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContextInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 93
    return v0

    .line 95
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 98
    :cond_12
    check-cast p1, Landroid/window/WindowContextInfo;

    .line 99
    iget-object v2, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    iget p1, p1, Landroid/window/WindowContextInfo;->mDisplayId:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 96
    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 105
    nop

    .line 106
    iget-object v0, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 107
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    add-int/2addr v1, v0

    .line 108
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextInfo{config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 65
    iget-object v0, p0, Landroid/window/WindowContextInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 66
    iget p2, p0, Landroid/window/WindowContextInfo;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
