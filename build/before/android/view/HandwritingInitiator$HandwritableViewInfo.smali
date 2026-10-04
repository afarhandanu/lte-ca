.class public Landroid/view/HandwritingInitiator$HandwritableViewInfo;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritableViewInfo"
.end annotation


# instance fields
.field blacklist mHandwritingArea:Landroid/graphics/Rect;

.field public blacklist mIsDirty:Z

.field final blacklist mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 3

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    .line 1051
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 1052
    return-void
.end method


# virtual methods
.method public blacklist getHandwritingArea()Landroid/graphics/Rect;
    .registers 2

    .line 1066
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 1057
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public blacklist update()Z
    .registers 7

    .line 1078
    invoke-virtual {p0}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1080
    return v2

    .line 1083
    :cond_c
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    const/4 v3, 0x1

    if-nez v1, :cond_12

    .line 1084
    return v3

    .line 1086
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 1087
    if-nez v1, :cond_19

    .line 1088
    return v2

    .line 1091
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1092
    if-eqz v4, :cond_3a

    .line 1093
    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    if-nez v5, :cond_2a

    .line 1094
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 1096
    :cond_2a
    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1097
    iget-object v1, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v5}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1098
    iput-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 1101
    :cond_3a
    iput-boolean v2, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    .line 1102
    return v3
.end method
