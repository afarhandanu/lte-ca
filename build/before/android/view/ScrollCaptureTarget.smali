.class public final Landroid/view/ScrollCaptureTarget;
.super Ljava/lang/Object;
.source "ScrollCaptureTarget.java"


# instance fields
.field private final blacklist mCallback:Landroid/view/ScrollCaptureCallback;

.field private final blacklist mContainingView:Landroid/view/View;

.field private final blacklist mHint:I

.field private final blacklist mLocalVisibleRect:Landroid/graphics/Rect;

.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private blacklist mScrollBounds:Landroid/graphics/Rect;

.field private final blacklist mTmpIntArr:[I


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ScrollCaptureTarget;->mTmpIntArr:[I

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    .line 48
    iget-object p1, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollCaptureHint()I

    move-result p1

    iput p1, p0, Landroid/view/ScrollCaptureTarget;->mHint:I

    .line 49
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ScrollCaptureCallback;

    iput-object p1, p0, Landroid/view/ScrollCaptureTarget;->mCallback:Landroid/view/ScrollCaptureCallback;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/ScrollCaptureTarget;->mLocalVisibleRect:Landroid/graphics/Rect;

    .line 51
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iput-object p1, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    .line 52
    return-void
.end method


# virtual methods
.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 137
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ScrollCaptureTarget;->mHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mCallback:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scrollBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_60

    move-object v1, v2

    goto :goto_66

    :cond_60
    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionInWindow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    if-nez v0, :cond_85

    move-object v0, v2

    goto :goto_ac

    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ac
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getLocalVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localVisibleRect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    if-nez v0, :cond_c9

    goto :goto_cd

    :cond_c9
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public whitelist getCallback()Landroid/view/ScrollCaptureCallback;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mCallback:Landroid/view/ScrollCaptureCallback;

    return-object v0
.end method

.method public whitelist getContainingView()Landroid/view/View;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getHint()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/view/ScrollCaptureTarget;->mHint:I

    return v0
.end method

.method public whitelist getLocalVisibleRect()Landroid/graphics/Rect;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mLocalVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getPositionInWindow()Landroid/graphics/Point;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getScrollBounds()Landroid/graphics/Rect;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist setScrollBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 106
    invoke-static {p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    .line 107
    iget-object p1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    if-nez p1, :cond_b

    .line 108
    return-void

    .line 110
    :cond_b
    iget-object p1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-nez p1, :cond_25

    .line 112
    iget-object p1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 114
    :cond_25
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureTarget{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mCallback:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrollBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localVisibleRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mLocalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionInWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updatePositionInWindow()V
    .registers 4

    .line 122
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mContainingView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mTmpIntArr:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 123
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mTmpIntArr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 124
    iget-object v0, p0, Landroid/view/ScrollCaptureTarget;->mPositionInWindow:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/view/ScrollCaptureTarget;->mTmpIntArr:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 125
    return-void
.end method
