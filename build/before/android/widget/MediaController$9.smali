.class Landroid/widget/MediaController$9;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 704
    iput-object p1, p0, Landroid/widget/MediaController$9;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 3

    .line 707
    iget-object p1, p0, Landroid/widget/MediaController$9;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result p1

    .line 708
    add-int/lit16 p1, p1, 0x3a98

    .line 709
    iget-object v0, p0, Landroid/widget/MediaController$9;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 710
    iget-object p1, p0, Landroid/widget/MediaController$9;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$msetProgress(Landroid/widget/MediaController;)I

    .line 712
    iget-object p1, p0, Landroid/widget/MediaController$9;->this$0:Landroid/widget/MediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 713
    return-void
.end method
