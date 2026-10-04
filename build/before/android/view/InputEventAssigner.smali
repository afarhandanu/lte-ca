.class public Landroid/view/InputEventAssigner;
.super Ljava/lang/Object;
.source "InputEventAssigner.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputEventAssigner"


# instance fields
.field private blacklist mDownEventId:I

.field private blacklist mHasUnprocessedDown:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 49
    iput v0, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return-void
.end method


# virtual methods
.method public blacklist notifyFrameProcessed()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 58
    return-void
.end method

.method public blacklist processEvent(Landroid/view/InputEvent;)I
    .registers 5

    .line 66
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_34

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 70
    :cond_16
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 71
    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 72
    iput-boolean v1, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 73
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v2

    iput v2, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    .line 75
    :cond_25
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2a

    if-ne v0, v1, :cond_2d

    .line 76
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 78
    :cond_2d
    iget-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    if-eqz v0, :cond_34

    .line 79
    iget p1, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return p1

    .line 83
    :cond_34
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result p1

    return p1
.end method
