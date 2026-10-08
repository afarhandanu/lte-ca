.class public Landroid/view/GestureDetector$SimpleOnGestureListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnGestureListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onContextClick(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 238
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 226
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 230
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 222
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 215
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 206
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 210
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 219
    return-void
.end method

.method public whitelist onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 234
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 202
    const/4 p1, 0x0

    return p1
.end method
