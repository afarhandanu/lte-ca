.class Landroid/widget/MediaController$3;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_13

    .line 242
    iget-object p1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmShowing(Landroid/widget/MediaController;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 243
    iget-object p1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 246
    :cond_13
    const/4 p1, 0x0

    return p1
.end method
