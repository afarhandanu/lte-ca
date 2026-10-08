.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o crunch(Ljava/lang/StringBuilder;)V
    .registers 7

    .line 179
    nop

    .line 180
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 182
    :goto_7
    const/16 v3, 0x20

    if-ge v2, v0, :cond_3f

    .line 183
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 185
    if-nez v4, :cond_3c

    .line 186
    if-eqz v2, :cond_36

    add-int/lit8 v4, v0, -0x1

    if-eq v2, v4, :cond_36

    add-int/lit8 v4, v2, -0x1

    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_36

    .line 188
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_36

    add-int/lit8 v4, v2, 0x1

    .line 189
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_36

    .line 190
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_34

    goto :goto_36

    .line 194
    :cond_34
    move v2, v4

    goto :goto_3e

    .line 191
    :cond_36
    :goto_36
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 197
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    .line 199
    :goto_3e
    goto :goto_7

    .line 201
    :cond_3f
    nop

    :goto_40
    if-ge v1, v0, :cond_4e

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_4b

    .line 203
    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 201
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 206
    :cond_4e
    return-void
.end method

.method public static whitelist tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    nop

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 54
    :goto_16
    const/4 v6, 0x0

    if-ge v5, v3, :cond_107

    .line 55
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 57
    const/16 v8, 0x2c

    const/16 v9, 0x20

    if-eq v7, v8, :cond_bb

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_29

    goto/16 :goto_bb

    .line 79
    :cond_29
    const/16 v6, 0x5c

    const/16 v8, 0x22

    if-ne v7, v8, :cond_53

    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 82
    :goto_31
    if-ge v5, v3, :cond_105

    .line 83
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 85
    if-ne v7, v8, :cond_3d

    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    goto/16 :goto_105

    .line 88
    :cond_3d
    if-ne v7, v6, :cond_4d

    .line 89
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v3, :cond_4a

    .line 90
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_4a
    add-int/lit8 v5, v5, 0x2

    goto :goto_31

    .line 94
    :cond_4d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 98
    :cond_53
    const/16 v8, 0x28

    if-ne v7, v8, :cond_94

    .line 99
    nop

    .line 100
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    move v9, v7

    .line 102
    :goto_5c
    if-ge v5, v3, :cond_92

    if-lez v9, :cond_92

    .line 103
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 105
    const/16 v11, 0x29

    if-ne v10, v11, :cond_72

    .line 106
    if-le v9, v7, :cond_6d

    .line 107
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_6d
    add-int/lit8 v9, v9, -0x1

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 112
    :cond_72
    if-ne v10, v8, :cond_7c

    .line 113
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 116
    :cond_7c
    if-ne v10, v6, :cond_8c

    .line 117
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v3, :cond_89

    .line 118
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_89
    add-int/lit8 v5, v5, 0x2

    goto :goto_5c

    .line 122
    :cond_8c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 126
    :cond_92
    goto/16 :goto_105

    :cond_94
    const/16 v6, 0x3c

    if-ne v7, v6, :cond_ad

    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 129
    :goto_9a
    if-ge v5, v3, :cond_105

    .line 130
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 132
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_a7

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_105

    .line 136
    :cond_a7
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    .line 140
    :cond_ad
    if-ne v7, v9, :cond_b5

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_105

    .line 144
    :cond_b5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_105

    .line 58
    :cond_bb
    :goto_bb
    add-int/lit8 v5, v5, 0x1

    .line 60
    :goto_bd
    if-ge v5, v3, :cond_c8

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_c8

    .line 61
    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    .line 64
    :cond_c8
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_e6

    .line 67
    new-instance v6, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    .line 70
    :cond_e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_fc

    .line 71
    new-instance v7, Landroid/text/util/Rfc822Token;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_fc
    :goto_fc
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    :cond_105
    :goto_105
    goto/16 :goto_16

    .line 149
    :cond_107
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_125

    .line 152
    new-instance p0, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13b

    .line 155
    :cond_125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_13b

    .line 156
    new-instance p0, Landroid/text/util/Rfc822Token;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_13b
    :goto_13b
    return-void
.end method

.method public static whitelist tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .registers 2

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/util/Rfc822Token;

    return-object p0
.end method


# virtual methods
.method public whitelist findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 9

    .line 243
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 244
    nop

    .line 246
    :goto_5
    if-ge p2, v0, :cond_7b

    .line 247
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 249
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_7a

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_15

    goto/16 :goto_7a

    .line 251
    :cond_15
    const/16 v2, 0x5c

    const/16 v3, 0x22

    if-ne v1, v3, :cond_34

    .line 252
    add-int/lit8 p2, p2, 0x1

    .line 254
    :goto_1d
    if-ge p2, v0, :cond_79

    .line 255
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 257
    if-ne v1, v3, :cond_28

    .line 258
    add-int/lit8 p2, p2, 0x1

    .line 259
    goto :goto_79

    .line 260
    :cond_28
    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p2, 0x1

    if-ge v1, v0, :cond_31

    .line 261
    add-int/lit8 p2, p2, 0x2

    goto :goto_1d

    .line 263
    :cond_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 266
    :cond_34
    const/16 v3, 0x28

    if-ne v1, v3, :cond_61

    .line 267
    nop

    .line 268
    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x1

    .line 270
    :goto_3c
    if-ge p2, v0, :cond_60

    if-lez v1, :cond_60

    .line 271
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 273
    const/16 v5, 0x29

    if-ne v4, v5, :cond_4d

    .line 274
    add-int/lit8 v1, v1, -0x1

    .line 275
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 276
    :cond_4d
    if-ne v4, v3, :cond_54

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 278
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 279
    :cond_54
    if-ne v4, v2, :cond_5d

    add-int/lit8 v4, p2, 0x1

    if-ge v4, v0, :cond_5d

    .line 280
    add-int/lit8 p2, p2, 0x2

    goto :goto_3c

    .line 282
    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 285
    :cond_60
    goto :goto_79

    :cond_61
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_77

    .line 286
    add-int/lit8 p2, p2, 0x1

    .line 288
    :goto_67
    if-ge p2, v0, :cond_79

    .line 289
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 291
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_74

    .line 292
    add-int/lit8 p2, p2, 0x1

    .line 293
    goto :goto_79

    .line 295
    :cond_74
    add-int/lit8 p2, p2, 0x1

    goto :goto_67

    .line 299
    :cond_77
    add-int/lit8 p2, p2, 0x1

    .line 301
    :cond_79
    :goto_79
    goto :goto_5

    .line 250
    :cond_7a
    :goto_7a
    return p2

    .line 303
    :cond_7b
    return p2
.end method

.method public whitelist findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 7

    .line 217
    nop

    .line 218
    const/4 v0, 0x0

    move v1, v0

    .line 220
    :cond_3
    :goto_3
    if-ge v0, p2, :cond_1e

    .line 221
    invoke-virtual {p0, p1, v0}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 223
    if-ge v0, p2, :cond_3

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 226
    :goto_d
    if-ge v0, p2, :cond_1a

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1a

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 230
    :cond_1a
    if-ge v0, p2, :cond_3

    .line 231
    move v1, v0

    goto :goto_3

    .line 236
    :cond_1e
    return v1
.end method

.method public whitelist terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
