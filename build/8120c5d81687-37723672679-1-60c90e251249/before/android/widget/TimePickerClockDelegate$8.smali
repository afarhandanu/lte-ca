.class Landroid/widget/TimePickerClockDelegate$8;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1016
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 1021
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_28

    .line 1036
    return-void

    .line 1026
    :sswitch_a
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p1, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    .line 1027
    goto :goto_22

    .line 1032
    :sswitch_10
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V

    .line 1033
    goto :goto_22

    .line 1029
    :sswitch_16
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V

    .line 1030
    goto :goto_22

    .line 1023
    :sswitch_1c
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p1, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    .line 1024
    nop

    .line 1039
    :goto_22
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$mtryVibrate(Landroid/widget/TimePickerClockDelegate;)V

    .line 1040
    return-void

    :sswitch_data_28
    .sparse-switch
        0x102020e -> :sswitch_1c
        0x1020360 -> :sswitch_16
        0x1020402 -> :sswitch_10
        0x102048b -> :sswitch_a
    .end sparse-switch
.end method
