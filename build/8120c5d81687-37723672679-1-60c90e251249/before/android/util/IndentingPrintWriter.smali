.class public Landroid/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private blacklist mCurrentIndent:[C

.field private blacklist mCurrentLength:I

.field private blacklist mEmptyLine:Z

.field private blacklist mIndentBuilder:Ljava/lang/StringBuilder;

.field private blacklist mSingleChar:[C

.field private final blacklist mSingleIndent:Ljava/lang/String;

.field private final blacklist mWrapLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .registers 4

    .line 57
    const-string v0, "  "

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5

    .line 61
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 5

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 66
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 76
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 52
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 54
    new-array p1, p1, [C

    iput-object p1, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    .line 77
    iput-object p2, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 78
    iput p4, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    .line 79
    if-eqz p3, :cond_1c

    .line 80
    iget-object p1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1c
    return-void
.end method

.method private blacklist maybeWriteIndent()V
    .registers 4

    .line 243
    iget-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_27

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 245
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_27

    .line 246
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_1f

    .line 247
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 249
    :cond_1f
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v2, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v2

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 252
    :cond_27
    return-void
.end method


# virtual methods
.method public blacklist decreaseIndent()Landroid/util/IndentingPrintWriter;
    .registers 4

    .line 131
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 133
    return-object p0
.end method

.method public blacklist increaseIndent()Landroid/util/IndentingPrintWriter;
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 123
    return-object p0
.end method

.method public blacklist print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;
    .registers 5

    .line 142
    if-nez p2, :cond_7

    .line 143
    const-string/jumbo p2, "null"

    goto/16 :goto_95

    .line 144
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 145
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_21

    .line 146
    check-cast p2, [Z

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_95

    .line 147
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_30

    .line 148
    check-cast p2, [B

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 149
    :cond_30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3f

    .line 150
    check-cast p2, [C

    invoke-static {p2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 151
    :cond_3f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4e

    .line 152
    check-cast p2, [D

    invoke-static {p2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 153
    :cond_4e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5d

    .line 154
    check-cast p2, [F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 155
    :cond_5d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6c

    .line 156
    check-cast p2, [I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 157
    :cond_6c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7b

    .line 158
    check-cast p2, [J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 159
    :cond_7b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_8a

    .line 160
    check-cast p2, [S

    invoke-static {p2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 162
    :cond_8a
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_95

    .line 165
    :cond_91
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 167
    :goto_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 168
    return-object p0
.end method

.method public blacklist printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;
    .registers 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    return-object p0
.end method

.method public whitelist test-api println()V
    .registers 2

    .line 182
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->write(I)V

    .line 183
    return-void
.end method

.method public blacklist setIndent(I)Landroid/util/IndentingPrintWriter;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    nop

    :goto_7
    if-ge v1, p1, :cond_f

    .line 111
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 113
    :cond_f
    return-object p0
.end method

.method public blacklist setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 96
    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 4

    .line 187
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 188
    iget-object p1, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/util/IndentingPrintWriter;->write([CII)V

    .line 189
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 7

    .line 193
    new-array v0, p3, [C

    .line 194
    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 195
    invoke-virtual {p0, v0, v2, p3}, Landroid/util/IndentingPrintWriter;->write([CII)V

    .line 196
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 11

    .line 200
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 201
    add-int/2addr p3, p2

    .line 202
    nop

    .line 203
    move v1, p2

    .line 206
    :goto_9
    if-ge p2, p3, :cond_54

    .line 207
    add-int/lit8 v2, p2, 0x1

    aget-char p2, p1, p2

    .line 208
    iget v3, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    .line 209
    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_28

    .line 210
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 211
    sub-int p2, v2, v1

    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 212
    nop

    .line 213
    iput-boolean v4, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 214
    iput v3, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    .line 218
    :cond_28
    iget p2, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    if-lez p2, :cond_52

    iget p2, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    iget v6, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v6, v0

    if-lt p2, v6, :cond_52

    .line 219
    iget-boolean p2, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez p2, :cond_41

    .line 221
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 222
    iput-boolean v4, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 223
    sub-int p2, v2, v1

    iput p2, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_52

    .line 226
    :cond_41
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 227
    sub-int p2, v2, v1

    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 228
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 229
    iput-boolean v4, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 230
    nop

    .line 231
    iput v3, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    .line 234
    :cond_52
    :goto_52
    move p2, v2

    goto :goto_9

    .line 236
    :cond_54
    if-eq v1, p2, :cond_5d

    .line 237
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 238
    sub-int/2addr p2, v1

    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 240
    :cond_5d
    return-void
.end method
