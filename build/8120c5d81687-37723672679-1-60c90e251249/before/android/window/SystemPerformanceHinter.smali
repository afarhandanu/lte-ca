.class public Landroid/window/SystemPerformanceHinter;
.super Ljava/lang/Object;
.source "SystemPerformanceHinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SystemPerformanceHinter$DisplayRootProvider;,
        Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HintFlags;
    }
.end annotation


# static fields
.field public static final blacklist HINT_ADPF:I = 0x4

.field public static final blacklist HINT_ALL:I = 0x7

.field private static final blacklist HINT_GLOBAL:I = 0x5

.field private static final blacklist HINT_NO_OP:I = 0x0

.field private static final blacklist HINT_PER_DISPLAY:I = 0x2

.field public static final blacklist HINT_SF:I = 0x3

.field public static final blacklist HINT_SF_EARLY_WAKEUP:I = 0x1

.field public static final blacklist HINT_SF_FRAME_RATE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SystemPerformanceHinter"


# instance fields
.field private final blacklist mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/SystemPerformanceHinter$HighPerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAdpfSession:Landroid/os/PerformanceHintManager$Session;

.field private blacklist mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

.field private final blacklist mEarlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

.field public blacklist mTraceTag:J

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/window/SystemPerformanceHinter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mendSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;)V
    .registers 4

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/window/SystemPerformanceHinter;-><init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V

    .line 181
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/window/SystemPerformanceHinter$DisplayRootProvider;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    .line 172
    new-instance p1, Landroid/gui/EarlyWakeupInfo;

    invoke-direct {p1}, Landroid/gui/EarlyWakeupInfo;-><init>()V

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mEarlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    .line 190
    iput-object p2, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    .line 191
    if-eqz p3, :cond_20

    .line 192
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    goto :goto_25

    .line 193
    :cond_20
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_25
    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 194
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mEarlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p1, Landroid/gui/EarlyWakeupInfo;->token:Landroid/os/IBinder;

    .line 195
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mEarlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    const-class p2, Landroid/window/SystemPerformanceHinter;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/gui/EarlyWakeupInfo;->trace:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private blacklist asyncTraceBegin(II)V
    .registers 6

    .line 386
    packed-switch p1, :pswitch_data_48

    .line 390
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfHint-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 389
    :pswitch_17
    const-string v0, "PerfHint-adpf"

    goto :goto_1f

    .line 388
    :pswitch_1a
    const-string v0, "PerfHint-framerate"

    goto :goto_1f

    .line 387
    :pswitch_1d
    const-string v0, "PerfHint-early_wakeup"

    .line 392
    :goto_1f
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3a

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    nop

    .line 394
    :goto_3b
    iget-wide v1, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    .line 395
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    xor-int/2addr p1, p2

    .line 394
    const-string p2, "SystemPerformanceHinter"

    invoke-static {v1, v2, p2, v0, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 396
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist asyncTraceEnd(I)V
    .registers 5

    .line 399
    iget-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr p1, v2

    const-string v2, "SystemPerformanceHinter"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 400
    return-void
.end method

.method private blacklist calculateActiveHintFlags(I)I
    .registers 5

    .line 362
    nop

    .line 363
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 364
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 366
    :cond_1c
    return v1
.end method

.method private blacklist calculateActiveHintFlagsForDisplay(II)I
    .registers 6

    .line 375
    nop

    .line 376
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 377
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 378
    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    if-ne v2, p2, :cond_27

    .line 379
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    .line 376
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 382
    :cond_2a
    return v1
.end method

.method private blacklist endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 9

    .line 296
    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceEnd()Z

    move-result v0

    .line 297
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    .line 298
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    .line 300
    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v1

    .line 302
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v5

    .line 305
    nop

    .line 307
    invoke-direct {p0, v3, v5, v4}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_47

    .line 308
    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 310
    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, p1, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 315
    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, p1, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    .line 317
    nop

    .line 318
    if-eqz v0, :cond_46

    .line 319
    invoke-direct {p0, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    .line 324
    :cond_46
    move v6, v5

    :cond_47
    invoke-direct {p0, v2, v1, v5}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 325
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mEarlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd(Landroid/gui/EarlyWakeupInfo;)Landroid/view/SurfaceControl$Transaction;

    .line 326
    nop

    .line 327
    if-eqz v0, :cond_5c

    .line 328
    invoke-direct {p0, v5}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    goto :goto_5c

    .line 324
    :cond_5b
    move v5, v6

    .line 331
    :cond_5c
    :goto_5c
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-eqz p1, :cond_71

    const/4 p1, 0x4

    invoke-direct {p0, v2, v1, p1}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 332
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v1, v4}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    .line 333
    if-eqz v0, :cond_71

    .line 334
    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    .line 337
    :cond_71
    if-eqz v5, :cond_78

    .line 338
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 340
    :cond_78
    return-void
.end method

.method private blacklist nowDisabled(III)Z
    .registers 4

    .line 355
    and-int/2addr p1, p3

    if-eqz p1, :cond_9

    and-int p1, p2, p3

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private blacklist nowEnabled(III)Z
    .registers 4

    .line 347
    and-int/2addr p1, p3

    if-nez p1, :cond_9

    and-int p1, p2, p3

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private blacklist startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 11

    .line 246
    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceBegin()Z

    move-result v0

    .line 247
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    .line 248
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    .line 250
    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v5

    .line 252
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v6

    invoke-direct {p0, v4, v6}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v6

    .line 255
    nop

    .line 257
    invoke-direct {p0, v3, v6, v4}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4c

    .line 258
    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 260
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 265
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v3, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    .line 267
    nop

    .line 268
    if-eqz v0, :cond_4a

    .line 269
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result p1

    invoke-direct {p0, v4, p1}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    .line 274
    :cond_4a
    move p1, v6

    goto :goto_4d

    .line 257
    :cond_4c
    move p1, v7

    .line 274
    :goto_4d
    invoke-direct {p0, v2, v5, v6}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_62

    .line 275
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mEarlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart(Landroid/gui/EarlyWakeupInfo;)Landroid/view/SurfaceControl$Transaction;

    .line 276
    nop

    .line 277
    if-eqz v0, :cond_63

    .line 278
    invoke-direct {p0, v6, v3}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    goto :goto_63

    .line 274
    :cond_62
    move v6, p1

    .line 281
    :cond_63
    :goto_63
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-eqz p1, :cond_78

    const/4 p1, 0x4

    invoke-direct {p0, v2, v5, p1}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 282
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v1, v7}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    .line 283
    if-eqz v0, :cond_78

    .line 284
    invoke-direct {p0, p1, v3}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    .line 287
    :cond_78
    if-eqz v6, :cond_7f

    .line 288
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 290
    :cond_7f
    return-void
