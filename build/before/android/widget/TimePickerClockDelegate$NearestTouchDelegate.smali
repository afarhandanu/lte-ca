.class Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private blacklist mInitialTouchTarget:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>()V

    return-void
.end method

.method private blacklist findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 12

    .line 1081
    nop

    .line 1082
    nop

    .line 1084
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_36

    .line 1085
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1086
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v5, p2, v5

    .line 1087
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int v6, p3, v6

    .line 1088
    mul-int/2addr v5, v5

    mul-int/2addr v6, v6

    add-int/2addr v5, v6

    .line 1089
    if-le v2, v5, :cond_33

    .line 1090
    nop

    .line 1091
    move-object v1, v4

    move v2, v5

    .line 1084
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1095
    :cond_36
    return-object v1
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1051
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1052
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1053
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1f

    .line 1054
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 1055
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1054
    invoke-direct {p0, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    goto :goto_21

    .line 1057
    :cond_1f
    iput-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 1061
    :cond_21
    :goto_21
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 1062
    if-nez v2, :cond_27

    .line 1063
    const/4 p1, 0x0

    return p1

    .line 1066
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-float p1, p1

    .line 1068
    invoke-virtual {p2, v3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1069
    invoke-virtual {v2, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1070
    neg-float v3, v3

    neg-float p1, p1

    invoke-virtual {p2, v3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1072
    const/4 p1, 0x1

    if-eq v0, p1, :cond_4d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4f

    .line 1074
    :cond_4d
    iput-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 1077
    :cond_4f
    return v2
.end method
