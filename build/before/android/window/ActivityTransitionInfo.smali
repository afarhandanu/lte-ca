.class public final Landroid/window/ActivityTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityTransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ActivityTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

.field private final blacklist mComponent:Landroid/content/ComponentName;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Landroid/window/ActivityTransitionInfo$1;

    invoke-direct {v0}, Landroid/window/ActivityTransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/ActivityTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;I)V
    .registers 4

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/window/ActivityTransitionInfo;-><init>(Landroid/content/ComponentName;ILandroid/window/AppCompatTransitionInfo;)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;ILandroid/window/AppCompatTransitionInfo;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    .line 74
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 76
    iput p2, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    .line 77
    iput-object p3, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    .line 80
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 167
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_1a

    move-object p1, v3

    goto :goto_22

    :cond_1a
    sget-object v0, Landroid/window/AppCompatTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/AppCompatTransitionInfo;

    .line 171
    :goto_22
    iput-object v1, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    .line 172
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 174
    iput v2, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    .line 175
    iput-object p1, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    .line 178
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ActivityTransitionInfo;)V
    .registers 4

    .line 48
    iget-object v0, p1, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    iget-object p1, p1, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    invoke-direct {p0, v0, v1, p1}, Landroid/window/ActivityTransitionInfo;-><init>(Landroid/content/ComponentName;ILandroid/window/AppCompatTransitionInfo;)V

    .line 49
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 120
    :cond_12
    check-cast p1, Landroid/window/ActivityTransitionInfo;

    .line 122
    iget-object v2, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    .line 123
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    iget v3, p1, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    iget-object p1, p1, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    .line 125
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 122
    :goto_30
    return v0

    .line 118
    :cond_31
    :goto_31
    return v1
.end method

.method public blacklist getAppCompatTransitionInfo()Landroid/window/AppCompatTransitionInfo;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    return-object v0
.end method

.method public blacklist getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 134
    nop

    .line 135
    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 136
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    add-int/2addr v0, v2

    .line 137
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityTransitionInfo { component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appCompatTransitionInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

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
    .registers 4

    .line 147
    nop

    .line 148
    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 149
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    iget v0, p0, Landroid/window/ActivityTransitionInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/window/ActivityTransitionInfo;->mAppCompatTransitionInfo:Landroid/window/AppCompatTransitionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    :cond_1f
    return-void
.end method
