.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearAdapter"
.end annotation


# static fields
.field private static final blacklist ITEM_LAYOUT:I = 0x1090184

.field private static final blacklist ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x10303cd

.field private static final blacklist ITEM_TEXT_APPEARANCE:I = 0x10303cc


# instance fields
.field private blacklist mActivatedYear:I

.field private blacklist mCount:I

.field private final blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mMinYear:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    return v0
.end method

.method public blacklist getItem(I)Ljava/lang/Integer;
    .registers 2

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 2

    .line 202
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getPositionForYear(I)I
    .registers 3

    .line 160
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 175
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 176
    :goto_7
    if-eqz v2, :cond_15

    .line 177
    iget-object p2, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090184

    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_17

    .line 179
    :cond_15
    check-cast p2, Landroid/widget/TextView;

    .line 182
    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    .line 183
    iget p3, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-ne p3, p1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    .line 185
    :goto_21
    if-nez v2, :cond_29

    invoke-virtual {p2}, Landroid/widget/TextView;->isActivated()Z

    move-result p3

    if-eq p3, v0, :cond_38

    .line 187
    :cond_29
    if-eqz v0, :cond_2f

    .line 188
    const p3, 0x10303cd

    goto :goto_32

    .line 190
    :cond_2f
    const p3, 0x10303cc

    .line 192
    :goto_32
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 193
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 196
    :cond_38
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-object p2
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getYearForPosition(I)I
    .registers 3

    .line 164
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 2

    .line 222
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .registers 4

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 126
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    .line 128
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    if-ne v0, p1, :cond_13

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    if-eq v0, p2, :cond_1a

    .line 129
    :cond_13
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 130
    iput p2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetInvalidated()V

    .line 133
    :cond_1a
    return-void
.end method

.method public blacklist setSelection(I)Z
    .registers 3

    .line 136
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-eq v0, p1, :cond_b

    .line 137
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 138
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 139
    const/4 p1, 0x1

    return p1

    .line 141
    :cond_b
    const/4 p1, 0x0

    return p1
.end method
