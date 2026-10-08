.class Landroid/view/ViewTraversalTracingStrings;
.super Ljava/lang/Object;
.source "ViewTraversalTracingStrings.java"


# instance fields
.field public final blacklist classSimpleName:Ljava/lang/String;

.field public final blacklist onLayout:Ljava/lang/String;

.field public final blacklist onMeasure:Ljava/lang/String;

.field public final blacklist onMeasureBeforeLayout:Ljava/lang/String;

.field public final blacklist requestLayoutStacktracePrefix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 48
    iput-object v0, p0, Landroid/view/ViewTraversalTracingStrings;->classSimpleName:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "onMeasureBeforeLayout"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onMeasureBeforeLayout:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "onMeasure"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onMeasure:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "onLayout"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewTraversalTracingStrings;->onLayout:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLayout "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewTraversalTracingStrings;->requestLayoutStacktracePrefix:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private blacklist getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->appendId(Ljava/lang/StringBuilder;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 p2, 0x7f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
