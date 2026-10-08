.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field final synthetic blacklist val$this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Landroid/view/ViewRootImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9141
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iput-object p2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->val$this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 9146
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 9174
    iget-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-static {p1, p3, p4, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$mdispatchFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;FFJ)V

    .line 9175
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 9169
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 9163
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 9151
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 9155
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$mdispatchTap(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 9156
    const/4 p1, 0x1

    return p1
.end method
