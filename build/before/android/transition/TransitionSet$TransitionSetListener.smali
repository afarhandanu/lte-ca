.class Landroid/transition/TransitionSet$TransitionSetListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field greylist-max-o mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method constructor greylist-max-o <init>(Landroid/transition/TransitionSet;)V
    .registers 2

    .line 400
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 401
    iput-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 402
    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4

    .line 413
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 414
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v0, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_18

    .line 416
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 417
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->end()V

    .line 419
    :cond_18
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 420
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 3

    .line 405
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-boolean p1, p1, Landroid/transition/TransitionSet;->mStarted:Z

    if-nez p1, :cond_10

    .line 406
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {p1}, Landroid/transition/TransitionSet;->start()V

    .line 407
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/transition/TransitionSet;->mStarted:Z

    .line 409
    :cond_10
    return-void
.end method
