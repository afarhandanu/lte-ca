.class public final Landroid/window/TransitionFilter;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionFilter$Requirement;,
        Landroid/window/TransitionFilter$ContainerOrder;
    }
.end annotation


# static fields
.field public static final blacklist CONTAINER_ORDER_ANY:I = 0x0

.field public static final blacklist CONTAINER_ORDER_TOP:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mFlags:I

.field public blacklist mNotFlags:I

.field public blacklist mRequirements:[Landroid/window/TransitionFilter$Requirement;

.field public blacklist mTypeSet:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcontainerOrderToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/window/TransitionFilter;->containerOrderToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/window/TransitionFilter$1;

    invoke-direct {v0}, Landroid/window/TransitionFilter$1;-><init>()V

    sput-object v0, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/window/TransitionFilter;->mFlags:I

    .line 65
    iput v1, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 70
    iput-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 73
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/window/TransitionFilter;->mFlags:I

    .line 65
    iput v1, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 70
    iput-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter;->mFlags:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 79
    sget-object v0, Landroid/window/TransitionFilter$Requirement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/window/TransitionFilter$Requirement;

    iput-object p1, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist containerOrderToString(I)Ljava/lang/String;
    .registers 3

    .line 399
    packed-switch p0, :pswitch_data_24

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :pswitch_1d
    const-string p0, "TOP"

    return-object p0

    .line 400
    :pswitch_20
    const-string p0, "ANY"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matches(Landroid/window/TransitionInfo;)Z
    .registers 7

    .line 84
    iget-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 86
    nop

    .line 87
    move v0, v2

    :goto_8
    iget-object v3, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1d

    .line 88
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    iget-object v4, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_1a

    .line 89
    nop

    .line 90
    move v0, v1

    goto :goto_1e

    .line 87
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    move v0, v2

    .line 93
    :goto_1e
    if-nez v0, :cond_21

    return v2

    .line 95
    :cond_21
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    iget v3, p0, Landroid/window/TransitionFilter;->mFlags:I

    and-int/2addr v0, v3

    iget v3, p0, Landroid/window/TransitionFilter;->mFlags:I

    if-eq v0, v3, :cond_2d

    .line 96
    return v2

    .line 98
    :cond_2d
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    iget v3, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_37

    .line 99
    return v2

    .line 102
    :cond_37
    iget-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    if-eqz v0, :cond_55

    .line 103
    move v0, v2

    :goto_3c
    iget-object v3, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    array-length v3, v3

    if-ge v0, v3, :cond_55

    .line 104
    iget-object v3, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/window/TransitionFilter$Requirement;->matches(Landroid/window/TransitionInfo;)Z

    move-result v3

    .line 105
    iget-object v4, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    if-ne v3, v4, :cond_52

    .line 106
    return v2

    .line 103
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 110
    :cond_55
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string/jumbo v1, "{types=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    const-string v2, ""

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v1, :cond_3e

    .line 147
    move v1, v4

    :goto_15
    iget-object v5, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3e

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_23

    move-object v6, v2

    goto :goto_24

    :cond_23
    move-object v6, v3

    :goto_24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    aget v6, v6, v1

    invoke-static {v6}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 151
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "] flags=0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/window/TransitionFilter;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "] notFlags=0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, " checks=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    if-eqz v1, :cond_a5

    .line 155
    nop

    :goto_80
    iget-object v1, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    array-length v1, v1

    if-ge v4, v1, :cond_a5

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_8e

    move-object v5, v2

    goto :goto_8f

    :cond_8e
    move-object v5, v3

    :goto_8f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 159
    :cond_a5
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 116
    iget-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 117
    iget v0, p0, Landroid/window/TransitionFilter;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
