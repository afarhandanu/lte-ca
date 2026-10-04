.class Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActionMenuView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 784
    return-void
.end method

.method public greylist-max-o onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 2

    .line 788
    const/4 p1, 0x0

    return p1
.end method
