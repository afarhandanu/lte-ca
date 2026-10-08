.class Landroid/widget/FastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor blacklist <init>(Landroid/widget/FastScroller;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 249
    iput-object p1, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 252
    iget-object p1, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    iget-object v0, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    invoke-static {v0}, Landroid/widget/FastScroller;->-$$Nest$fgetmShowingPrimary(Landroid/widget/FastScroller;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/FastScroller;->-$$Nest$fputmShowingPrimary(Landroid/widget/FastScroller;Z)V

    .line 253
    return-void
.end method
