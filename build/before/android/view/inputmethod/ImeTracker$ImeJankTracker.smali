.class public final Landroid/view/inputmethod/ImeTracker$ImeJankTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeJankTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;-><init>()V

    return-void
.end method

.method private static blacklist getImeInsetsCujFromAnimation(I)I
    .registers 1

    .line 1010
    packed-switch p0, :pswitch_data_c

    .line 1016
    const/4 p0, -0x1

    return p0

    .line 1014
    :pswitch_5
    const/16 p0, 0x51

    return p0

    .line 1012
    :pswitch_8
    const/16 p0, 0x50

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist onCancelAnimation(I)V
    .registers 3

    .line 984
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result p1

    .line 985
    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    .line 986
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 988
    :cond_e
    return-void
.end method

.method public blacklist onFinishAnimation(I)V
    .registers 3

    .line 996
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result p1

    .line 997
    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    .line 998
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 1000
    :cond_e
    return-void
.end method

.method public blacklist onRequestAnimation(Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;IZ)V
    .registers 8

    .line 962
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    .line 963
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 964
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    goto :goto_4f

    .line 968
    :cond_14
    nop

    .line 970
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    .line 971
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 972
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 968
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 973
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 974
    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getHostPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 973
    const-string p2, "%d@%d@%s"

    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    .line 975
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 976
    return-void

    .line 966
    :cond_4f
    :goto_4f
    return-void
.end method
