.class Landroid/text/PackedObjectVector;
.super Ljava/lang/Object;
.source "PackedObjectVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mColumns:I

.field private greylist-max-o mRowGapLength:I

.field private greylist-max-o mRowGapStart:I

.field private greylist-max-o mRows:I

.field private greylist-max-o mValues:[Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 39
    sget-object p1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 40
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 42
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 43
    iget p1, p0, Landroid/text/PackedObjectVector;->mRows:I

    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 44
    return-void
.end method

.method private greylist-max-o growBuffer()V
    .registers 8

    .line 115
    nop

    .line 116
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v0, v1

    .line 115
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 117
    array-length v1, v0

    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int/2addr v1, v2

    .line 118
    iget v2, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 120
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    mul-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v5

    sub-int v5, v1, v2

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v2, v6

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 124
    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 125
    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 126
    return-void
.end method

.method private greylist-max-o moveRowGapTo(I)V
    .registers 10

    .line 131
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-ne p1, v0, :cond_5

    .line 132
    return-void

    .line 134
    :cond_5
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_46

    .line 136
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v0, p1

    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 138
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v2, v3

    :goto_18
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_45

    .line 140
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    sub-int v3, v2, v3

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v3, v4

    .line 142
    move v4, v1

    :goto_2b
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v4, v5, :cond_42

    .line 144
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v4

    aget-object v5, v5, v6

    .line 146
    iget-object v6, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v7, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    aput-object v5, v6, v7

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 138
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 149
    :cond_45
    goto :goto_73

    .line 152
    :cond_46
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr v0, p1

    .line 154
    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    :goto_4d
    if-lt v2, p1, :cond_73

    .line 156
    sub-int v3, v2, p1

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 158
    move v4, v1

    :goto_59
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v4, v5, :cond_70

    .line 160
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v4

    aget-object v5, v5, v6

    .line 162
    iget-object v6, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v7, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    aput-object v5, v6, v7

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 154
    :cond_70
    add-int/lit8 v2, v2, -0x1

    goto :goto_4d

    .line 167
    :cond_73
    :goto_73
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 168
    return-void
.end method


# virtual methods
.method public greylist-max-o deleteAt(II)V
    .registers 3

    .line 88
    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 90
    iget p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 91
    iget p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 93
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    .line 98
    return-void
.end method

.method public greylist-max-o dump()V
    .registers 8

    .line 173
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/text/PackedObjectVector;->mRows:I

    if-ge v1, v2, :cond_63

    .line 175
    move v2, v0

    :goto_7
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v3, :cond_59

    .line 177
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 179
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt v1, v4, :cond_3e

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v4, v5

    if-lt v1, v4, :cond_1f

    goto :goto_3e

    .line 182
    :cond_1f
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_56

    .line 180
    :cond_3e
    :goto_3e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 175
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 185
    :cond_59
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " << \n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    :cond_63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public greylist-max-o getValue(II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .line 49
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 50
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 52
    :cond_7
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    .line 54
    return-object p1
.end method

.method public greylist-max-o insertAt(I[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 71
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    if-nez v0, :cond_a

    .line 72
    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    .line 74
    :cond_a
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 75
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 77
    const/4 v0, 0x0

    if-nez p2, :cond_25

    .line 78
    nop

    :goto_1a
    iget p2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, p2, :cond_32

    .line 79
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 81
    :cond_25
    nop

    :goto_26
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_32

    .line 82
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 83
    :cond_32
    return-void
.end method

.method public greylist-max-o setValue(IILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    .line 60
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 61
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 63
    :cond_7
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput-object p3, v0, p1

    .line 64
    return-void
.end method

.method public greylist-max-o size()I
    .registers 3

    .line 103
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o width()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    return v0
.end method