.end method


# virtual methods
.method public blacklist createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .registers 5

    .line 210
    if-eqz p1, :cond_6c

    .line 213
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    if-nez v0, :cond_13

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_b

    goto :goto_13

    .line 214
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Using SF frame rate hints requires a valid display root provider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-nez v0, :cond_24

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    goto :goto_24

    .line 218
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Using ADPF hints requires an ADPF session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_24
    :goto_24
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_66

    .line 221
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-interface {v0, p2}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_66

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No display root for displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SystemPerformanceHinter"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PerfHint-NoDisplayRoot: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, 0x20

    invoke-static {p2, p3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 226
    new-instance p1, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;

    invoke-direct {p1, p0}, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;)V

    return-object p1

    .line 229
    :cond_66
    new-instance v0, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter$HighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V

    return-object v0

    .line 211
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not allow empty hint flags"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "SystemPerformanceHinter"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "Active sessions ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "):"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const/4 p2, 0x0

    :goto_56
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_a3

    .line 410
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetreason(Landroid/window/SystemPerformanceHinter$HighPerfSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    add-int/lit8 p2, p2, 0x1

    goto :goto_56

    .line 415
    :cond_a3
    return-void
.end method

.method public blacklist setAdpfSession(Landroid/os/PerformanceHintManager$Session;)V
    .registers 2

    .line 204
    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    .line 205
    return-void
.end method

.method public blacklist startSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .registers 4

    .line 237
    invoke-virtual {p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object p1

    .line 238
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result p2

    if-eqz p2, :cond_d

    .line 239
    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    .line 241
    :cond_d
    return-object p1
.end method
