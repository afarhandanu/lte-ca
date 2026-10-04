.class Landroid/widget/DayPickerView$3;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DayPickerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 427
    iput-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 431
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->-$$Nest$fgetmPrevButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_b

    .line 432
    const/4 p1, -0x1

    goto :goto_14

    .line 433
    :cond_b
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->-$$Nest$fgetmNextButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_34

    .line 434
    move p1, v1

    .line 441
    :goto_14
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->-$$Nest$fgetmAccessibilityManager(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 445
    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v1}, Landroid/widget/DayPickerView;->-$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, p1

    .line 446
    iget-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {p1}, Landroid/widget/DayPickerView;->-$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 447
    return-void

    .line 436
    :cond_34
    return-void
.end method
