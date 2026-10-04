.class public final Landroid/view/ScrollCaptureSearchResults;
.super Ljava/lang/Object;
.source "ScrollCaptureSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureSearchResults$SearchRequest;
    }
.end annotation


# static fields
.field private static final blacklist AFTER:I = 0x1

.field private static final blacklist BEFORE:I = -0x1

.field private static final blacklist EQUAL:I

.field static final blacklist PRIORITY_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCancel:Landroid/os/CancellationSignal;

.field private blacklist mComplete:Z

.field private blacklist mCompleted:I

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnCompleteListener:Ljava/lang/Runnable;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ByE8_TUw1PGD9U7R9mCq7ljjoWU(Landroid/view/ScrollCaptureTarget;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/ScrollCaptureTarget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$cSF81BEzWMEe7BE_Rc0m9TL8alU(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ScrollCaptureSearchResults;->lambda$addTarget$0(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCancel(Landroid/view/ScrollCaptureSearchResults;)Landroid/os/CancellationSignal;
    .registers 1

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompleted(Landroid/view/ScrollCaptureSearchResults;)I
    .registers 1

    iget p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargets(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompleted(Landroid/view/ScrollCaptureSearchResults;I)V
    .registers 2

    iput p1, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msignalComplete(Landroid/view/ScrollCaptureSearchResults;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 242
    new-instance v0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    .line 57
    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    .line 59
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    .line 60
    return-void
.end method

.method private static blacklist area(Landroid/graphics/Rect;)I
    .registers 2

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private blacklist getScrollBoundsInWindow(Landroid/view/ScrollCaptureTarget;)Landroid/graphics/Rect;
    .registers 4

    .line 137
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1e

    .line 140
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object p1

    .line 142
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 143
    return-object v0

    .line 138
    :cond_1e
    :goto_1e
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method

.method private static blacklist hasIncludeHint(Landroid/view/ScrollCaptureTarget;)Z
    .registers 1

    .line 297
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static blacklist hasIncludeHint(Landroid/view/View;)Z
    .registers 1

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getScrollCaptureHint()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .registers 3

    .line 312
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 313
    return v0

    .line 315
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 316
    :goto_8
    if-eq p1, p0, :cond_11

    if-eqz p1, :cond_11

    .line 317
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_8

    .line 319
    :cond_11
    if-ne p1, p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private synthetic blacklist lambda$addTarget$0(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .registers 4

    .line 79
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-interface {p1, v0, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$getTopResult$1(Landroid/view/ScrollCaptureTarget;)Z
    .registers 1

    .line 159
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getTopResult$2(Landroid/view/ScrollCaptureTarget;)Ljava/lang/Integer;
    .registers 2

    .line 198
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$static$3(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)I
    .registers 8

    .line 243
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 244
    return v0

    .line 245
    :cond_6
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p0, :cond_63

    if-nez p1, :cond_d

    goto :goto_63

    .line 249
    :cond_d
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v3

    .line 250
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v4

    .line 251
    if-nez v3, :cond_5a

    if-eqz v4, :cond_22

    goto :goto_5a

    .line 262
    :cond_22
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v3

    .line 267
    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v4

    .line 268
    invoke-static {v3}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v5

    .line 269
    if-eq v4, v5, :cond_38

    .line 270
    if-eqz v4, :cond_37

    move v1, v2

    :cond_37
    return v1

    .line 275
    :cond_38
    invoke-static {v0, v3}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 276
    return v2

    .line 278
    :cond_3f
    invoke-static {v3, v0}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 279
    return v1

    .line 283
    :cond_46
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result p0

    .line 284
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result p1

    .line 285
    if-lt p0, p1, :cond_59

    move v1, v2

    :cond_59
    return v1

    .line 252
    :cond_5a
    :goto_5a
    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    .line 253
    return v0

    .line 256
    :cond_5f
    if-eqz v3, :cond_62

    .line 257
    return v1

    .line 259
    :cond_62
    return v2

    .line 246
    :cond_63
    :goto_63
    if-nez p0, :cond_66

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    return v1
.end method

.method private static blacklist nullOrEmpty(Landroid/graphics/Rect;)Z
    .registers 1

    .line 293
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private blacklist signalComplete()V
    .registers 3

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    .line 122
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v0

    if-nez v0, :cond_10

    .line 123
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 125
    :cond_10
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 126
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    .line 129
    :cond_1c
    return-void
.end method


# virtual methods
.method public blacklist addTarget(Landroid/view/ScrollCaptureTarget;)V
    .registers 5

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    .line 74
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/view/ScrollCaptureSearchResults$SearchRequest;

    invoke-direct {v1, p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V

    .line 78
    iget-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 323
    const-string/jumbo v0, "results:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v0, "targets:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 329
    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 330
    const-string v0, "None"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 332
    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 335
    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v1, p1}, Landroid/view/ScrollCaptureTarget;->dump(Ljava/io/PrintWriter;)V

    .line 336
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 338
    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 340
    :goto_90
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 341
    return-void
.end method

.method public blacklist finish()V
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-nez v0, :cond_c

    .line 115
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 116
    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    .line 118
    :cond_c
    return-void
.end method

.method public blacklist getTargets()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getTopResult()Landroid/view/ScrollCaptureTarget;
    .registers 8

    .line 153
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 154
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v2

    goto :goto_1a

    :cond_12
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ScrollCaptureTarget;

    .line 155
    :goto_1a
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_23

    move-object v2, v0

    :cond_23
    return-object v2

    .line 157
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v3, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    new-instance v4, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 163
    :cond_33
    :goto_33
    iget-object v3, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_97

    .line 164
    iget-object v3, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ScrollCaptureTarget;

    .line 166
    invoke-virtual {v3}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v4

    .line 170
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_70

    .line 171
    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ScrollCaptureTarget;

    .line 172
    invoke-virtual {v5}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v5

    .line 174
    invoke-static {v4, v5}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 175
    invoke-static {v4}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v5}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 176
    goto :goto_33

    .line 181
    :cond_70
    move v4, v1

    :goto_71
    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_93

    .line 182
    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ScrollCaptureTarget;

    .line 183
    invoke-direct {p0, v3}, Landroid/view/ScrollCaptureSearchResults;->getScrollBoundsInWindow(Landroid/view/ScrollCaptureTarget;)Landroid/graphics/Rect;

    move-result-object v6

    .line 184
    invoke-direct {p0, v5}, Landroid/view/ScrollCaptureSearchResults;->getScrollBoundsInWindow(Landroid/view/ScrollCaptureTarget;)Landroid/graphics/Rect;

    move-result-object v5

    .line 183
    invoke-static {v6, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 185
    goto :goto_33

    .line 181
    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 189
    :cond_93
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 193
    :cond_97
    new-instance v1, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 197
    new-instance v3, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    .line 201
    invoke-interface {v1, v3}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b7

    goto :goto_be

    :cond_b7
    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ScrollCaptureTarget;

    :goto_be
    return-object v2
.end method

.method public blacklist isComplete()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist setOnCompleteListener(Ljava/lang/Runnable;)V
    .registers 3

    .line 93
    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-eqz v0, :cond_8

    .line 94
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_a

    .line 96
    :cond_8
    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    .line 98
    :goto_a
    return-void
.end method
