.class public final Landroid/telephony/data/TrafficDescriptor$OsAppId;
.super Ljava/lang/Object;
.source "TrafficDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/TrafficDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OsAppId"
.end annotation


# static fields
.field private static final blacklist ALLOWED_APP_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ANDROID_OS_ID:Ljava/util/UUID;


# instance fields
.field private final blacklist mAppId:Ljava/lang/String;

.field private final blacklist mDifferentiator:I

.field private final blacklist mOsId:Ljava/util/UUID;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;
    .registers 1

    sget-object v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ALLOWED_APP_IDS:Ljava/util/Set;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 49
    nop

    .line 50
    const-string v0, "97a498e3-fc92-5c94-8986-0333d06e4e47"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    .line 58
    const-string v0, "CBS"

    const-string v1, "PRIORITIZE_UNIFIED_COMMUNICATIONS"

    const-string v2, "ENTERPRISE"

    const-string v3, "PRIORITIZE_LATENCY"

    const-string v4, "PRIORITIZE_BANDWIDTH"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ALLOWED_APP_IDS:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;)V
    .registers 4

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;I)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v0, 0x1

    if-lt p3, v0, :cond_13

    .line 105
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    .line 106
    iput-object p2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    .line 107
    iput p3, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    .line 108
    return-void

    .line 102
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid differentiator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>([B)V
    .registers 9

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    :try_start_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 123
    new-array v3, v2, [B

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 127
    const-string v2, "[^0-9]+([0-9]+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 128
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 130
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    .line 131
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    goto :goto_56

    .line 133
    :cond_52
    iput v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    .line 134
    iput-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_56} :catch_58

    .line 139
    :goto_56
    nop

    .line 140
    return-void

    .line 136
    :catch_58
    move-exception v1

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_74

    .line 138
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    :cond_74
    const/4 p1, 0x0

    :goto_75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 188
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 189
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 190
    :cond_12
    check-cast p1, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    .line 191
    iget v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    iget v3, p1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    iget-object v3, p1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    .line 192
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 191
    :goto_30
    return v0

    .line 189
    :cond_31
    :goto_31
    return v1
.end method

.method public blacklist getAppId()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBytes()[B
    .registers 5

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_17

    iget v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 171
    array-length v1, v0

    add-int/lit8 v1, v1, 0x11

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 172
    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 174
    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDifferentiator()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    return v0
.end method

.method public blacklist getOsId()Ljava/util/UUID;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 197
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OsAppId: OS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", App="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", differentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    .line 183
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    return-object v0
.end method
