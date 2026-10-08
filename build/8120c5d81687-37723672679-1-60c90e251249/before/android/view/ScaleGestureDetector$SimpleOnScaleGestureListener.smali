.class public Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 115
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 119
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 124
    return-void
.end method
