.class final Landroid/view/InsetsController$PendingControlRequest;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingControlRequest"
.end annotation


# instance fields
.field final blacklist mAnimationType:I

.field final blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field final blacklist mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

.field final blacklist mListener:Landroid/view/WindowInsetsAnimationControlListener;

.field blacklist mTypes:I


# direct methods
.method constructor blacklist <init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;ILandroid/os/CancellationSignal;)V
    .registers 6

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput p1, p0, Landroid/view/InsetsController$PendingControlRequest;->mTypes:I

    .line 637
    iput-object p2, p0, Landroid/view/InsetsController$PendingControlRequest;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 638
    iput-object p3, p0, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    .line 639
    iput p4, p0, Landroid/view/InsetsController$PendingControlRequest;->mAnimationType:I

    .line 640
    iput-object p5, p0, Landroid/view/InsetsController$PendingControlRequest;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 641
    return-void
.end method
