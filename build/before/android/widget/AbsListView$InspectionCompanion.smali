.class public final Landroid/widget/AbsListView$InspectionCompanion;
.super Ljava/lang/Object;
.source "AbsListView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AbsListView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCacheColorHintId:I

.field private blacklist mChoiceModeId:I

.field private blacklist mDrawSelectorOnTopId:I

.field private blacklist mFastScrollEnabledId:I

.field private blacklist mListSelectorId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mScrollingCacheId:I

.field private blacklist mSmoothScrollbarId:I

.field private blacklist mStackFromBottomId:I

.field private blacklist mTextFilterEnabledId:I

.field private blacklist mTranscriptModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 8

    .line 75
    const-string v0, "cacheColorHint"

    const v1, 0x1010101

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mCacheColorHintId:I

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    const-string/jumbo v1, "singleChoice"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const-string/jumbo v1, "multipleChoice"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    const/4 v1, 0x3

    const-string/jumbo v5, "multipleChoiceModal"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "choiceMode"

    const v5, 0x101012b

    invoke-interface {p1, v0, v5, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mChoiceModeId:I

    .line 82
    const-string v0, "drawSelectorOnTop"

    const v1, 0x10100fc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mDrawSelectorOnTopId:I

    .line 83
    const-string v0, "fastScrollEnabled"

    const v1, 0x1010226

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mFastScrollEnabledId:I

    .line 84
    const-string v0, "listSelector"

    const v1, 0x10100fb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mListSelectorId:I

    .line 85
    const-string/jumbo v0, "scrollingCache"

    const v1, 0x10100fe

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mScrollingCacheId:I

    .line 86
    const-string/jumbo v0, "smoothScrollbar"

    const v1, 0x1010231

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mSmoothScrollbarId:I

    .line 87
    const-string/jumbo v0, "stackFromBottom"

    const v1, 0x10100fd

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mStackFromBottomId:I

    .line 88
    const-string/jumbo v0, "textFilterEnabled"

    const v1, 0x10100ff

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTextFilterEnabledId:I

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 90
    const-string v1, "disabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    const-string v1, "alwaysScroll"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v0, "transcriptMode"

    const v2, 0x1010100

    invoke-interface {p1, v0, v2, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTranscriptModeId:I

    .line 94
    iput-boolean v3, p0, Landroid/widget/AbsListView$InspectionCompanion;->mPropertiesMapped:Z

    .line 95
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/AbsListView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    .line 99
    iget-boolean v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_5f

    .line 102
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mCacheColorHintId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 103
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mChoiceModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 104
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mDrawSelectorOnTopId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isDrawSelectorOnTop()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 105
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mFastScrollEnabledId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 106
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mListSelectorId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 107
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mScrollingCacheId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 108
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mSmoothScrollbarId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 109
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mStackFromBottomId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 110
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTextFilterEnabledId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 111
    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTranscriptModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getTranscriptMode()I

    move-result p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 112
    return-void

    .line 100
    :cond_5f
    new-instance p1, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p1}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p1
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 17
    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView$InspectionCompanion;->readProperties(Landroid/widget/AbsListView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
