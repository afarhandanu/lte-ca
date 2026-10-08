.class Landroid/widget/MediaController$7;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 617
    iput-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .line 634
    if-nez p3, :cond_3

    .line 637
    return-void

    .line 640
    :cond_3
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result p1

    int-to-long v0, p1

    .line 641
    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    .line 642
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    long-to-int p2, v0

    invoke-interface {p1, p2}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 643
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmCurrentTime(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 644
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmCurrentTime(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p3, p2}, Landroid/widget/MediaController;->-$$Nest$mstringForTime(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_34
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 620
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const v0, 0x36ee80

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 622
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/MediaController;->-$$Nest$fputmDragging(Landroid/widget/MediaController;Z)V

    .line 629
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmShowProgress(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 649
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/widget/MediaController;->-$$Nest$fputmDragging(Landroid/widget/MediaController;Z)V

    .line 650
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$msetProgress(Landroid/widget/MediaController;)I

    .line 651
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$mupdatePausePlay(Landroid/widget/MediaController;)V

    .line 652
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 657
    iget-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    iget-object v0, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmShowProgress(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void
.end method
