.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-p buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 121
    if-nez p0, :cond_9

    .line 122
    const-string/jumbo p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 124
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 126
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 128
    if-lez v1, :cond_2f

    .line 129
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_42
    return-void
.end method

.method public static blacklist callersWithin(Ljava/lang/Class;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    int-to-long v1, p1

    .line 321
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 322
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Landroid/util/DebugUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/util/DebugUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 323
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 324
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 325
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 326
    return-object p0
.end method

.method private static greylist-max-o constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 2

    .line 310
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_41

    aget-object v2, p0, v1

    .line 296
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 298
    :try_start_e
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 299
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 300
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p2, :cond_3c

    .line 301
    invoke-static {p1, v2}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_3b} :catch_3d

    return-object p0

    .line 304
    :cond_3c
    goto :goto_3e

    .line 303
    :catch_3d
    move-exception v2

    .line 295
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 306
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_f

    move v3, v5

    goto :goto_10

    :cond_f
    move v3, v4

    .line 250
    :goto_10
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v6, p0

    :goto_15
    if-ge v4, v6, :cond_74

    aget-object v7, p0, v4

    .line 251
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    .line 252
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 253
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 254
    :cond_41
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 255
    invoke-static {v7}, Landroid/util/DebugUtils;->getFieldValue(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    .line 256
    cmp-long v10, v8, v1

    if-nez v10, :cond_5a

    if-eqz v3, :cond_5a

    .line 257
    invoke-static {p1, v7}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_5a
    if-eqz v10, :cond_71

    and-long v10, p2, v8

    cmp-long v10, v10, v8

    if-nez v10, :cond_71

    .line 260
    not-long v8, v8

    and-long/2addr p2, v8

    .line 261
    invoke-static {p1, v7}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 265
    :cond_74
    cmp-long p0, p2, v1

    if-nez p0, :cond_88

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_7f

    goto :goto_88

    .line 268
    :cond_7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_8f

    .line 266
    :cond_88
    :goto_88
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getFieldValue(Ljava/lang/reflect/Field;)J
    .registers 7

    .line 276
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 277
    cmp-long v5, v3, v0

    if-eqz v5, :cond_c

    .line 278
    return-wide v3

    .line 280
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_10} :catch_15

    .line 281
    if-eqz p0, :cond_14

    .line 282
    int-to-long v0, p0

    return-wide v0

    .line 285
    :cond_14
    goto :goto_16

    .line 284
    :catch_15
    move-exception p0

    .line 286
    :goto_16
    return-wide v0
.end method

.method public static whitelist isObjectSelected(Ljava/lang/Object;)Z
    .registers 12

    .line 78
    nop

    .line 79
    const-string v0, "ANDROID_OBJECT_FILTER"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a4

    .line 81
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 85
    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_29
    array-length v5, v0

    if-ge v3, v5, :cond_a3

    .line 86
    aget-object v5, v0, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 89
    nop

    .line 90
    move-object v7, v6

    .line 92
    :goto_3a
    :try_start_3a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    .line 93
    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    .line 94
    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [Ljava/lang/Class;

    .line 92
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 96
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_76

    if-eqz v7, :cond_74

    goto :goto_76

    :cond_74
    move-object v7, v8

    goto :goto_3a

    .line 99
    :cond_76
    :goto_76
    if-eqz v7, :cond_90

    .line 100
    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v7, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_86

    .line 103
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_89

    :cond_86
    const-string/jumbo v6, "null"

    :goto_89
    aget-object v5, v5, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5
    :try_end_8f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_8f} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_8f} :catch_96
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_8f} :catch_91

    or-int/2addr v4, v5

    .line 111
    :cond_90
    :goto_90
    goto :goto_a0

    .line 109
    :catch_91
    move-exception v5

    .line 110
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_a0

    .line 107
    :catch_96
    move-exception v5

    .line 108
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_90

    .line 105
    :catch_9b
    move-exception v5

    .line 106
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_90

    .line 85
    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_a3
    move v1, v4

    .line 115
    :cond_a4
    return v1
.end method

