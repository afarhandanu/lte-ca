.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method constructor blacklist <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1199
    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1202
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x42

    if-ne p1, v0, :cond_26

    .line 1203
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$fgetmBlink(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    .line 1204
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v1}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$fgetmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {p1, v1}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$fputmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;Z)V

    .line 1205
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$mmakeBlink(Landroid/view/LayoutInflater$BlinkLayout;)V

    .line 1207
    :cond_20
    iget-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater$BlinkLayout;->invalidate()V

    .line 1208
    return v0

    .line 1210
    :cond_26
    const/4 p1, 0x0

    return p1
.end method
