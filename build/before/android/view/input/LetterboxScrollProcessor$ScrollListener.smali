.class Landroid/view/input/LetterboxScrollProcessor$ScrollListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LetterboxScrollProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/input/LetterboxScrollProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/input/LetterboxScrollProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/view/input/LetterboxScrollProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/input/LetterboxScrollProcessor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/input/LetterboxScrollProcessor;Landroid/view/input/LetterboxScrollProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;-><init>(Landroid/view/input/LetterboxScrollProcessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 202
    nop

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 202
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 204
    iget-object v1, p0, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/input/LetterboxScrollProcessor;

    invoke-static {v1}, Landroid/view/input/LetterboxScrollProcessor;->-$$Nest$mgetAppBounds(Landroid/view/input/LetterboxScrollProcessor;)Landroid/graphics/Rect;

    move-result-object v1

    .line 205
    iget-object v2, p0, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/input/LetterboxScrollProcessor;

    invoke-static {v2, v0, v1}, Landroid/view/input/LetterboxScrollProcessor;->-$$Nest$mapplyOffset(Landroid/view/input/LetterboxScrollProcessor;Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    .line 206
    iget-object v1, p0, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/input/LetterboxScrollProcessor;

    invoke-static {v1}, Landroid/view/input/LetterboxScrollProcessor;->-$$Nest$fgetmGeneratedEventIds(Landroid/view/input/LetterboxScrollProcessor;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/input/LetterboxScrollProcessor;

    invoke-static {v1}, Landroid/view/input/LetterboxScrollProcessor;->-$$Nest$fgetmProcessedEvents(Landroid/view/input/LetterboxScrollProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/input/LetterboxScrollProcessor;

    sget-object v1, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-static {v0, v1}, Landroid/view/input/LetterboxScrollProcessor;->-$$Nest$fputmState(Landroid/view/input/LetterboxScrollProcessor;Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;)V

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
