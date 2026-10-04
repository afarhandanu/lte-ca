.class public Landroid/text/util/Rfc822Token;
.super Ljava/lang/Object;
.source "Rfc822Token.java"


# instance fields
.field private greylist-max-o mAddress:Ljava/lang/String;

.field private greylist-max-o mComment:Ljava/lang/String;

.field private greylist-max-o mName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static whitelist quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_25

    .line 167
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 169
    const/16 v4, 0x28

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_1c

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1c

    if-ne v3, v5, :cond_1f

    .line 170
    :cond_1c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 176
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist quoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 144
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    .line 145
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 147
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_18

    const/16 v5, 0x22

    if-ne v3, v5, :cond_1b

    .line 148
    :cond_18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :cond_1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 154
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 121
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_46

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 124
    const/16 v3, 0x41

    if-lt v2, v3, :cond_13

    const/16 v3, 0x5a

    if-le v2, v3, :cond_43

    :cond_13
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x7a

    if-le v2, v3, :cond_43

    :cond_1b
    const/16 v3, 0x20

    if-eq v2, v3, :cond_43

    const/16 v3, 0x30

    if-lt v2, v3, :cond_27

    const/16 v3, 0x39

    if-le v2, v3, :cond_43

    .line 128
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/text/util/Rfc822Token;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 132
    :cond_46
    return-object p0
.end method

.method private static greylist-max-o stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 188
    if-nez p0, :cond_8

    .line 189
    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0

    .line 191
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 196
    instance-of v0, p1, Landroid/text/util/Rfc822Token;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 197
    return v1

    .line 199
    :cond_6
    check-cast p1, Landroid/text/util/Rfc822Token;

    .line 200
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 201
    invoke-static {v0, v2}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    iget-object p1, p1, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 202
    invoke-static {v0, p1}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 200
    :goto_29
    return v1
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getComment()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 180
    nop

    .line 181
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    goto :goto_11

    :cond_f
    const/16 v1, 0x11

    .line 182
    :goto_11
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_1e

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 183
    :cond_1e
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    if-eqz v0, :cond_2b

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 184
    :cond_2b
    return v1
.end method

.method public whitelist setAddress(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public whitelist setComment(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 94
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/util/Rfc822Token;->quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_1f
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 99
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/util/Rfc822Token;->quoteComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_3e
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_59

    .line 105
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
