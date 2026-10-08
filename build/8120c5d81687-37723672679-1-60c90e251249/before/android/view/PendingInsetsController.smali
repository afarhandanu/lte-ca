.class public Landroid/view/PendingInsetsController;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PendingInsetsController$ShowRequest;,
        Landroid/view/PendingInsetsController$HideRequest;,
        Landroid/view/PendingInsetsController$PendingRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEEP_BEHAVIOR:I = -0x1


# instance fields
.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearance:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mAppearanceFromResourceMask:I

.field private blacklist mAppearanceMask:I

.field private blacklist mBehavior:I

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDummyState:Landroid/view/InsetsState;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mReplayedInsetsController:Landroid/view/InsetsController;

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/PendingInsetsController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 51
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    .line 61
    nop

    .line 62
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    .line 166
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 167
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_13

    .line 169
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 172
    :goto_13
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 8

    .line 257
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_f

    .line 261
    :cond_b
    const/4 p1, 0x0

    invoke-interface {p6, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 263
    :goto_f
    return-void
.end method

.method public blacklist detach()V
    .registers 2

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    .line 240
    return-void
.end method

.method public blacklist getRequestedVisibleTypes()I
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 158
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    return v0

    .line 160
    :cond_b
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .registers 4

    .line 108
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 109
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsAppearance()I

    move-result v0

    return v0

    .line 111
    :cond_b
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .registers 3

    .line 131
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0

    .line 134
    :cond_b
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_12
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    return v0
.end method

.method public whitelist hide(I)V
    .registers 4

    .line 76
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->hide(I)V

    goto :goto_1a

    .line 79
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$HideRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$HideRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 82
    :goto_1a
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 178
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_f

    .line 180
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    :goto_f
    return-void
.end method

.method public blacklist replayAndAttach(Landroid/view/InsetsController;)V
    .registers 7

    .line 190
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 191
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    .line 193
    :cond_a
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    if-eqz v0, :cond_15

    .line 194
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    invoke-virtual {p1, v0, v2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    .line 196
    :cond_15
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    if-eqz v0, :cond_20

    .line 197
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    invoke-virtual {p1, v0, v2}, Landroid/view/InsetsController;->setSystemBarsAppearanceFromResource(II)V

    .line 200
    :cond_20
    iget v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_29

    .line 201
    iget v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 203
    :cond_29
    iget-boolean v0, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_31

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    .line 206
    :cond_31
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 207
    const/4 v2, 0x0

    move v3, v2

    :goto_39
    if-ge v3, v0, :cond_49

    .line 208
    iget-object v4, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/PendingInsetsController$PendingRequest;

    invoke-interface {v4, p1}, Landroid/view/PendingInsetsController$PendingRequest;->replay(Landroid/view/InsetsController;)V

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 210
    :cond_49
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    move v3, v2

    :goto_50
    if-ge v3, v0, :cond_60

    .line 212
    iget-object v4, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 212
    invoke-virtual {p1, v4}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 215
    :cond_60
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_69

    .line 216
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 220
    :cond_69
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    iput v1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 223
    iput v2, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    .line 224
    iput v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    .line 225
    iput v2, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    .line 226
    iput v2, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    .line 227
    iput-boolean v2, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 229
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 231
    iput-object p1, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    .line 232
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 143
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    goto :goto_c

    .line 145
    :cond_a
    iput-boolean p1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    .line 147
    :goto_c
    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .registers 2

    .line 116
    iput p1, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    .line 117
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .registers 5

    .line 86
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 87
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    goto :goto_17

    .line 89
    :cond_a
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    .line 90
    iget p1, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    .line 92
    :goto_17
    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .registers 5

    .line 97
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 98
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearanceFromResource(II)V

    goto :goto_17

    .line 100
    :cond_a
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    .line 101
    iget p1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    .line 103
    :goto_17
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    goto :goto_c

    .line 124
    :cond_a
    iput p1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 126
    :goto_c
    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_c

    .line 248
    :cond_a
    iput-object p1, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 250
    :goto_c
    return-void
.end method

.method public whitelist show(I)V
    .registers 4

    .line 66
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 67
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->show(I)V

    goto :goto_19

    .line 69
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$ShowRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$ShowRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 72
    :goto_19
    return-void
.end method
