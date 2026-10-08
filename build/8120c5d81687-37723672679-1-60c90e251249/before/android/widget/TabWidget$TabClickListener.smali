.class Landroid/widget/TabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final greylist-max-o mTabIndex:I

.field final synthetic blacklist this$0:Landroid/widget/TabWidget;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabWidget;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 589
    iput-object p1, p0, Landroid/widget/TabWidget$TabClickListener;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput p2, p0, Landroid/widget/TabWidget$TabClickListener;->mTabIndex:I

    .line 591
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 594
    iget-object p1, p0, Landroid/widget/TabWidget$TabClickListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {p1}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectionChangedListener(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;

    move-result-object p1

    iget v0, p0, Landroid/widget/TabWidget$TabClickListener;->mTabIndex:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 595
    return-void
.end method
