.class Landroid/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YearPickerView$YearAdapter;,
        Landroid/widget/YearPickerView$OnYearSelectedListener;
    }
.end annotation


# instance fields
.field private final blacklist mAdapter:Landroid/widget/YearPickerView$YearAdapter;

.field private final blacklist mChildSize:I

.field private blacklist mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private final blacklist mViewSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnYearSelectedListener(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 41
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 56
    const p2, 0x1050165

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/widget/YearPickerView;->mViewSize:I

    .line 57
    const p2, 0x1050166

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/widget/YearPickerView;->mChildSize:I

    .line 59
    new-instance p1, Landroid/widget/YearPickerView$1;

    invoke-direct {p1, p0}, Landroid/widget/YearPickerView$1;-><init>(Landroid/widget/YearPickerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    new-instance p1, Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0}, Landroid/widget/YearPickerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/YearPickerView$YearAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    .line 72
    iget-object p1, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist getFirstPositionOffset()I
    .registers 3

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    if-nez v1, :cond_8

    .line 229
    return v0

    .line 231
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public blacklist onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 237
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_12

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 244
    :cond_12
    return-void
.end method

.method public blacklist setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 77
    return-void
.end method

.method public blacklist setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .registers 4

    .line 104
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YearPickerView$YearAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 105
    return-void
.end method

.method public blacklist setSelectionCentered(I)V
    .registers 4

    .line 99
    iget v0, p0, Landroid/widget/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 100
    invoke-virtual {p0, p1, v0}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    .line 101
    return-void
.end method

.method public blacklist setYear(I)V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    .line 87
    new-instance v0, Landroid/widget/YearPickerView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/YearPickerView$2;-><init>(Landroid/widget/YearPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
