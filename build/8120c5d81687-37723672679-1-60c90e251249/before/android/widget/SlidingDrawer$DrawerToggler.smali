.class Landroid/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SlidingDrawer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 965
    iput-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 2

    .line 967
    iget-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-static {p1}, Landroid/widget/SlidingDrawer;->-$$Nest$fgetmLocked(Landroid/widget/SlidingDrawer;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 968
    return-void

    .line 974
    :cond_9
    iget-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-static {p1}, Landroid/widget/SlidingDrawer;->-$$Nest$fgetmAnimateOnClick(Landroid/widget/SlidingDrawer;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 975
    iget-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->animateToggle()V

    goto :goto_1c

    .line 977
    :cond_17
    iget-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 979
    :goto_1c
    return-void
.end method
