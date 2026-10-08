.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final whitelist NOTHING:[I

.field public static final greylist-max-o VIEW_STATE_ACCELERATED:I = 0x40

.field public static final greylist-max-o VIEW_STATE_ACTIVATED:I = 0x20

.field public static final greylist-max-o VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final greylist-max-o VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final greylist-max-o VIEW_STATE_ENABLED:I = 0x8

.field public static final greylist-max-o VIEW_STATE_FOCUSED:I = 0x4

.field public static final greylist-max-o VIEW_STATE_HOVERED:I = 0x80

.field static final greylist-max-o VIEW_STATE_IDS:[I

.field public static final greylist-max-o VIEW_STATE_PRESSED:I = 0x10

.field public static final greylist-max-o VIEW_STATE_SELECTED:I = 0x2

.field private static final greylist-max-o VIEW_STATE_SETS:[[I

.field public static final greylist-max-o VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final whitelist WILD_CARD:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 68
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 82
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    if-ne v0, v1, :cond_82

    .line 87
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 88
    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    sget-object v4, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_43

    .line 89
    sget-object v4, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v4, v4, v3

    .line 90
    move v6, v2

    :goto_25
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v7, v7

    if-ge v6, v7, :cond_40

    .line 91
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    aget v7, v7, v6

    if-ne v7, v4, :cond_3d

    .line 92
    mul-int/lit8 v7, v3, 0x2

    aput v4, v1, v7

    .line 93
    add-int/2addr v7, v5

    sget-object v8, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    aput v8, v1, v7

    .line 90
    :cond_3d
    add-int/lit8 v6, v6, 0x2

    goto :goto_25

    .line 88
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 98
    :cond_43
    sget-object v3, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 99
    shl-int v3, v5, v3

    new-array v3, v3, [[I

    sput-object v3, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 100
    move v3, v2

    :goto_4f
    sget-object v4, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_77

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 102
    new-array v4, v4, [I

    .line 103
    nop

    .line 104
    move v5, v2

    move v6, v5

    :goto_5d
    if-ge v5, v0, :cond_70

    .line 105
    add-int/lit8 v7, v5, 0x1

    aget v7, v1, v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_6d

    .line 106
    add-int/lit8 v7, v6, 0x1

    aget v8, v1, v5

    aput v8, v4, v6

    move v6, v7

    .line 104
    :cond_6d
    add-int/lit8 v5, v5, 0x2

    goto :goto_5d

    .line 109
    :cond_70
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v4, v5, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 127
    :cond_77
    new-array v0, v2, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 132
    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Landroid/util/StateSet;->NOTHING:[I

    return-void

    .line 83
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_8a
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o containsAttribute([[II)Z
    .registers 9

    .line 241
    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 242
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    .line 243
    if-nez v3, :cond_c

    .line 244
    goto :goto_20

    .line 246
    :cond_c
    array-length v4, v3

    move v5, v0

    :goto_e
    if-ge v5, v4, :cond_1d

    aget v6, v3, v5

    .line 247
    if-eq v6, p1, :cond_1b

    neg-int v6, v6

    if-ne v6, p1, :cond_18

    goto :goto_1b

    .line 246
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 248
    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0

    .line 242
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 253
    :cond_20
    :goto_20
    return v0
.end method

.method public static whitelist dump([I)Ljava/lang/String;
    .registers 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    array-length v1, p0

    .line 270
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_42

    .line 272
    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_48

    goto :goto_3f

    .line 295
    :sswitch_f
    const-string v3, "H "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 292
    :sswitch_15
    const-string v3, "A "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    goto :goto_3f

    .line 277
    :sswitch_1b
    const-string v3, "P "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    goto :goto_3f

    .line 280
    :sswitch_21
    const-string v3, "S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    goto :goto_3f

    .line 289
    :sswitch_27
    const-string v3, "C "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    goto :goto_3f

    .line 286
    :sswitch_2d
    const-string v3, "E "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    goto :goto_3f

    .line 274
    :sswitch_33
    const-string v3, "W "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    goto :goto_3f

    .line 283
    :sswitch_39
    const-string v3, "F "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    nop

    .line 270
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 300
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_48
    .sparse-switch
        0x101009c -> :sswitch_39
        0x101009d -> :sswitch_33
        0x101009e -> :sswitch_2d
        0x10100a0 -> :sswitch_27
        0x10100a1 -> :sswitch_21
        0x10100a7 -> :sswitch_1b
        0x10102fe -> :sswitch_15
        0x1010367 -> :sswitch_f
    .end sparse-switch
.end method

.method public static greylist-max-o get(I)[I
    .registers 2

    .line 115
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 118
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aget-object p0, v0, p0

    return-object p0

    .line 116
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid state set mask"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist isWildCard([I)Z
    .registers 2

    .line 140
    array-length v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    aget p0, p0, v0

    if-nez p0, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static whitelist stateSetMatches([II)Z
    .registers 7

    .line 211
    array-length v0, p0

    .line 212
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_17

    .line 213
    aget v4, p0, v2

    .line 214
    if-nez v4, :cond_b

    .line 216
    return v3

    .line 218
    :cond_b
    if-lez v4, :cond_10

    .line 219
    if-eq p1, v4, :cond_14

    .line 220
    return v1

    .line 224
    :cond_10
    neg-int v3, v4

    if-ne p1, v3, :cond_14

    .line 226
    return v1

    .line 212
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 230
    :cond_17
    return v3
.end method

.method public static whitelist stateSetMatches([I[I)Z
    .registers 11

    .line 151
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 152
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :cond_e
    :goto_e
    return v0

    .line 154
    :cond_f
    array-length v2, p0

    .line 155
    array-length v3, p1

    .line 156
    move v4, v1

    :goto_12
    if-ge v4, v2, :cond_3f

    .line 157
    aget v5, p0, v4

    .line 158
    if-nez v5, :cond_19

    .line 160
    return v0

    .line 163
    :cond_19
    if-lez v5, :cond_1d

    .line 164
    move v6, v0

    goto :goto_20

    .line 167
    :cond_1d
    nop

    .line 168
    neg-int v5, v5

    move v6, v1

    .line 170
    :goto_20
    nop

    .line 171
    move v7, v1

    :goto_22
    if-ge v7, v3, :cond_36

    .line 172
    aget v8, p1, v7

    .line 173
    if-nez v8, :cond_2b

    .line 175
    if-eqz v6, :cond_36

    .line 177
    return v1

    .line 183
    :cond_2b
    if-ne v8, v5, :cond_33

    .line 184
    if-eqz v6, :cond_32

    .line 185
    nop

    .line 187
    move v5, v0

    goto :goto_37

    .line 190
    :cond_32
    return v1

    .line 171
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 194
    :cond_36
    move v5, v1

    :goto_37
    if-eqz v6, :cond_3c

    if-nez v5, :cond_3c

    .line 197
    return v1

    .line 156
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 200
    :cond_3f
    return v0
.end method

.method public static whitelist trimStateSet([II)[I
    .registers 4

    .line 257
    array-length v0, p0

    if-ne v0, p1, :cond_4

    .line 258
    return-object p0

    .line 261
    :cond_4
    new-array v0, p1, [I

    .line 262
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v0
.end method
