.class public Landroid/view/translation/UiTranslationController;
.super Ljava/lang/Object;
.source "UiTranslationController.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "UiTranslationController"

.field private static final blacklist TAG:Ljava/lang/String; = "UiTranslationController"


# instance fields
.field private final blacklist mActivity:Landroid/app/Activity;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentState:I

.field private blacklist mLastRequestAutofillIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mTranslators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            ">;",
            "Landroid/view/translation/Translator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mViewsToPadContent:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWorkerHandler:Landroid/os/Handler;

.field private final blacklist mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic blacklist $r8$lambda$513dR-jUZoKtYjC1y7vyNR_6nHA(Landroid/view/translation/UiTranslationController;Landroid/view/translation/Translator;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/translation/UiTranslationController;->sendTranslationRequest(Landroid/view/translation/Translator;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DMtdfLa4qBW62FAPXRU7hRumkyI(Landroid/view/translation/UiTranslationController;Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/translation/UiTranslationController;->lambda$onTranslationCompleted$4(Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Scgjlu_MGsAGizsdVgUXR87nrV4(Landroid/view/translation/UiTranslationController;Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/translation/UiTranslationController;->lambda$onUiTranslationStarted$6(Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X6ZsWKlRR1rQZjURseHNIBaFU2c(Landroid/view/translation/UiTranslationController;Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/translation/UiTranslationController;->createTranslatorAndStart(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/translation/UiTranslationController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 102
    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mContext:Landroid/content/Context;

    .line 103
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    .line 104
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    .line 105
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    .line 107
    new-instance p2, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiTranslationController_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 108
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 110
    iget-object p2, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 111
    iget-object p2, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mWorkerHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p1, p0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 113
    return-void
.end method

.method private blacklist addViewIfNeeded(Landroid/util/IntArray;Landroid/view/View;)V
    .registers 5

    .line 633
    invoke-virtual {p2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_22

    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    .line 635
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 636
    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_22
    return-void
.end method

.method private blacklist createTranslatorAndStart(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 493
    invoke-direct {p0, p1, p2}, Landroid/view/translation/UiTranslationController;->createTranslatorIfNeeded(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)Landroid/view/translation/Translator;

    move-result-object v0

    .line 494
    if-nez v0, :cond_29

    .line 495
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not create Translator for sourceSpec:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " targetSpec:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiTranslationController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_29
    invoke-direct {p0, v0, p3}, Landroid/view/translation/UiTranslationController;->onUiTranslationStarted(Landroid/view/translation/Translator;Ljava/util/List;)V

    .line 500
    return-void
.end method

.method private blacklist createTranslatorIfNeeded(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)Landroid/view/translation/Translator;
    .registers 8

    .line 670
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/translation/TranslationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationManager;

    .line 671
    if-nez v0, :cond_15

    .line 672
    const-string p1, "UiTranslationController"

    const-string p2, "Can not find TranslationManager when trying to create translator."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 p1, 0x0

    return-object p1

    .line 675
    :cond_15
    new-instance v1, Landroid/view/translation/TranslationContext$Builder;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/TranslationContext$Builder;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)V

    new-instance v2, Landroid/app/assist/ActivityId;

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 679
    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 680
    invoke-virtual {v4}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    .line 677
    invoke-virtual {v1, v2}, Landroid/view/translation/TranslationContext$Builder;->setActivityId(Landroid/app/assist/ActivityId;)Landroid/view/translation/TranslationContext$Builder;

    move-result-object v1

    .line 681
    invoke-virtual {v1}, Landroid/view/translation/TranslationContext$Builder;->build()Landroid/view/translation/TranslationContext;

    move-result-object v1

    .line 682
    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationManager;->createTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_43

    .line 684
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_43
    return-object v0
.end method

.method private blacklist destroyTranslators()V
    .registers 5

    .line 691
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 693
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 694
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/Translator;

    .line 695
    invoke-virtual {v3}, Landroid/view/translation/Translator;->destroy()V

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 697
    :cond_1a
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private blacklist dumpChildren(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 261
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 262
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3d

    .line 263
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 264
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    .line 265
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Children: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 267
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3}, Landroid/view/translation/UiTranslationController;->dumpChildren(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_3a

    .line 269
    :cond_26
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "End Children: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 271
    invoke-direct {p0, v2, p2, p3}, Landroid/view/translation/UiTranslationController;->dumpViewInfo(Landroid/view/View;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 262
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 274
    :cond_3d
    return-void
.end method

.method private blacklist dumpViewByTraversal(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 248
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Dump views:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 252
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_31

    .line 253
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p1, p2}, Landroid/view/translation/UiTranslationController;->dumpChildren(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_34

    .line 255
    :cond_31
    invoke-direct {p0, v2, p1, p2}, Landroid/view/translation/UiTranslationController;->dumpViewInfo(Landroid/view/View;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 250
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 258
    :cond_37
    return-void
.end method

.method private blacklist dumpViewInfo(Landroid/view/View;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    .line 278
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autofillId: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 280
    nop

    .line 281
    nop

    .line 282
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_14
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 284
    move v1, v2

    goto :goto_21

    .line 283
    :cond_20
    move v1, v3

    .line 286
    :goto_21
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 287
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 288
    goto :goto_33

    .line 290
    :cond_32
    move v2, v3

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_4b

    .line 291
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "isContainsView: "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 292
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "isRequestedView: "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 293
    return-void

    .line 290
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method private blacklist findViewsTraversalByAutofillIds(Landroid/util/IntArray;)V
    .registers 6

    .line 610
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 611
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 612
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 613
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_29

    .line 614
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p1}, Landroid/view/translation/UiTranslationController;->findViewsTraversalByAutofillIds(Landroid/view/ViewGroup;Landroid/util/IntArray;)V

    .line 616
    :cond_29
    invoke-direct {p0, p1, v2}, Landroid/view/translation/UiTranslationController;->addViewIfNeeded(Landroid/util/IntArray;Landroid/view/View;)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 618
    :cond_2f
    return-void
.end method

.method private blacklist findViewsTraversalByAutofillIds(Landroid/view/ViewGroup;Landroid/util/IntArray;)V
    .registers 7

    .line 622
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 623
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 624
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 625
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_15

    .line 626
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2}, Landroid/view/translation/UiTranslationController;->findViewsTraversalByAutofillIds(Landroid/view/ViewGroup;Landroid/util/IntArray;)V

    .line 628
    :cond_15
    invoke-direct {p0, p2, v2}, Landroid/view/translation/UiTranslationController;->addViewIfNeeded(Landroid/util/IntArray;Landroid/view/View;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 630
    :cond_1b
    return-void
.end method

.method private blacklist getRequestVirtualViewChildCount(Ljava/util/List;)Landroid/util/SparseIntArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)",
            "Landroid/util/SparseIntArray;"
        }
    .end annotation

    .line 579
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 580
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 582
    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 583
    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v2

    .line 584
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_27

    .line 585
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2f

    .line 587
    :cond_27
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 591
    :cond_32
    return-object v0
.end method

.method private blacklist getSupportedFormatsLocked()[I
    .registers 2

    .line 596
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private blacklist getTranslationCapability(Landroid/view/translation/TranslationContext;)Landroid/view/translation/TranslationCapability;
    .registers 8

    .line 602
    new-instance v0, Landroid/view/translation/TranslationCapability;

    .line 603
    invoke-virtual {p1}, Landroid/view/translation/TranslationContext;->getSourceSpec()Landroid/view/translation/TranslationSpec;

    move-result-object v2

    .line 604
    invoke-virtual {p1}, Landroid/view/translation/TranslationContext;->getTargetSpec()Landroid/view/translation/TranslationSpec;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/translation/TranslationCapability;-><init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ZI)V

    .line 602
    return-object v0
.end method

.method private synthetic blacklist lambda$onTranslationCompleted$4(Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V
    .registers 10

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v1

    const-string v2, "UiTranslationController"

    if-eqz v1, :cond_48

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/translation/ViewTranslationResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 444
    instance-of v1, v0, Landroid/widget/TextViewTranslationCallback;

    if-eqz v1, :cond_48

    .line 445
    move-object v1, v0

    check-cast v1, Landroid/widget/TextViewTranslationCallback;

    .line 447
    invoke-virtual {v1}, Landroid/widget/TextViewTranslationCallback;->isShowingTranslation()Z

    move-result v3

    if-nez v3, :cond_29

    .line 448
    invoke-virtual {v1}, Landroid/widget/TextViewTranslationCallback;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 449
    :cond_29
    if-eqz p3, :cond_47

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Duplicate ViewTranslationResponse for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Ignoring."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_47
    return-void

    .line 457
    :cond_48
    if-nez v0, :cond_70

    .line 458
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_57

    .line 461
    new-instance v0, Landroid/widget/TextViewTranslationCallback;

    invoke-direct {v0}, Landroid/widget/TextViewTranslationCallback;-><init>()V

    .line 462
    invoke-virtual {p1, v0}, Landroid/view/View;->setViewTranslationCallback(Landroid/view/translation/ViewTranslationCallback;)V

    goto :goto_70

    .line 464
    :cond_57
    if-eqz p3, :cond_6f

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " doesn\'t support showing translation because of null ViewTranslationCallback."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_6f
    return-void

    .line 471
    :cond_70
    :goto_70
    const/16 p3, 0xfa

    invoke-interface {v0, p3}, Landroid/view/translation/ViewTranslationCallback;->setAnimationDurationMillis(I)V

    .line 472
    iget-object p3, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_80

    .line 473
    invoke-interface {v0}, Landroid/view/translation/ViewTranslationCallback;->enableContentPadding()V

    .line 475
    :cond_80
    invoke-virtual {p1, p2}, Landroid/view/View;->onViewTranslationResponse(Landroid/view/translation/ViewTranslationResponse;)V

    .line 476
    const/4 p2, 0x1

    if-ne p5, p2, :cond_87

    .line 477
    return-void

    .line 479
    :cond_87
    invoke-interface {v0, p1}, Landroid/view/translation/ViewTranslationCallback;->onShowTranslation(Landroid/view/View;)Z

    .line 480
    return-void
.end method

.method private synthetic blacklist lambda$onUiTranslationStarted$6(Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V
    .registers 9

    .line 566
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 567
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 568
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_17
    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mWorkerHandler:Landroid/os/Handler;

    new-instance p2, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p2, p0, p6, p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return-void
.end method

.method static synthetic blacklist lambda$onVirtualViewTranslationCompleted$3(Landroid/view/View;Z)V
    .registers 3

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    if-nez v0, :cond_21

    .line 384
    if-eqz p1, :cond_20

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " doesn\'t support showing translation because of null ViewTranslationCallback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiTranslationController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_20
    return-void

    .line 390
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/translation/ViewTranslationCallback;->onShowTranslation(Landroid/view/View;)Z

    .line 393
    :cond_2e
    return-void
.end method

.method static synthetic blacklist lambda$runForEachView$7(Landroid/util/ArrayMap;ZLjava/util/function/BiConsumer;)V
    .registers 9

    .line 648
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 649
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_67

    .line 650
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 651
    const-string v3, "UiTranslationController"

    if-eqz p1, :cond_37

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runForEachView for autofillId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2a

    .line 653
    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    goto :goto_2c

    :cond_2a
    const-string v5, " null"

    :goto_2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_37
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v4

    if-nez v4, :cond_40

    goto :goto_48

    .line 662
    :cond_40
    invoke-virtual {v2}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_64

    .line 656
    :cond_48
    :goto_48
    if-eqz p1, :cond_64

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View was gone or ViewTranslationCallback for autofillId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 658
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 664
    :cond_67
    return-void
.end method

.method static synthetic blacklist lambda$sendTranslationRequest$5(Ljava/lang/Runnable;)V
    .registers 1

    .line 521
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$updateUiTranslationState$0(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V
    .registers 2

    .line 154
    invoke-interface {p1, p0}, Landroid/view/translation/ViewTranslationCallback;->onHideTranslation(Landroid/view/View;)Z

    return-void
.end method

.method static synthetic blacklist lambda$updateUiTranslationState$1(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V
    .registers 2

    .line 157
    invoke-interface {p1, p0}, Landroid/view/translation/ViewTranslationCallback;->onShowTranslation(Landroid/view/View;)Z

    return-void
.end method

.method static synthetic blacklist lambda$updateUiTranslationState$2(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V
    .registers 2

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->clearTranslationState()V

    .line 163
    return-void
.end method

.method private blacklist notifyTranslationFinished(Z)V
    .registers 6

    .line 190
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/translation/UiTranslationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/UiTranslationManager;

    .line 191
    if-eqz v0, :cond_26

    .line 192
    new-instance v1, Landroid/app/assist/ActivityId;

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 193
    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 194
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 192
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/translation/UiTranslationManager;->onTranslationFinished(ZLandroid/app/assist/ActivityId;Landroid/content/ComponentName;)V

    .line 196
    :cond_26
    return-void
.end method

.method private blacklist onTranslationCompleted(Landroid/util/SparseArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 402
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    .line 403
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 404
    const-string p1, "UiTranslationController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTranslationCompleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is destroyed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 407
    :cond_31
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 408
    if-eqz v6, :cond_56

    .line 409
    const-string v2, "UiTranslationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTranslationCompleted: receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responses."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_56
    iget-object v9, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 412
    :try_start_59
    iget v2, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    if-ne v2, v1, :cond_67

    .line 413
    const-string p1, "UiTranslationController"

    const-string/jumbo v0, "onTranslationCompleted: the translation state is finished now. Skip to show the translated text."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v9

    return-void

    .line 417
    :cond_67
    const/4 v1, 0x0

    :goto_68
    if-ge v1, v0, :cond_e2

    .line 418
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/translation/ViewTranslationResponse;

    .line 419
    if-eqz v6, :cond_90

    .line 420
    const-string v2, "UiTranslationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTranslationCompleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 421
    invoke-static {v5}, Landroid/view/translation/UiTranslationController;->sanitizedViewTranslationResponse(Landroid/view/translation/ViewTranslationResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_90
    invoke-virtual {v5}, Landroid/view/translation/ViewTranslationResponse;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 424
    if-nez v7, :cond_9e

    .line 425
    const-string v2, "UiTranslationController"

    const-string v3, "No AutofillId is set in ViewTranslationResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    goto :goto_df

    .line 428
    :cond_9e
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 429
    if-nez v2, :cond_a9

    .line 430
    goto :goto_df

    .line 432
    :cond_a9
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 433
    if-nez v4, :cond_d2

    .line 434
    const-string v2, "UiTranslationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTranslationCompleted: the view for autofill id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " may be gone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    goto :goto_df

    .line 439
    :cond_d2
    iget v8, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    .line 440
    iget-object v10, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;-><init>(Landroid/view/translation/UiTranslationController;Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V

    invoke-virtual {v10, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 417
    :goto_df
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 482
    :cond_e2
    monitor-exit v9

    .line 483
    return-void

    .line 482
    :catchall_e4
    move-exception v0

    move-object p1, v0

    monitor-exit v9
    :try_end_e7
    .catchall {:try_start_59 .. :try_end_e7} :catchall_e4

    throw p1
.end method

.method private blacklist onUiTranslationStarted(Landroid/view/translation/Translator;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_3
    invoke-direct {p0, p2}, Landroid/view/translation/UiTranslationController;->getRequestVirtualViewChildCount(Ljava/util/List;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 531
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 532
    nop

    .line 533
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v6, v3

    :goto_11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6f

    .line 534
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 535
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 536
    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 538
    :cond_27
    if-nez v6, :cond_2e

    .line 539
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 543
    :cond_2e
    new-instance v8, Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/view/autofill/AutofillId;-><init>(I)V

    .line 545
    nop

    .line 546
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 547
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 548
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_5d

    .line 550
    :cond_4f
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 551
    new-array v9, v9, [J

    .line 552
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v2

    .line 554
    :goto_5d
    add-int/lit8 v11, v10, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getVirtualChildLongId()J

    move-result-wide v7

    aput-wide v7, v9, v10

    .line 533
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 558
    :cond_6f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-direct {p0}, Landroid/view/translation/UiTranslationController;->getSupportedFormatsLocked()[I

    move-result-object v6

    .line 561
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p2

    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v4

    .line 562
    nop

    .line 563
    invoke-virtual {p1}, Landroid/view/translation/Translator;->getTranslationContext()Landroid/view/translation/TranslationContext;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/view/translation/UiTranslationController;->getTranslationCapability(Landroid/view/translation/TranslationContext;)Landroid/view/translation/TranslationCapability;

    move-result-object v7

    .line 564
    iget-object p2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/UiTranslationController;Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V

    invoke-virtual {p2, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 575
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :catchall_9d
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_9d

    throw p1
.end method

.method private blacklist onVirtualViewTranslationCompleted(Landroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 349
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 350
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 351
    const-string p1, "UiTranslationController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTranslationCompleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is destroyed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_31
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 355
    :try_start_34
    iget v3, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    if-ne v3, v1, :cond_42

    .line 356
    const-string p1, "UiTranslationController"

    const-string/jumbo v0, "onTranslationCompleted: the translation state is finished now. Skip to show the translated text."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v2

    return-void

    .line 360
    :cond_42
    const/4 v1, 0x0

    :goto_43
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_be

    .line 361
    new-instance v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/view/autofill/AutofillId;-><init>(I)V

    .line 362
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 363
    if-nez v4, :cond_5d

    .line 364
    goto :goto_bb

    .line 366
    :cond_5d
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 367
    if-nez v4, :cond_85

    .line 368
    const-string v4, "UiTranslationController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTranslationCompleted: the view for autofill id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " may be gone."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    goto :goto_bb

    .line 372
    :cond_85
    nop

    .line 373
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 374
    if-eqz v0, :cond_a7

    .line 375
    const-string v6, "UiTranslationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onVirtualViewTranslationCompleted: received response for AutofillId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_a7
    invoke-virtual {v4, v5}, Landroid/view/View;->onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V

    .line 379
    iget v3, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b1

    .line 380
    monitor-exit v2

    return-void

    .line 382
    :cond_b1
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v5, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;

    invoke-direct {v5, v4, v0}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    :goto_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 395
    :cond_be
    monitor-exit v2

    .line 396
    return-void

    .line 395
    :catchall_c0
    move-exception p1

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_34 .. :try_end_c2} :catchall_c0

    throw p1
.end method

.method private blacklist runForEachView(Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/View;",
            "Landroid/view/translation/ViewTranslationCallback;",
            ">;)V"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    const-string v1, "UiTranslation"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 643
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 644
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_1e

    .line 645
    const-string v3, "UiTranslationController"

    const-string v4, "No views can be excuted for runForEachView."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1e
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1, p1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;ZLjava/util/function/BiConsumer;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 665
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private static blacklist sanitizedViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Ljava/lang/String;
    .registers 7

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewTranslationRequest:{values=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Landroid/view/translation/ViewTranslationRequest;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 725
    invoke-virtual {p0, v2}, Landroid/view/translation/ViewTranslationRequest;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationRequestValue;

    move-result-object v2

    .line 726
    const-string/jumbo v3, "{text="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/translation/TranslationRequestValue;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_30

    .line 727
    const-string/jumbo v2, "null"

    goto :goto_52

    .line 728
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "string["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/translation/TranslationRequestValue;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]}, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    :goto_52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    goto :goto_f

    .line 730
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist sanitizedViewTranslationResponse(Landroid/view/translation/ViewTranslationResponse;)Ljava/lang/String;
    .registers 14

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewTranslationResponse:{values=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Landroid/view/translation/ViewTranslationResponse;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 740
    invoke-virtual {p0, v2}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v2

    .line 741
    const-string/jumbo v3, "{status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string/jumbo v3, "text="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "null"

    const-string v6, "], "

    const-string/jumbo v7, "string["

    if-nez v4, :cond_4a

    .line 743
    move-object v4, v5

    goto :goto_67

    .line 744
    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 742
    :goto_67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    nop

    .line 746
    invoke-virtual {v2}, Landroid/view/translation/TranslationResponseValue;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.view.translation.extra.DEFINITIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 747
    if-eqz v3, :cond_d4

    .line 748
    const-string v4, "definitions={"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 750
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_a1
    if-ge v10, v9, :cond_ca

    aget-object v11, v8, v10

    .line 752
    if-nez v11, :cond_ab

    .line 753
    const-string/jumbo v11, "null, "

    goto :goto_c4

    .line 754
    :cond_ab
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 752
    :goto_c4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    add-int/lit8 v10, v10, 0x1

    goto :goto_a1

    .line 756
    :cond_ca
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    goto :goto_86

    .line 758
    :cond_ce
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_d4
    const-string/jumbo v3, "transliteration="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/translation/TranslationResponseValue;->getTransliteration()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_e2

    .line 761
    goto :goto_101

    .line 762
    :cond_e2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/translation/TranslationResponseValue;->getTransliteration()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]}, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 760
    :goto_101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    goto/16 :goto_f

    .line 764
    :cond_106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendTranslationRequest(Landroid/view/translation/Translator;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 505
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "UiTranslationController"

    if-nez v0, :cond_e

    .line 506
    const-string p1, "No ViewTranslationRequest was collected."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 509
    :cond_e
    new-instance v0, Landroid/view/translation/TranslationRequest$Builder;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequest$Builder;-><init>()V

    .line 510
    invoke-virtual {v0, p2}, Landroid/view/translation/TranslationRequest$Builder;->setViewTranslationRequests(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/view/translation/TranslationRequest$Builder;->build()Landroid/view/translation/TranslationRequest;

    move-result-object v0

    .line 512
    const-string v2, "UiTranslation"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendTranslationRequest:{requests=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/ViewTranslationRequest;

    .line 515
    const-string/jumbo v4, "{request="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    invoke-static {v3}, Landroid/view/translation/UiTranslationController;->sanitizedViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 517
    const-string/jumbo v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    goto :goto_30

    .line 519
    :cond_52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTranslationRequest: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_6d
    new-instance p2, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda7;-><init>()V

    new-instance v1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;-><init>(Landroid/view/translation/UiTranslationController;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/translation/Translator;->requestUiTranslate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 522
    return-void
.end method

.method private blacklist setLastRequestAutofillIdsLocked(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    .line 202
    :cond_b
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 203
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 205
    :cond_18
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 206
    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .registers 3

    .line 705
    packed-switch p0, :pswitch_data_2a

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 713
    :pswitch_1d
    const-string p0, "UI_TRANSLATION_FINISHED"

    return-object p0

    .line 711
    :pswitch_20
    const-string p0, "UI_TRANSLATION_RESUMED"

    return-object p0

    .line 709
    :pswitch_23
    const-string p0, "UI_TRANSLATION_PAUSED"

    return-object p0

    .line 707
    :pswitch_26
    const-string p0, "UI_TRANSLATION_STARTED"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 215
    const-string p2, ""

    .line 216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "UiTranslationController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "activity: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "resumed: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "current state: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 221
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "number translator: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 223
    const/4 v2, 0x0

    move v3, v2

    :goto_5d
    if-ge v3, v1, :cond_7b

    .line 224
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 225
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/Translator;

    .line 226
    invoke-virtual {v4, p2, p1}, Landroid/view/translation/Translator;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 227
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 229
    :cond_7b
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_7e
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "number views: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 232
    nop

    :goto_91
    if-ge v2, v3, :cond_ce

    .line 233
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 234
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 235
    iget-object v5, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "autofillId: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "view:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 239
    :cond_ce
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "padded views: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_7e .. :try_end_dd} :catchall_ea

    .line 241
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 242
    invoke-direct {p0, p2, p1}, Landroid/view/translation/UiTranslationController;->dumpViewByTraversal(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 244
    :cond_e9
    return-void

    .line 240
    :catchall_ea
    move-exception p1

    :try_start_eb
    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw p1
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 210
    const-string v0, "UiTranslationController"

    return-object v0
.end method

.method public blacklist onActivityDestroyed()V
    .registers 5

    .line 178
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityDestroyed(): mCurrentState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    invoke-static {v3}, Landroid/view/translation/UiTranslationController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v1, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    .line 181
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->notifyTranslationFinished(Z)V

    .line 183
    :cond_2b
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 184
    invoke-direct {p0}, Landroid/view/translation/UiTranslationController;->destroyTranslators()V

    .line 185
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public blacklist onTranslationCompleted(Landroid/view/translation/TranslationResponse;)V
    .registers 14

    .line 300
    if-eqz p1, :cond_99

    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->getTranslationStatus()I

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_99

    .line 307
    :cond_a
    nop

    .line 308
    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->getViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object p1

    .line 309
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 310
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 312
    new-instance v2, Landroid/util/IntArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/IntArray;-><init>(I)V

    .line 313
    const/4 v4, 0x0

    move v5, v4

    :goto_21
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_83

    .line 314
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/translation/ViewTranslationResponse;

    .line 315
    invoke-virtual {v6}, Landroid/view/translation/ViewTranslationResponse;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 316
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/IntArray;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_42

    .line 317
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/IntArray;->add(I)V

    .line 319
    :cond_42
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v8

    if-eqz v8, :cond_50

    .line 320
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_80

    .line 322
    :cond_50
    nop

    .line 323
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_5d

    move v8, v3

    goto :goto_5e

    :cond_5d
    move v8, v4

    .line 325
    :goto_5e
    if-eqz v8, :cond_6b

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    goto :goto_70

    .line 326
    :cond_6b
    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    .line 327
    :goto_70
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getVirtualChildLongId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    if-nez v8, :cond_80

    .line 329
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v6

    invoke-virtual {v1, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    :cond_80
    :goto_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 334
    :cond_83
    invoke-direct {p0, v2}, Landroid/view/translation/UiTranslationController;->findViewsTraversalByAutofillIds(Landroid/util/IntArray;)V

    .line 336
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_8f

    .line 337
    invoke-direct {p0, v0}, Landroid/view/translation/UiTranslationController;->onTranslationCompleted(Landroid/util/SparseArray;)V

    .line 339
    :cond_8f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_98

    .line 340
    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->onVirtualViewTranslationCompleted(Landroid/util/SparseArray;)V

    .line 342
    :cond_98
    return-void

    .line 302
    :cond_99
    :goto_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail result from TranslationService, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_aa

    .line 303
    const-string/jumbo p1, "null"

    goto :goto_b2

    .line 304
    :cond_aa
    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->getTranslationStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_b2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    const-string v0, "UiTranslationController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 122
    const-string p2, "UiTranslationController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot update "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/view/translation/UiTranslationController;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " for destroyed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_31
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 126
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUiTranslationState state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/translation/UiTranslationController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", views: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", spec: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_6e
    const-string v0, ""

    :goto_70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_7e
    iput p1, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    .line 130
    if-eqz p4, :cond_85

    .line 131
    invoke-direct {p0, p4}, Landroid/view/translation/UiTranslationController;->setLastRequestAutofillIdsLocked(Ljava/util/List;)V

    .line 133
    :cond_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_10f

    .line 134
    packed-switch p1, :pswitch_data_112

    .line 170
    const-string p2, "UiTranslationController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onAutoTranslationStateChange(): unknown state: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 160
    :pswitch_a3
    invoke-direct {p0}, Landroid/view/translation/UiTranslationController;->destroyTranslators()V

    .line 161
    new-instance p1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationController;->runForEachView(Ljava/util/function/BiConsumer;)V

    .line 164
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationController;->notifyTranslationFinished(Z)V

    .line 165
    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 166
    :try_start_b5
    iget-object p2, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 167
    monitor-exit p1

    .line 168
    goto :goto_10e

    .line 167
    :catchall_bc
    move-exception p2

    monitor-exit p1
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_bc

    throw p2

    .line 157
    :pswitch_bf
    new-instance p1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationController;->runForEachView(Ljava/util/function/BiConsumer;)V

    .line 158
    goto :goto_10e

    .line 154
    :pswitch_c8
    new-instance p1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationController;->runForEachView(Ljava/util/function/BiConsumer;)V

    .line 155
    goto :goto_10e

    .line 136
    :pswitch_d1
    if-eqz p5, :cond_e6

    invoke-virtual {p5}, Landroid/view/translation/UiTranslationSpec;->shouldPadContentForCompat()Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 137
    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 138
    :try_start_dc
    iget-object p5, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    invoke-virtual {p5, p4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 141
    monitor-exit p1

    goto :goto_e6

    :catchall_e3
    move-exception p2

    monitor-exit p1
    :try_end_e5
    .catchall {:try_start_dc .. :try_end_e5} :catchall_e3

    throw p2

    .line 143
    :cond_e6
    :goto_e6
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object p5, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {p5, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_102

    .line 146
    iget-object p1, p0, Landroid/view/translation/UiTranslationController;->mWorkerHandler:Landroid/os/Handler;

    new-instance p5, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda3;

    invoke-direct {p5}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p5, p0, p2, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10e

    .line 150
    :cond_102
    iget-object p2, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/translation/Translator;

    invoke-direct {p0, p1, p4}, Landroid/view/translation/UiTranslationController;->onUiTranslationStarted(Landroid/view/translation/Translator;Ljava/util/List;)V

    .line 152
    nop

    .line 172
    :goto_10e
    return-void

    .line 133
    :catchall_10f
    move-exception p1

    :try_start_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw p1

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_c8
        :pswitch_bf
        :pswitch_a3
    .end packed-switch
.end method
