.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


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

    .line 892
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValueSelected(IIZ)V
    .registers 7

    .line 895
    nop

    .line 896
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5c

    goto :goto_3b

    .line 908
    :pswitch_7
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {p1}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result p1

    if-eq p1, p2, :cond_10

    .line 909
    move v1, v0

    .line 911
    :cond_10
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p1, p2, v0, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V

    goto :goto_3b

    .line 898
    :pswitch_16
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {p1}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result p1

    if-eq p1, p2, :cond_20

    .line 899
    move p1, v0

    goto :goto_21

    .line 898
    :cond_20
    move p1, v1

    .line 901
    :goto_21
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmAllowAutoAdvance(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz p3, :cond_2c

    move v1, v0

    .line 902
    :cond_2c
    iget-object p3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    xor-int/lit8 v2, v1, 0x1

    invoke-static {p3, p2, v0, v2, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 903
    if-eqz v1, :cond_3a

    .line 904
    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p2, v0, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V

    .line 915
    :cond_3a
    move v1, p1

    :goto_3b
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object p1, p1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz p1, :cond_5a

    if-eqz v1, :cond_5a

    .line 916
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object p1, p1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object p2, p2, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object p3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {p3}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result p3

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 918
    :cond_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_7
    .end packed-switch
.end method
