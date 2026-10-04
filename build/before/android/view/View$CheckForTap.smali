.class final Landroid/view/View$CheckForTap;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/View;

.field public greylist-max-o x:F

.field public greylist-max-o y:F


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 31902
    iput-object p1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 31908
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 31909
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, p0, Landroid/view/View$CheckForTap;->x:F

    iget v2, p0, Landroid/view/View$CheckForTap;->y:F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/view/View;->-$$Nest$msetPressed(Landroid/view/View;ZFF)V

    .line 31910
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLongPressTimeoutMillis()I

    move-result v0

    iget-object v1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$mgetTapTimeoutMillis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 31911
    iget-object v1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    int-to-long v2, v0

    iget v4, p0, Landroid/view/View$CheckForTap;->x:F

    iget v5, p0, Landroid/view/View$CheckForTap;->y:F

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Landroid/view/View;->-$$Nest$mcheckForLongClick(Landroid/view/View;JFFI)V

    .line 31912
    return-void
.end method
