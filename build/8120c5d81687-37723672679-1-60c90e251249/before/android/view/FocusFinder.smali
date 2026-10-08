.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator;,
        Landroid/view/FocusFinder$FocusSorter;
    }
.end annotation


# static fields
.field private static final greylist-max-o tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mBestCandidateRect:Landroid/graphics/Rect;

.field private final greylist-max-o mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

.field final greylist-max-o mFocusedRect:Landroid/graphics/Rect;

.field final greylist-max-o mOtherRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

.field private final greylist-max-o mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v1, Landroid/view/FocusFinder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/FocusFinder$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 61
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v1, Landroid/view/FocusFinder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/FocusFinder$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 64
    new-instance v0, Landroid/view/FocusFinder$FocusSorter;

    invoke-direct {v0}, Landroid/view/FocusFinder$FocusSorter;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/FocusFinder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private greylist-max-o findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 11

    .line 97
    nop

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder;->getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 99
    if-eqz p2, :cond_c

    .line 100
    invoke-direct {p0, v1, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_d

    .line 99
    :cond_c
    const/4 p1, 0x0

    .line 102
    :goto_d
    if-eqz p1, :cond_10

    .line 103
    return-object p1

    .line 105
    :cond_10
    iget-object v5, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 107
    :try_start_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 108
    invoke-virtual {v1, v5, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 110
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2b

    .line 113
    :cond_26
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 114
    nop

    .line 115
    return-object p1

    .line 113
    :catchall_2b
    move-exception v0

    move-object p1, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 114
    throw p1
.end method

.method private greylist-max-o findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 220
    if-eqz p2, :cond_e

    .line 221
    if-nez p3, :cond_6

    .line 222
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 225
    :cond_6
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 226
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object v5, p3

    goto :goto_3c

    .line 228
    :cond_e
    if-nez p3, :cond_3b

    .line 229
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 231
    sparse-switch p4, :sswitch_data_6e

    goto :goto_39

    .line 234
    :sswitch_16
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 235
    goto :goto_39

    .line 246
    :sswitch_1a
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 247
    goto :goto_39

    .line 237
    :sswitch_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 238
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_39

    .line 240
    :cond_28
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 242
    goto :goto_39

    .line 249
    :sswitch_2c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 250
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_39

    .line 252
    :cond_36
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 259
    :goto_39
    move-object v5, p3

    goto :goto_3c

    .line 228
    :cond_3b
    move-object v5, p3

    .line 259
    :goto_3c
    sparse-switch p4, :sswitch_data_88

    .line 271
    move v6, p4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :sswitch_59
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v2, p5

    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 262
    :sswitch_63
    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v2, p5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_1e
        0x11 -> :sswitch_1a
        0x21 -> :sswitch_1a
        0x42 -> :sswitch_16
        0x82 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_63
        0x2 -> :sswitch_63
        0x11 -> :sswitch_59
        0x21 -> :sswitch_59
        0x42 -> :sswitch_59
        0x82 -> :sswitch_59
    .end sparse-switch
.end method

.method private greylist-max-o findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 307
    :try_start_0
    iget-object p4, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {p4, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 308
    iget-object p4, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p1, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_49

    .line 310
    iget-object p4, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {p4}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    nop

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 314
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p4, v0, :cond_19

    .line 315
    return-object v1

    .line 317
    :cond_19
    nop

    .line 318
    const/4 v0, 0x1

    new-array v2, v0, [Z

    .line 319
    packed-switch p5, :pswitch_data_50

    goto :goto_2a

    .line 321
    :pswitch_21
    invoke-static {p3, p1, p4, v2}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;

    move-result-object v1

    .line 322
    goto :goto_2a

    .line 324
    :pswitch_26
    invoke-static {p3, p1, p4, v2}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;

    move-result-object v1

    .line 327
    :goto_2a
    if-eqz p2, :cond_3d

    iget-object p3, p2, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p3, :cond_3d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p3

    if-ne p2, p3, :cond_3d

    .line 328
    iget-object p2, p2, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 p3, 0x0

    aget-boolean p3, v2, p3

    iput-boolean p3, p2, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    .line 330
    :cond_3d
    if-eqz v1, :cond_40

    goto :goto_48

    :cond_40
    sub-int/2addr p4, v0

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    :goto_48
    return-object v1

    .line 310
    :catchall_49
    move-exception p1

    iget-object p2, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    throw p1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_26
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p3, p1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_3a

    .line 285
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    nop

    .line 287
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    sparse-switch p4, :sswitch_data_42

    .line 299
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :sswitch_30
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 297
    :sswitch_35
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 285
    :catchall_3a
    move-exception p1

    iget-object p2, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    throw p1

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_35
        0x2 -> :sswitch_30
        0x11 -> :sswitch_35
        0x21 -> :sswitch_35
        0x42 -> :sswitch_30
        0x82 -> :sswitch_30
    .end sparse-switch
.end method

.method private greylist-max-o findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 7

    .line 195
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    .line 196
    nop

    .line 197
    const/4 v0, 0x1

    move v1, v0

    move-object v0, p2

    .line 198
    :goto_8
    if-eqz p2, :cond_36

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_23

    .line 201
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 202
    invoke-virtual {p2}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 203
    :cond_22
    return-object p2

    .line 205
    :cond_23
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    .line 206
    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_34

    .line 207
    invoke-virtual {v0, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 208
    if-ne v0, p2, :cond_32

    .line 211
    goto :goto_36

    .line 208
    :cond_32
    move v1, v2

    goto :goto_8

    .line 206
    :cond_34
    move v1, v2

    goto :goto_8

    .line 215
    :cond_36
    :goto_36
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 4

    .line 185
    nop

    .line 186
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 187
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 188
    return-object p1

    .line 190
    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8

    .line 127
    if-eqz p2, :cond_3b

    if-ne p2, p1, :cond_5

    goto :goto_3b

    .line 130
    :cond_5
    nop

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    :goto_b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3a

    .line 133
    if-ne v0, p1, :cond_15

    .line 134
    if-eqz v1, :cond_14

    move-object p1, v1

    :cond_14
    return-object p1

    .line 136
    :cond_15
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 140
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 143
    move-object v1, v2

    .line 145
    :cond_35
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 146
    goto :goto_b

    .line 147
    :cond_3a
    return-object p1

    .line 128
    :cond_3b
    :goto_3b
    return-object p1
.end method

.method public static whitelist getInstance()Landroid/view/FocusFinder;
    .registers 1

    .line 52
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static blacklist getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I[Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 387
    const/4 v0, 0x2

    if-ge p2, v0, :cond_5

    .line 388
    const/4 p0, 0x0

    return-object p0

    .line 390
    :cond_5
    const/4 v0, 0x1

    if-eqz p0, :cond_18

    .line 391
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    .line 392
    if-ltz p0, :cond_18

    add-int/2addr p0, v0

    if-ge p0, p2, :cond_18

    .line 393
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 396
    :cond_18
    const/4 p0, 0x0

    aput-boolean v0, p3, p0

    .line 397
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private static greylist-max-o getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 420
    if-nez p1, :cond_a

    .line 424
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 427
    :cond_a
    invoke-interface {p2, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    .line 428
    if-ltz p1, :cond_1b

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p3, :cond_1b

    .line 430
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 435
    :cond_1b
    return-object p0
.end method

.method private static blacklist getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I[Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 402
    const/4 v0, 0x2

    if-ge p2, v0, :cond_5

    .line 403
    const/4 p0, 0x0

    return-object p0

    .line 405
    :cond_5
    const/4 v0, 0x1

    if-eqz p0, :cond_16

    .line 406
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 407
    if-lez p0, :cond_16

    .line 408
    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 411
    :cond_16
    const/4 p0, 0x0

    aput-boolean v0, p3, p0

    .line 412
    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private static greylist-max-o getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 443
    if-nez p1, :cond_b

    .line 447
    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 450
    :cond_b
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 451
    if-lez p1, :cond_1a

    .line 453
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 458
    :cond_1a
    return-object p0
.end method

.method private greylist-max-o isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 7

    .line 779
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p4, :sswitch_data_4a

    .line 789
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 787
    :sswitch_d
    iget p4, p3, Landroid/graphics/Rect;->top:I

    if-lt p4, p2, :cond_1a

    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-gt p2, p1, :cond_1a

    iget p2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0

    .line 783
    :sswitch_1c
    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-lt p4, p1, :cond_29

    iget p1, p3, Landroid/graphics/Rect;->top:I

    if-gt p1, p2, :cond_29

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 785
    :sswitch_2b
    iget p4, p3, Landroid/graphics/Rect;->top:I

    if-gt p4, p2, :cond_38

    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-gt p2, p1, :cond_38

    iget p2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, p2, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0

    .line 781
    :sswitch_3a
    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-gt p4, p1, :cond_47

    iget p1, p3, Landroid/graphics/Rect;->top:I

    if-gt p1, p2, :cond_47

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p1, :cond_47

    goto :goto_48

    :cond_47
    move v0, v1

    :goto_48
    return v0

    nop

    :sswitch_data_4a
    .sparse-switch
        0x11 -> :sswitch_3a
        0x21 -> :sswitch_2b
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method private static final greylist-max-o isValidId(I)Z
    .registers 2

    .line 794
    if-eqz p0, :cond_7

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 59
    :goto_11
    return-object p0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 62
    :goto_11
    return-object p0
.end method

.method static greylist-max-o majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    .line 624
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static greylist-max-o majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 628
    sparse-switch p0, :sswitch_data_24

    .line 638
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 636
    :sswitch_b
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0

    .line 632
    :sswitch_11
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    return p0

    .line 634
    :sswitch_17
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0

    .line 630
    :sswitch_1d
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    return p0

    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_1d
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method static greylist-max-o majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    .line 649
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static greylist-max-o majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 653
    sparse-switch p0, :sswitch_data_24

    .line 663
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 661
    :sswitch_b
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0

    .line 657
    :sswitch_11
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    return p0

    .line 659
    :sswitch_17
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    return p0

    .line 655
    :sswitch_1d
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    return p0

    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_1d
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method static greylist-max-o minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 676
    sparse-switch p0, :sswitch_data_3c

    .line 690
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 686
    :sswitch_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 688
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p0, p1

    .line 686
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 680
    :sswitch_23
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 681
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 682
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p0, p1

    .line 680
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_23
        0x21 -> :sswitch_b
        0x42 -> :sswitch_23
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5

    .line 334
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    .line 336
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    return-void
.end method

.method private greylist-max-o setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 4

    .line 340
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 341
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 342
    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    return-void
.end method

.method public static blacklist sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .registers 12

    .line 889
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, v0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder$FocusSorter;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 890
    return-void
.end method


# virtual methods
.method greylist-max-o beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 512
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 515
    const/4 v2, 0x0

    if-nez v1, :cond_2c

    if-nez v0, :cond_e

    goto :goto_2c

    .line 525
    :cond_e
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 526
    return v1

    .line 530
    :cond_16
    const/16 v0, 0x11

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1f

    goto :goto_2b

    .line 538
    :cond_1f
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p3

    .line 539
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    if-ge p3, p1, :cond_2a

    move v2, v1

    .line 538
    :cond_2a
    return v2

    .line 531
    :cond_2b
    :goto_2b
    return v1

    .line 516
    :cond_2c
    :goto_2c
    return v2
.end method

.method greylist-max-o beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_2c

    .line 596
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :sswitch_d
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-le p1, v2, :cond_1a

    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0

    .line 591
    :sswitch_1c
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-le p1, v2, :cond_29

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x11 -> :sswitch_1c
        0x21 -> :sswitch_d
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method public whitelist findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 24

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v5

    .line 707
    nop

    .line 708
    nop

    .line 710
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 712
    iget-object v7, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v7

    .line 714
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 715
    iget-object v9, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 717
    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v12

    const v14, 0x7fffffff

    :goto_2b
    if-ge v13, v6, :cond_95

    .line 718
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 721
    invoke-virtual {v15, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 723
    const/4 v10, 0x1

    invoke-virtual {v1, v15, v9, v10, v10}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 725
    invoke-direct {v0, v2, v3, v9, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v16

    if-nez v16, :cond_41

    .line 726
    goto :goto_92

    .line 729
    :cond_41
    nop

    .line 731
    sparse-switch v4, :sswitch_data_96

    move/from16 v16, v10

    const v10, 0x7fffffff

    goto :goto_67

    .line 742
    :sswitch_4b
    move/from16 v16, v10

    iget v10, v9, Landroid/graphics/Rect;->top:I

    goto :goto_67

    .line 736
    :sswitch_50
    move/from16 v16, v10

    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 737
    goto :goto_67

    .line 739
    :sswitch_55
    move/from16 v16, v10

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    add-int/lit8 v10, v10, 0x1

    .line 740
    goto :goto_67

    .line 733
    :sswitch_5e
    move/from16 v16, v10

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int v10, v2, v10

    add-int/lit8 v10, v10, 0x1

    .line 734
    nop

    .line 746
    :goto_67
    if-ge v10, v7, :cond_92

    .line 748
    if-eqz v11, :cond_79

    .line 749
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_79

    .line 750
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_92

    if-ge v10, v14, :cond_92

    .line 751
    :cond_79
    nop

    .line 752
    nop

    .line 753
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 754
    sparse-switch v4, :sswitch_data_a8

    goto :goto_90

    .line 765
    :sswitch_82
    aput v10, p5, v16

    goto :goto_90

    .line 759
    :sswitch_85
    aput v10, p5, v12

    .line 760
    goto :goto_90

    .line 762
    :sswitch_88
    neg-int v11, v10

    aput v11, p5, v16

    .line 763
    goto :goto_90

    .line 756
    :sswitch_8c
    neg-int v11, v10

    aput v11, p5, v12

    .line 757
    nop

    .line 717
    :goto_90
    move v14, v10

    move-object v11, v15

    :cond_92
    :goto_92
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    .line 771
    :cond_95
    return-object v11

    :sswitch_data_96
    .sparse-switch
        0x11 -> :sswitch_5e
        0x21 -> :sswitch_55
        0x42 -> :sswitch_50
        0x82 -> :sswitch_4b
    .end sparse-switch

    :sswitch_data_a8
    .sparse-switch
        0x11 -> :sswitch_8c
        0x21 -> :sswitch_88
        0x42 -> :sswitch_85
        0x82 -> :sswitch_82
    .end sparse-switch
.end method

.method public final whitelist findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 5

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 5

    .line 92
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    const/4 p2, 0x0

    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    const/4 v0, 0x0

    sparse-switch p5, :sswitch_data_70

    goto :goto_3c

    .line 361
    :sswitch_a
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3c

    .line 355
    :sswitch_17
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 356
    goto :goto_3c

    .line 358
    :sswitch_24
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    goto :goto_3c

    .line 352
    :sswitch_30
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 353
    nop

    .line 364
    :goto_3c
    nop

    .line 366
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 367
    const/4 v2, 0x0

    :goto_42
    if-ge v0, v1, :cond_6e

    .line 368
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 371
    if-eq v3, p3, :cond_6b

    if-ne v3, p2, :cond_4f

    goto :goto_6b

    .line 374
    :cond_4f
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 375
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 377
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 378
    iget-object v2, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 379
    move-object v2, v3

    .line 367
    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 382
    :cond_6e
    return-object v2

    nop

    :sswitch_data_70
    .sparse-switch
        0x11 -> :sswitch_30
        0x21 -> :sswitch_24
        0x42 -> :sswitch_17
        0x82 -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 7

    .line 161
    nop

    .line 162
    if-eqz p2, :cond_a

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_b

    .line 165
    return-object v0

    .line 162
    :cond_a
    const/4 v0, 0x0

    .line 169
    :cond_b
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 171
    :try_start_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {p1, v1, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 174
    invoke-direct {p0, p1, p2, v1, p3}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_22

    .line 178
    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    nop

    .line 180
    return-object v0

    .line 178
    :catchall_22
    move-exception p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    throw p1
.end method

.method greylist-max-o getWeightedDistanceFor(JJ)J
    .registers 7

    .line 548
    const-wide/16 v0, 0xd

    mul-long/2addr v0, p1

    mul-long/2addr v0, p1

    mul-long/2addr p3, p3

    add-long/2addr v0, p3

    return-wide v0
.end method

.method greylist-max-o isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 12

    .line 475
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 476
    return v1

    .line 481
    :cond_8
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 482
    return v2

    .line 486
    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 487
    return v2

    .line 491
    :cond_17
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 492
    return v1

    .line 496
    :cond_1e
    nop

    .line 497
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v3, v0

    .line 498
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p3

    int-to-long v5, p3

    .line 496
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v3

    .line 500
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p3

    int-to-long v5, p3

    .line 501
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    int-to-long p1, p1

    .line 499
    invoke-virtual {p0, v5, v6, p1, p2}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-gez p1, :cond_40

    move v1, v2

    .line 496
    :cond_40
    return v1
.end method

.method greylist-max-o isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 7

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_62

    .line 575
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :sswitch_d
    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-lt p3, v2, :cond_19

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-gt p3, v2, :cond_20

    :cond_19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    return v0

    .line 566
    :sswitch_22
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-lt p3, v2, :cond_2e

    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-gt p3, v2, :cond_35

    :cond_2e
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0

    .line 569
    :sswitch_37
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p3, v2, :cond_43

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-lt p3, v2, :cond_4a

    :cond_43
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :goto_4b
    return v0

    .line 563
    :sswitch_4c
    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-gt p3, v2, :cond_58

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-lt p3, v2, :cond_5f

    :cond_58
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-le p1, p2, :cond_5f

    goto :goto_60

    :cond_5f
    move v0, v1

    :goto_60
    return v0

    nop

    :sswitch_data_62
    .sparse-switch
        0x11 -> :sswitch_4c
        0x21 -> :sswitch_37
        0x42 -> :sswitch_22
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method greylist-max-o isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .line 604
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_32

    .line 614
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 612
    :sswitch_d
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    if-gt p1, p2, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0

    .line 608
    :sswitch_16
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-gt p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 610
    :sswitch_1f
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    if-lt p1, p2, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 606
    :sswitch_28
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    if-lt p1, p2, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x11 -> :sswitch_28
        0x21 -> :sswitch_1f
        0x42 -> :sswitch_16
        0x82 -> :sswitch_d
    .end sparse-switch
.end method
