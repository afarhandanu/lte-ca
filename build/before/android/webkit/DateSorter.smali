.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final whitelist DAY_COUNT:I = 0x5

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "webkit"

.field private static final greylist-max-o NUM_DAYS_AGO:I = 0x7


# instance fields
.field private greylist-max-o mBins:[J

.field private greylist-max-o mLabels:[Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 13

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 47
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 58
    invoke-direct {p0, v2}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 61
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 62
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 63
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    aput-wide v7, v5, v9

    .line 64
    const/4 v5, -0x6

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 65
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x2

    aput-wide v7, v5, v10

    .line 66
    const/4 v5, 0x7

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 67
    invoke-virtual {v2, v10, v4}, Ljava/util/Calendar;->add(II)V

    .line 68
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v2, 0x3

    aput-wide v7, v3, v2

    .line 71
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 72
    if-nez v3, :cond_58

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 75
    :cond_58
    invoke-static {v3}, Lcom/android/icu/text/DateSorterBridge;->createInstance(Ljava/util/Locale;)Lcom/android/icu/text/DateSorterBridge;

    move-result-object v3

    .line 76
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/icu/text/DateSorterBridge;->getToday()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 77
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/icu/text/DateSorterBridge;->getYesterday()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v9

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    const-string v4, "count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v5, 0x1040599

    invoke-static {v1, v3, v5}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    .line 86
    iget-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v3, 0x1040598

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    iget-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v2, 0x1040708

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    .line 88
    return-void
.end method

.method private greylist-max-o beginningOfDay(Ljava/util/Calendar;)V
    .registers 4

    .line 132
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist getBoundary(I)J
    .registers 4

    .line 119
    nop

    .line 121
    const/4 v0, 0x4

    if-ltz p1, :cond_6

    if-le p1, v0, :cond_7

    :cond_6
    const/4 p1, 0x0

    .line 124
    :cond_7
    if-ne p1, v0, :cond_c

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 125
    :cond_c
    iget-object v0, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getIndex(J)I
    .registers 6

    .line 97
    nop

    .line 98
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    .line 99
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_e

    return v0

    .line 98
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_11
    return v1
.end method

.method public whitelist getLabel(I)Ljava/lang/String;
    .registers 3

    .line 109
    if-ltz p1, :cond_b

    const/4 v0, 0x5

    if-lt p1, v0, :cond_6

    goto :goto_b

    .line 110
    :cond_6
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 109
    :cond_b
    :goto_b
    const-string p1, ""

    return-object p1
.end method