.method static synthetic blacklist lambda$callersWithin$0(Ljava/lang/Class;Ljava/lang/StackTraceElement;)Z
    .registers 2

    .line 322
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 6

    .line 140
    long-to-float p1, p1

    .line 141
    nop

    .line 142
    const/high16 p2, 0x44610000    # 900.0f

    cmpl-float v0, p1, p2

    const/high16 v1, 0x44800000    # 1024.0f

    if-lez v0, :cond_f

    .line 143
    nop

    .line 144
    div-float/2addr p1, v1

    const-string v0, "KB"

    goto :goto_11

    .line 142
    :cond_f
    const-string v0, ""

    .line 146
    :goto_11
    cmpl-float v2, p1, p2

    if-lez v2, :cond_19

    .line 147
    nop

    .line 148
    div-float/2addr p1, v1

    const-string v0, "MB"

    .line 150
    :cond_19
    cmpl-float v2, p1, p2

    if-lez v2, :cond_21

    .line 151
    nop

    .line 152
    div-float/2addr p1, v1

    const-string v0, "GB"

    .line 154
    :cond_21
    cmpl-float v2, p1, p2

    if-lez v2, :cond_29

    .line 155
    nop

    .line 156
    div-float/2addr p1, v1

    const-string v0, "TB"

    .line 158
    :cond_29
    cmpl-float p2, p1, p2

    if-lez p2, :cond_31

    .line 159
    nop

    .line 160
    div-float/2addr p1, v1

    const-string v0, "PB"

    .line 163
    :cond_31
    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_46

    .line 164
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    .line 165
    :cond_46
    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5b

    .line 166
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    .line 167
    :cond_5b
    const/high16 p2, 0x42c80000    # 100.0f

    cmpg-float p2, p1, p2

    const-string v1, "%.0f"

    if-gez p2, :cond_70

    .line 168
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    .line 170
    :cond_70
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 172
    :goto_7c
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static greylist-max-o sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;
    .registers 6

    .line 178
    if-nez p2, :cond_9

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 181
    :cond_9
    long-to-float p0, p0

    .line 182
    nop

    .line 183
    const/high16 p1, 0x44610000    # 900.0f

    cmpl-float v0, p0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    if-lez v0, :cond_18

    .line 184
    nop

    .line 185
    div-float/2addr p0, v1

    const-string v0, "KB"

    goto :goto_1a

    .line 183
    :cond_18
    const-string v0, ""

    .line 187
    :goto_1a
    cmpl-float v2, p0, p1

    if-lez v2, :cond_22

    .line 188
    nop

    .line 189
    div-float/2addr p0, v1

    const-string v0, "MB"

    .line 191
    :cond_22
    cmpl-float v2, p0, p1

    if-lez v2, :cond_2a

    .line 192
    nop

    .line 193
    div-float/2addr p0, v1

    const-string v0, "GB"

    .line 195
    :cond_2a
    cmpl-float v2, p0, p1

    if-lez v2, :cond_32

    .line 196
    nop

    .line 197
    div-float/2addr p0, v1

    const-string v0, "TB"

    .line 199
    :cond_32
    cmpl-float p1, p0, p1

    if-lez p1, :cond_3a

    .line 200
    nop

    .line 201
    div-float/2addr p0, v1

    const-string v0, "PB"

    .line 204
    :cond_3a
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_4f

    .line 205
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.2f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_85

    .line 206
    :cond_4f
    const/high16 p1, 0x41200000    # 10.0f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_64

    .line 207
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_85

    .line 208
    :cond_64
    const/high16 p1, 0x42c80000    # 100.0f

    cmpg-float p1, p0, p1

    const-string v1, "%.0f"

    if-gez p1, :cond_79

    .line 209
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_85

    .line 211
    :cond_79
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 213
    :goto_85
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_41

    aget-object v2, p0, v1

    .line 226
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 227
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 228
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 230
    const/4 v3, 0x0

    :try_start_31
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne p2, v3, :cond_3c

    .line 231
    invoke-static {p1, v2}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_3b} :catch_3d

    return-object p0

    .line 234
    :cond_3c
    goto :goto_3e

    .line 233
    :catch_3d
    move-exception v2

    .line 225
    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 237
    :cond_41
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
