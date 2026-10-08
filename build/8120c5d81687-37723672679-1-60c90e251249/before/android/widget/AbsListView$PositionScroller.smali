.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final greylist-max-o MOVE_DOWN_BOUND:I = 0x3

.field private static final greylist-max-o MOVE_DOWN_POS:I = 0x1

.field private static final greylist-max-o MOVE_OFFSET:I = 0x5

.field private static final greylist-max-o MOVE_UP_BOUND:I = 0x4

.field private static final greylist-max-o MOVE_UP_POS:I = 0x2

.field private static final greylist-max-o SCROLL_DURATION:I = 0xc8


# instance fields
.field private greylist-max-o mBoundPos:I

.field private final greylist-max-o mExtraScroll:I

.field private greylist-max-o mLastSeenPos:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffsetFromTop:I

.field private greylist-max-o mScrollDuration:I

.field private greylist-max-o mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7841
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 7842
    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 7843
    return-void
.end method

.method private greylist-max-o scrollToVisible(III)V
    .registers 10

    .line 8035
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8036
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8037
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 8038
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 8039
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 8041
    if-lt p1, v0, :cond_24

    if-le p1, v1, :cond_57

    .line 8042
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollToVisible called with targetPos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not visible ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AbsListView"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8045
    :cond_57
    if-lt p2, v0, :cond_5b

    if-le p2, v1, :cond_5c

    .line 8047
    :cond_5b
    const/4 p2, -0x1

    .line 8050
    :cond_5c
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 8051
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 8052
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 8053
    nop

    .line 8055
    const/4 v4, 0x0

    if-le p1, v3, :cond_71

    .line 8056
    sub-int/2addr p1, v3

    goto :goto_72

    .line 8055
    :cond_71
    move p1, v4

    .line 8058
    :goto_72
    if-ge v1, v2, :cond_76

    .line 8059
    sub-int p1, v1, v2

    .line 8062
    :cond_76
    if-nez p1, :cond_79

    .line 8063
    return-void

    .line 8066
    :cond_79
    if-ltz p2, :cond_a5

    .line 8067
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 8068
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 8069
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 8070
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 8072
    if-gez p1, :cond_9a

    add-int v5, p2, v1

    if-le v5, v3, :cond_9a

    .line 8074
    sub-int/2addr p2, v3

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_a5

    .line 8075
    :cond_9a
    if-lez p1, :cond_a5

    sub-int p2, v0, v1

    if-ge p2, v2, :cond_a5

    .line 8077
    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8081
    :cond_a5
    :goto_a5
    iget-object p2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8082
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 15

    .line 8091
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 8092
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8094
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_24e

    goto/16 :goto_24d

    .line 8226
    :pswitch_13
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v0, v1, :cond_1d

    .line 8228
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8229
    return-void

    .line 8232
    :cond_1d
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8234
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8236
    if-gtz v0, :cond_28

    .line 8237
    return-void

    .line 8240
    :cond_28
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8241
    add-int v5, v1, v0

    sub-int/2addr v5, v4

    .line 8245
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8246
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 8247
    iget-object v8, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8248
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 8249
    int-to-float v10, v7

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v12, :cond_4d

    move v6, v13

    goto :goto_54

    .line 8250
    :cond_4d
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v10

    .line 8251
    :goto_54
    int-to-float v7, v9

    cmpl-float v10, v7, v11

    if-nez v10, :cond_5b

    move v8, v13

    goto :goto_69

    .line 8253
    :cond_5b
    iget-object v10, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 8252
    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v8, v7

    .line 8255
    :goto_69
    nop

    .line 8256
    if-ge v2, v1, :cond_75

    .line 8257
    sub-int v7, v1, v2

    int-to-float v7, v7

    sub-float v6, v13, v6

    add-float/2addr v7, v6

    add-float v11, v7, v13

    goto :goto_7e

    .line 8258
    :cond_75
    if-le v2, v5, :cond_7e

    .line 8259
    sub-int v6, v2, v5

    int-to-float v6, v6

    sub-float v7, v13, v8

    add-float v11, v6, v7

    .line 8263
    :cond_7e
    :goto_7e
    int-to-float v0, v0

    div-float/2addr v11, v0

    .line 8265
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 8266
    if-ge v2, v1, :cond_a5

    .line 8267
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 8268
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 8269
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8270
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8271
    goto/16 :goto_24d

    :cond_a5
    if-le v2, v5, :cond_c1

    .line 8272
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 8273
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 8274
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8275
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8276
    goto/16 :goto_24d

    .line 8278
    :cond_c1
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 8279
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int/2addr v0, v1

    .line 8280
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    .line 8281
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 8282
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8284
    goto/16 :goto_24d

    .line 8191
    :pswitch_e8
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 8192
    if-gez v2, :cond_f3

    .line 8193
    return-void

    .line 8195
    :cond_f3
    add-int/2addr v1, v2

    .line 8197
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v5, :cond_fe

    .line 8199
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8200
    return-void

    .line 8203
    :cond_fe
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8204
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 8205
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 8206
    sub-int v6, v0, v2

    .line 8207
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 8208
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8209
    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v1, v8, :cond_130

    .line 8210
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v6, v7

    neg-int v1, v6

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8212
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_24d

    .line 8214
    :cond_130
    sub-int/2addr v0, v7

    .line 8215
    add-int/2addr v2, v5

    .line 8216
    if-le v0, v2, :cond_13e

    .line 8217
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    neg-int v0, v0

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto :goto_143

    .line 8219
    :cond_13e
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8222
    :goto_143
    goto/16 :goto_24d

    .line 8128
    :pswitch_145
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8130
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v1, v2, :cond_1ab

    if-le v0, v4, :cond_1ab

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v0, v2, :cond_159

    goto :goto_1ab

    .line 8135
    :cond_159
    add-int/2addr v1, v4

    .line 8137
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_164

    .line 8139
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8140
    return-void

    .line 8143
    :cond_164
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8144
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 8145
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 8146
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8147
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v1, v6, :cond_198

    .line 8148
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/2addr v2, v0

    sub-int/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v6, v0, v2, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8151
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8153
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_24d

    .line 8155
    :cond_198
    if-le v0, v5, :cond_1a4

    .line 8156
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v5

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_24d

    .line 8158
    :cond_1a4
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8161
    goto/16 :goto_24d

    .line 8132
    :cond_1ab
    :goto_1ab
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8133
    return-void

    .line 8165
    :pswitch_1b1
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_1bb

    .line 8167
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8168
    return-void

    .line 8171
    :cond_1bb
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8172
    if-nez v0, :cond_1c4

    .line 8173
    return-void

    .line 8175
    :cond_1c4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 8176
    if-lez v1, :cond_1d7

    .line 8177
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1dd

    :cond_1d7
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 8179
    :goto_1dd
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v6, :cond_1e7

    move v3, v4

    :cond_1e7
    invoke-virtual {v5, v0, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8182
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8184
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v0, :cond_24d

    .line 8185
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_24d

    .line 8096
    :pswitch_1f6
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    .line 8097
    add-int/2addr v1, v2

    .line 8099
    if-gez v2, :cond_201

    .line 8100
    return-void

    .line 8103
    :cond_201
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v5, :cond_20b

    .line 8105
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8106
    return-void

    .line 8109
    :cond_20b
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8110
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 8111
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 8112
    sub-int/2addr v0, v2

    .line 8113
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_22e

    .line 8114
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_234

    :cond_22e
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 8116
    :goto_234
    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 8117
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v1, v6, :cond_23f

    move v3, v4

    :cond_23f
    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8119
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8120
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v1, v0, :cond_24d

    .line 8121
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8290
    :cond_24d
    :goto_24d
    return-void

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_1b1
        :pswitch_145
        :pswitch_e8
        :pswitch_13
    .end packed-switch
.end method

.method public greylist-max-o start(I)V
    .registers 7

    .line 7847
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7849
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_13

    .line 7851
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7856
    return-void

    .line 7859
    :cond_13
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7860
    if-nez v0, :cond_1c

    .line 7862
    return-void

    .line 7865
    :cond_1c
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7866
    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 7869
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7870
    const/16 v3, 0xc8

    const/4 v4, -0x1

    if-ge p1, v1, :cond_3e

    .line 7871
    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    .line 7872
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_46

    .line 7873
    :cond_3e
    if-le p1, v0, :cond_5a

    .line 7874
    sub-int v0, p1, v0

    add-int/lit8 v1, v0, 0x1

    .line 7875
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7881
    :goto_46
    if-lez v1, :cond_4c

    .line 7882
    div-int/2addr v3, v1

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_4e

    .line 7884
    :cond_4c
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7886
    :goto_4e
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7887
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7888
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7890
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7891
    return-void

    .line 7877
    :cond_5a
    invoke-direct {p0, p1, v4, v3}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7878
    return-void
.end method

.method public greylist-max-o start(II)V
    .registers 8

    .line 7895
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7897
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 7898
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 7899
    return-void

    .line 7902
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1a

    .line 7904
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7909
    return-void

    .line 7912
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7913
    if-nez v1, :cond_23

    .line 7915
    return-void

    .line 7918
    :cond_23
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7919
    add-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 7922
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7923
    const/16 v4, 0xc8

    if-ge p1, v2, :cond_52

    .line 7924
    sub-int/2addr v1, p2

    .line 7925
    if-ge v1, v3, :cond_42

    .line 7927
    return-void

    .line 7930
    :cond_42
    sub-int/2addr v2, p1

    add-int/2addr v2, v3

    .line 7931
    sub-int/2addr v1, v3

    .line 7932
    if-ge v1, v2, :cond_4d

    .line 7933
    nop

    .line 7934
    const/4 v2, 0x4

    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move v2, v1

    goto :goto_51

    .line 7936
    :cond_4d
    nop

    .line 7937
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7939
    :goto_51
    goto :goto_69

    :cond_52
    if-le p1, v1, :cond_7d

    .line 7940
    sub-int v2, p2, v2

    .line 7941
    if-ge v2, v3, :cond_59

    .line 7943
    return-void

    .line 7946
    :cond_59
    sub-int v1, p1, v1

    add-int/2addr v1, v3

    .line 7947
    sub-int/2addr v2, v3

    .line 7948
    if-ge v2, v1, :cond_64

    .line 7949
    nop

    .line 7950
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_68

    .line 7952
    :cond_64
    nop

    .line 7953
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move v2, v1

    .line 7955
    :goto_68
    nop

    .line 7960
    :goto_69
    if-lez v2, :cond_6f

    .line 7961
    div-int/2addr v4, v2

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_71

    .line 7963
    :cond_6f
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7965
    :goto_71
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7966
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7967
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7969
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7970
    return-void

    .line 7956
    :cond_7d
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7957
    return-void
.end method

.method public greylist-max-o startWithOffset(II)V
    .registers 4

    .line 7974
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 7975
    return-void
.end method

.method public greylist-max-o startWithOffset(III)V
    .registers 10

    .line 7979
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7981
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 7983
    nop

    .line 7984
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7989
    return-void

    .line 7992
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7993
    if-nez v0, :cond_1d

    .line 7995
    return-void

    .line 7998
    :cond_1d
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 8000
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8001
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 8002
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 8003
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8004
    const/4 v3, 0x5

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 8006
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8007
    add-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 8010
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v5, v3, :cond_50

    .line 8011
    iget p2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v3, p2

    goto :goto_58

    .line 8012
    :cond_50
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v5, v4, :cond_6f

    .line 8013
    iget p2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v3, p2, v4

    .line 8022
    :goto_58
    int-to-float p2, v3

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 8023
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_62

    .line 8024
    goto :goto_65

    :cond_62
    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    :goto_65
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 8025
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8027
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8028
    return-void

    .line 8016
    :cond_6f
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 8017
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1, p3, v2, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8018
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 8086
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8087
    return-void
.end method
