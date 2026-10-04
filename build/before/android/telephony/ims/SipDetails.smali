.class public final Landroid/telephony/ims/SipDetails;
.super Ljava/lang/Object;
.source "SipDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDetails$Builder;,
        Landroid/telephony/ims/SipDetails$Method;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METHOD_PUBLISH:I = 0x2

.field public static final whitelist METHOD_REGISTER:I = 0x1

.field public static final whitelist METHOD_SUBSCRIBE:I = 0x3

.field public static final whitelist METHOD_UNKNOWN:I


# instance fields
.field private final blacklist mCallId:Ljava/lang/String;

.field private final blacklist mCseq:I

.field private final blacklist mMethod:I

.field private final blacklist mReasonHeaderCause:I

.field private final blacklist mReasonHeaderText:Ljava/lang/String;

.field private final blacklist mResponseCode:I

.field private final blacklist mResponsePhrase:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 256
    new-instance v0, Landroid/telephony/ims/SipDetails$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDetails$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    .line 280
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDetails-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/SipDetails$Builder;)V
    .registers 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmMethod(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    .line 167
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmCseq(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    .line 168
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmResponseCode(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    .line 169
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmResponsePhrase(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmReasonHeaderCause(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    .line 171
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmReasonHeaderText(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmCallId(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDetails$Builder;Landroid/telephony/ims/SipDetails-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/telephony/ims/SipDetails$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 285
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4d

    .line 286
    :cond_12
    check-cast p1, Landroid/telephony/ims/SipDetails;

    .line 287
    iget v2, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mMethod:I

    if-ne v2, v3, :cond_4b

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mCseq:I

    if-ne v2, v3, :cond_4b

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    if-ne v2, v3, :cond_4b

    iget-object v2, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    .line 290
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget v2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    iget v3, p1, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    if-ne v2, v3, :cond_4b

    iget-object v2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    .line 292
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    .line 293
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    .line 287
    :goto_4c
    return v0

    .line 285
    :cond_4d
    :goto_4d
    return v1
.end method

.method public whitelist getCSeq()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    return v0
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMethod()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    return v0
.end method

.method public whitelist getReasonHeaderCause()I
    .registers 2

    .line 219
    iget v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    return v0
.end method

.method public whitelist getReasonHeaderText()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResponseCode()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    return v0
.end method

.method public whitelist getResponsePhrase()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 298
    iget v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDetails { methodType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ResponseCPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ReasonHeaderCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ReasonHeaderText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 247
    iget p2, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget p2, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget p2, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object p2, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget p2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    return-void
.end method
