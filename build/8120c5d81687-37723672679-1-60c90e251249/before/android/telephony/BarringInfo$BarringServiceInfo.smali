.class public final Landroid/telephony/BarringInfo$BarringServiceInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BarringServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BarringInfo$BarringServiceInfo$BarringType;
    }
.end annotation


# static fields
.field public static final whitelist BARRING_TYPE_CONDITIONAL:I = 0x1

.field public static final whitelist BARRING_TYPE_NONE:I = 0x0

.field public static final whitelist BARRING_TYPE_UNCONDITIONAL:I = 0x2

.field public static final whitelist BARRING_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBarringType:I

.field private final blacklist mConditionalBarringFactor:I

.field private final blacklist mConditionalBarringTimeSeconds:I

.field private final blacklist mIsConditionallyBarred:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(IZII)V
    .registers 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    .line 145
    iput-boolean p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    .line 146
    iput p3, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    .line 147
    iput p4, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    .line 232
    return-void
.end method

.method private static blacklist barringTypeToString(I)Ljava/lang/String;
    .registers 3

    .line 209
    packed-switch p0, :pswitch_data_2a

    .line 214
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

    goto :goto_28

    .line 212
    :pswitch_1d
    const-string p0, "UNCONDITIONAL"

    goto :goto_28

    .line 211
    :pswitch_20
    const-string p0, "CONDITIONAL"

    goto :goto_28

    .line 210
    :pswitch_23
    const-string p0, "NONE"

    goto :goto_28

    .line 213
    :pswitch_26
    const-string p0, "UNKNOWN"

    .line 209
    :goto_28
    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 199
    instance-of v0, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 201
    :cond_6
    check-cast p1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 202
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    iget v2, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    if-ne v0, v2, :cond_21

    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    iget-boolean v2, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    iget v2, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    iget p1, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    if-ne v0, p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method public whitelist getBarringType()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    return v0
.end method

.method public whitelist getConditionalBarringFactor()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    return v0
.end method

.method public whitelist getConditionalBarringTimeSeconds()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 193
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 193
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBarred()Z
    .registers 4

    .line 186
    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    if-ne v0, v2, :cond_f

    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_10
    return v2
.end method

.method public whitelist isConditionallyBarred()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarringServiceInfo {mBarringType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-static {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->barringTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsConditionallyBarred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditionalBarringFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditionalBarringTimeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

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
    .registers 3

    .line 236
    iget p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-boolean p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    iget p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return-void
.end method
