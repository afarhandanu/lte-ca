.class public final Landroid/view/accessibility/AccessibilityNodeIdManager;
.super Ljava/lang/Object;
.source "AccessibilityNodeIdManager.java"


# static fields
.field private static blacklist sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;


# instance fields
.field private blacklist mIdsToViews:Landroid/view/accessibility/WeakSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/accessibility/WeakSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/view/accessibility/WeakSparseArray;

    invoke-direct {v0}, Landroid/view/accessibility/WeakSparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    .line 38
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;
    .registers 2

    const-class v0, Landroid/view/accessibility/AccessibilityNodeIdManager;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    if-nez v1, :cond_e

    .line 32
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeIdManager;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityNodeIdManager;-><init>()V

    sput-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    .line 34
    :cond_e
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist findView(I)Landroid/view/View;
    .registers 4

    .line 68
    nop

    .line 69
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    .line 70
    :try_start_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/WeakSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 71
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_18

    .line 72
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1

    .line 71
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public blacklist registerViewWithId(Landroid/view/View;I)V
    .registers 5

    .line 47
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/view/accessibility/WeakSparseArray;->append(ILjava/lang/Object;)V

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist unregisterViewWithId(I)V
    .registers 4

    .line 57
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/WeakSparseArray;->remove(I)V

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
