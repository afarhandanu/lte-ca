.class public final Landroid/webkit/WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addWebViewAssetPath(Landroid/content/Context;)V
    .registers 2

    .line 178
    return-void
.end method

.method public whitelist callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist callDrawGlFunction(Landroid/graphics/Canvas;JLjava/lang/Runnable;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist detachDrawGlFunctor(Landroid/view/View;J)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->mainlineApis()Z

    move-result v0

    if-nez v0, :cond_16

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 139
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 140
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    .line 143
    :cond_15
    return-void

    .line 136
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist drawWebViewFunctor(Landroid/graphics/Canvas;I)V
    .registers 4

    .line 118
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_a

    .line 123
    check-cast p1, Landroid/graphics/RecordingCanvas;

    invoke-virtual {p1, p2}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V

    .line 124
    return-void

    .line 120
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a RecordingCanvas canvas"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist getApplication()Landroid/app/Application;
    .registers 2

    .line 165
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDataDirectorySuffix()Ljava/lang/String;
    .registers 2

    .line 191
    invoke-static {}, Landroid/webkit/WebViewFactory;->getDataDirectorySuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 172
    invoke-static {p2, p1}, Landroid/webkit/LegacyErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5

    .line 149
    nop

    .line 150
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object p1

    .line 151
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 152
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 155
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 151
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 158
    :cond_24
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;
    .registers 2

    .line 201
    invoke-static {}, Landroid/webkit/WebViewFactory;->getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;

    move-result-object v0

    return-object v0
.end method

.method public whitelist invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist isMultiProcessEnabled()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isTraceTagEnabled()Z
    .registers 3

    .line 71
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .registers 3

    .line 59
    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
