.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final greylist-max-o COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EventLog"

.field private static final greylist-max-o TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final greylist-max-o TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static greylist-max-o sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 66
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getTagCode(Ljava/lang/String;)I
    .registers 2

    .line 424
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 425
    sget-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 426
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method

.method public static whitelist getTagName(I)Ljava/lang/String;
    .registers 2

    .line 414
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 415
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static native whitelist readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native whitelist readEventsOnWrapping([IJLjava/util/Collection;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized greylist-max-o readTagsFile()V
    .registers 9

    const-class v0, Landroid/util/EventLog;

    monitor-enter v0

    .line 434
    :try_start_3
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    sget-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_bd

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 436
    :cond_d
    :try_start_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 439
    const-string v1, "^\\s*(#.*)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 440
    const-string v2, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_bd

    .line 441
    nop

    .line 445
    const/4 v3, 0x0

    :try_start_29
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/etc/event-log-tags"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_37} :catch_a3
    .catchall {:try_start_29 .. :try_end_37} :catchall_a1

    .line 446
    :goto_37
    :try_start_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 447
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_37

    .line 449
    :cond_48
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 450
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 451
    const-string v5, "EventLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_6a} :catch_9e
    .catchall {:try_start_37 .. :try_end_6a} :catchall_9b

    .line 452
    goto :goto_37

    .line 456
    :cond_6b
    const/4 v6, 0x1

    :try_start_6c
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 457
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 458
    invoke-static {v6, v5}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_7c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7c} :catch_9e
    .catchall {:try_start_6c .. :try_end_7c} :catchall_9b

    .line 461
    goto :goto_96

    .line 459
    :catch_7d
    move-exception v5

    .line 460
    :try_start_7e
    const-string v6, "EventLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_96} :catch_9e
    .catchall {:try_start_7e .. :try_end_96} :catchall_9b

    .line 462
    :goto_96
    goto :goto_37

    .line 467
    :cond_97
    :try_start_97
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_b1
    .catchall {:try_start_97 .. :try_end_9a} :catchall_bd

    goto :goto_b3

    :catchall_9b
    move-exception v1

    move-object v3, v4

    goto :goto_b5

    .line 463
    :catch_9e
    move-exception v1

    move-object v3, v4

    goto :goto_a4

    .line 467
    :catchall_a1
    move-exception v1

    goto :goto_b5

    .line 463
    :catch_a3
    move-exception v1

    .line 464
    :goto_a4
    :try_start_a4
    const-string v2, "EventLog"

    const-string v4, "Error reading /system/etc/event-log-tags"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_a1

    .line 467
    if-eqz v3, :cond_b3

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_bd

    goto :goto_b3

    :catch_b1
    move-exception v1

    .line 468
    nop

    .line 469
    :cond_b3
    :goto_b3
    monitor-exit v0

    return-void

    .line 467
    :goto_b5
    if-eqz v3, :cond_bc

    :try_start_b7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bd

    goto :goto_bc

    :catch_bb
    move-exception v2

    .line 468
    :cond_bc
    :goto_bc
    :try_start_bc
    throw v1

    .line 433
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method private static declared-synchronized blacklist readTagsFile$ravenwood()V
    .registers 3

    const-class v0, Landroid/util/EventLog;

    monitor-enter v0

    .line 478
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 479
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 482
    const-string/jumbo v1, "sysui_action"

    const/high16 v2, 0x80000

    invoke-static {v2, v1}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V

    .line 483
    const-string/jumbo v1, "sysui_count"

    const v2, 0x80002

    invoke-static {v2, v1}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V

    .line 484
    const-string/jumbo v1, "sysui_histogram"

    const v2, 0x80003

    invoke-static {v2, v1}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    .line 485
    monitor-exit v0

    return-void

    .line 477
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private static blacklist registerTagLocked(ILjava/lang/String;)V
    .registers 4

    .line 472
    sget-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public static native whitelist writeEvent(IF)I
.end method

.method public static native whitelist writeEvent(II)I
.end method

.method public static native whitelist writeEvent(IJ)I
.end method

.method public static native whitelist writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native whitelist writeEvent(I[Ljava/lang/Object;)I
.end method
