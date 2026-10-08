.class public Landroid/view/WindowlessWindowLayout;
.super Landroid/view/WindowLayout;
.source "WindowlessWindowLayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/view/WindowLayout;-><init>()V

    return-void
.end method

.method private static blacklist calculateLength(III)I
    .registers 4

    .line 63
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 64
    return p2

    .line 66
    :cond_4
    const/4 p2, -0x2

    if-ne p0, p2, :cond_8

    .line 67
    return p1

    .line 69
    :cond_8
    return p0
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .registers 18

    .line 43
    move-object/from16 p2, p10

    iget-object p3, p2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-nez p3, :cond_1f

    .line 44
    iget-object p3, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget p4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p5, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    iget-object p1, p2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object p3, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 46
    iget-object p1, p2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object p2, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    return-void

    .line 50
    :cond_1f
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p4, p2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 50
    invoke-static {p3, p7, p4}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result v2

    .line 52
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p4, p2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    .line 52
    invoke-static {p3, p6, p4}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result v1

    .line 54
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p3, p3

    iget p4, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    add-float/2addr p3, p4

    float-to-int v4, p3

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p3, p3

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    add-float/2addr p3, p1

    float-to-int v5, p3

    iget-object v6, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 58
    iget-object p1, p2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object p3, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    iget-object p1, p2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object p2, p2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    return-void
.end method
