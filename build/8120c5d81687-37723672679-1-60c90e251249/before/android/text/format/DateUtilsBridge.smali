.class public final Landroid/text/format/DateUtilsBridge;
.super Ljava/lang/Object;
.source "DateUtilsBridge.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;
    .registers 5

    .line 68
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 69
    invoke-virtual {v0, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 70
    return-object v0
.end method

.method public static blacklist dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .registers 3

    .line 159
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static blacklist fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 3

    .line 183
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static blacklist fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 3

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 5

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 178
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_24

    .line 179
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-eq p0, p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    nop

    .line 177
    :goto_25
    return v0
.end method

.method public static blacklist icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;
    .registers 1

    .line 58
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    .line 60
    return-object p0
.end method

.method public static blacklist isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z
    .registers 2

    .line 169
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static blacklist isThisYear(Landroid/icu/util/Calendar;)Z
    .registers 4

    .line 191
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private static blacklist onTheHour(Landroid/icu/util/Calendar;)Z
    .registers 2

    .line 173
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .registers 2

    .line 74
    invoke-static {p0, p0, p1}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .registers 9

    .line 78
    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 79
    const v0, 0x1c000

    or-int/2addr p2, v0

    .line 82
    :cond_9
    nop

    .line 83
    const/high16 v0, 0x20000

    and-int/2addr v0, p2

    if-eqz v0, :cond_12

    .line 84
    const-string v0, "M"

    goto :goto_1c

    .line 85
    :cond_12
    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1a

    .line 86
    const-string v0, "MMM"

    goto :goto_1c

    .line 85
    :cond_1a
    const-string v0, "MMMM"

    .line 89
    :goto_1c
    nop

    .line 90
    const v1, 0x8000

    and-int/2addr v1, p2

    if-eqz v1, :cond_26

    .line 91
    const-string v1, "EEE"

    goto :goto_28

    .line 90
    :cond_26
    const-string v1, "EEEE"

    .line 94
    :goto_28
    nop

    .line 95
    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_30

    .line 96
    const-string v3, "H"

    goto :goto_39

    .line 97
    :cond_30
    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_37

    .line 98
    const-string v3, "h"

    goto :goto_39

    .line 97
    :cond_37
    const-string v3, "j"

    .line 104
    :goto_39
    and-int/lit16 v4, p2, 0x4000

    const-string v5, "m"

    if-eqz v4, :cond_60

    if-eqz v2, :cond_42

    goto :goto_60

    .line 109
    :cond_42
    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 110
    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_71

    .line 105
    :cond_60
    :goto_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_71
    :goto_71
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 115
    or-int/lit8 p2, p2, 0x10

    .line 118
    :cond_79
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_87

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_87

    .line 119
    and-int/lit8 p2, p2, -0x3

    .line 120
    and-int/lit8 p2, p2, -0x2

    .line 123
    :cond_87
    and-int/lit8 v2, p2, 0x13

    if-nez v2, :cond_8d

    .line 124
    or-int/lit8 p2, p2, 0x10

    .line 128
    :cond_8d
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_a9

    .line 129
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_96

    goto :goto_a9

    .line 131
    :cond_96
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_9b

    goto :goto_a9

    .line 134
    :cond_9b
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_a7

    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->isThisYear(Landroid/icu/util/Calendar;)Z

    move-result p0

    if-nez p0, :cond_a9

    .line 135
    :cond_a7
    or-int/lit8 p2, p2, 0x4

    .line 139
    :cond_a9
    :goto_a9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    and-int/lit8 p1, p2, 0x30

    if-eqz p1, :cond_c8

    .line 141
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_bc

    .line 142
    const-string/jumbo p1, "y"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_bc
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_c8

    .line 146
    const-string p1, "d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_c8
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_cf

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_cf
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_d6

    .line 153
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_d6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
