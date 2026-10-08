.class Landroid/view/NotificationHeaderView$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method constructor blacklist <init>(Landroid/view/NotificationHeaderView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 5

    .line 70
    iget-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {p1}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmBackground(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 71
    iget-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result p1

    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 72
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 74
    :cond_1d
    return-void
.end method
