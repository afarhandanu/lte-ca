.class Landroid/widget/TextView$Marquee$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView$Marquee;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16486
    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 3

    .line 16489
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p1}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmStatus(Landroid/widget/TextView$Marquee;)B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_27

    .line 16490
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p1}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I

    move-result p1

    if-ltz p1, :cond_1c

    .line 16491
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p1}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Landroid/widget/TextView$Marquee;->-$$Nest$fputmRepeatLimit(Landroid/widget/TextView$Marquee;I)V

    .line 16493
    :cond_1c
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    iget-object p2, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p2}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 16495
    :cond_27
    return-void
.end method
