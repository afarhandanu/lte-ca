.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;,
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDataSetObserver:Landroid/database/DataSetObserver;

.field private greylist-max-o mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private greylist-max-o mMaxExpGroupCount:I

.field private greylist-max-o mTotalExpChildrenCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrefreshExpGroupMetadataList(Landroid/widget/ExpandableListConnector;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 70
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    return-void
.end method

.method private greylist-max-o refreshExpGroupMetadataList(ZZ)V
    .registers 12

    .line 520
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 522
    nop

    .line 525
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 527
    const/4 v3, -0x1

    if-eqz p2, :cond_39

    .line 529
    nop

    .line 531
    add-int/lit8 p2, v1, -0x1

    move v4, v2

    :goto_11
    if-ltz p2, :cond_34

    .line 532
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 533
    iget-wide v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v8, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v6

    .line 534
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v6, v7, :cond_31

    .line 535
    if-ne v6, v3, :cond_2c

    .line 537
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    add-int/lit8 v1, v1, -0x1

    .line 541
    :cond_2c
    iput v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 542
    if-nez v4, :cond_31

    const/4 v4, 0x1

    .line 531
    :cond_31
    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    .line 546
    :cond_34
    if-eqz v4, :cond_39

    .line 548
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 553
    :cond_39
    nop

    .line 554
    move p2, v2

    move v4, p2

    :goto_3c
    if-ge v2, v1, :cond_6c

    .line 556
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 562
    iget v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v6, v3, :cond_51

    if-eqz p1, :cond_4b

    goto :goto_51

    .line 568
    :cond_4b
    iget v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v6, v7

    goto :goto_59

    .line 563
    :cond_51
    :goto_51
    iget-object v6, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 572
    :goto_59
    iget v7, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v6

    iput v7, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 579
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v7, v4

    add-int/2addr p2, v7

    .line 580
    iget v4, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 583
    iput p2, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 584
    add-int/2addr p2, v6

    .line 585
    iput p2, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 587
    :cond_6c
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method greylist-max-o collapseGroup(I)Z
    .registers 4

    .line 595
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 597
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 598
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 599
    if-nez v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 601
    :cond_11
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result p1

    .line 602
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 603
    return p1
.end method

.method greylist-max-o collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .registers 5

    .line 616
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 619
    :cond_6
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 625
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 628
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget p1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 630
    const/4 p1, 0x1

    return p1
.end method

.method greylist-max-o expandGroup(I)Z
    .registers 4

    .line 638
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 640
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 641
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 642
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result p1

    .line 643
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 644
    return p1
.end method

.method greylist-max-o expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .registers 8

    .line 652
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-ltz v0, :cond_60

    .line 657
    iget v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 660
    :cond_c
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_11

    return v1

    .line 663
    :cond_11
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_38

    .line 667
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 669
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 671
    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 674
    iget v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v0, v2, :cond_38

    .line 675
    iget v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 679
    :cond_38
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 683
    invoke-interface {v2, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    .line 679
    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 685
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 691
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 694
    iget-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 696
    return v3

    .line 654
    :cond_60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Need group"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o findGroupPosition(JI)I
    .registers 16

    .line 779
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 781
    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 782
    return v1

    .line 786
    :cond_a
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_11

    .line 787
    return v1

    .line 791
    :cond_11
    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 792
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    .line 799
    nop

    .line 802
    nop

    .line 805
    nop

    .line 815
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v6

    .line 816
    if-nez v6, :cond_2d

    .line 817
    return v1

    .line 816
    :cond_2d
    move v7, p3

    move v8, v7

    move v9, v2

    .line 820
    :cond_30
    :goto_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-gtz v10, :cond_69

    .line 821
    invoke-interface {v6, p3}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 822
    cmp-long v10, v10, p1

    if-nez v10, :cond_41

    .line 824
    return p3

    .line 827
    :cond_41
    if-ne v7, v0, :cond_45

    move v10, v3

    goto :goto_46

    :cond_45
    move v10, v2

    .line 828
    :goto_46
    if-nez v8, :cond_4a

    move v11, v3

    goto :goto_4b

    :cond_4a
    move v11, v2

    .line 830
    :goto_4b
    if-eqz v10, :cond_50

    if-eqz v11, :cond_50

    .line 832
    goto :goto_69

    .line 835
    :cond_50
    if-nez v11, :cond_63

    if-eqz v9, :cond_57

    if-nez v10, :cond_57

    goto :goto_63

    .line 841
    :cond_57
    if-nez v10, :cond_5d

    if-nez v9, :cond_30

    if-nez v11, :cond_30

    .line 843
    :cond_5d
    add-int/lit8 v8, v8, -0x1

    .line 844
    nop

    .line 846
    move v9, v3

    move p3, v8

    goto :goto_30

    .line 837
    :cond_63
    :goto_63
    add-int/lit8 v7, v7, 0x1

    .line 838
    nop

    .line 840
    move v9, v2

    move p3, v7

    goto :goto_30

    .line 851
    :cond_69
    :goto_69
    return v1
.end method

.method greylist-max-o getAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 397
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 3

    .line 729
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 730
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_f

    .line 731
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    .line 733
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 18

    .line 259
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 263
    nop

    .line 264
    add-int/lit8 v3, v2, -0x1

    .line 265
    nop

    .line 268
    if-nez v2, :cond_1f

    .line 274
    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v5, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v6, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v7, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 268
    :cond_1f
    const/4 v2, 0x0

    move v9, v2

    .line 283
    :goto_21
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gt v9, v3, :cond_76

    .line 284
    sub-int v2, v3, v9

    div-int/2addr v2, v5

    add-int v15, v2, v9

    .line 285
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 287
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v7, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v7, :cond_3c

    .line 291
    add-int/lit8 v9, v15, 0x1

    move v2, v15

    goto :goto_21

    .line 292
    :cond_3c
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v7, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v7, :cond_46

    .line 296
    add-int/lit8 v3, v15, -0x1

    move v2, v15

    goto :goto_21

    .line 297
    :cond_46
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v7, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v7, :cond_74

    .line 302
    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v1, v5, :cond_5d

    .line 304
    iget v10, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v11, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v12, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v13, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v10 .. v15}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 306
    :cond_5d
    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v1, v6, :cond_73

    .line 308
    iget v1, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v2, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v1, v2

    add-int/lit8 v10, v1, 0x1

    iget v11, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v12, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v13, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v10 .. v15}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 312
    :cond_73
    return-object v4

    .line 297
    :cond_74
    move v2, v15

    goto :goto_21

    .line 321
    :cond_76
    iget v7, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v7, v5, :cond_7b

    .line 323
    return-object v4

    .line 331
    :cond_7b
    if-le v9, v2, :cond_9a

    .line 342
    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 343
    iget v2, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v1

    add-int v4, v2, v3

    .line 347
    iget v5, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v6, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v7, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 349
    :cond_9a
    if-ge v3, v2, :cond_b8

    .line 357
    add-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 358
    iget v2, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 361
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 364
    :cond_b8
    return-object v4
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 5

    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 404
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 405
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 406
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    .line 407
    :cond_16
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 408
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .line 415
    :goto_2b
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 417
    return-object v0

    .line 412
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getItemId(I)J
    .registers 7

    .line 421
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 422
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    .line 425
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 426
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    goto :goto_38

    .line 427
    :cond_1c
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 428
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v2

    .line 430
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    .line 431
    nop

    .line 436
    :goto_38
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 438
    return-wide v0

    .line 433
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getItemViewType(I)I
    .registers 6

    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 466
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 469
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    const/4 v2, 0x2

    if-eqz v1, :cond_2a

    .line 470
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v1, Landroid/widget/HeterogeneousExpandableList;

    .line 472
    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v3, v2, :cond_1c

    .line 473
    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v0

    goto :goto_29

    .line 475
    :cond_1c
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v0}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v0

    .line 476
    invoke-interface {v1}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :goto_29
    goto :goto_31

    .line 479
    :cond_2a
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v2, :cond_30

    .line 480
    const/4 v0, 0x0

    goto :goto_31

    .line 482
    :cond_30
    const/4 v0, 0x1

    .line 486
    :goto_31
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 488
    return v0
.end method

.method greylist-max-o getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 11

    .line 109
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 113
    nop

    .line 114
    add-int/lit8 v2, v1, -0x1

    .line 115
    nop

    .line 118
    if-nez v1, :cond_17

    .line 124
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v6, -0x1

    move v5, p1

    move v3, p1

    invoke-static/range {v3 .. v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 118
    :cond_17
    move v3, p1

    const/4 p1, 0x0

    move v1, p1

    .line 140
    :goto_1a
    if-gt p1, v2, :cond_5d

    .line 141
    sub-int v1, v2, p1

    div-int/lit8 v1, v1, 0x2

    add-int v5, v1, p1

    .line 144
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 146
    iget v1, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-le v3, v1, :cond_31

    .line 151
    add-int/lit8 p1, v5, 0x1

    move v1, v5

    goto :goto_1a

    .line 152
    :cond_31
    iget v1, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ge v3, v1, :cond_39

    .line 157
    add-int/lit8 v2, v5, -0x1

    move v1, v5

    goto :goto_1a

    .line 158
    :cond_39
    iget v1, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v3, v1, :cond_47

    .line 163
    iget v2, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v0, v3

    const/4 v3, -0x1

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 165
    :cond_47
    iget v1, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-gt v3, v1, :cond_5b

    .line 175
    iget p1, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 p1, p1, 0x1

    sub-int p1, v3, p1

    .line 176
    const/4 v1, 0x1

    iget v2, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v0, v3

    move v3, p1

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 165
    :cond_5b
    move v1, v5

    goto :goto_1a

    .line 192
    :cond_5d
    nop

    .line 195
    nop

    .line 202
    if-le p1, v1, :cond_74

    .line 210
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 212
    nop

    .line 218
    iget v1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, v3, v1

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int/2addr v1, v0

    .line 220
    move v5, p1

    move v2, v1

    goto :goto_87

    :cond_74
    if-ge v2, v1, :cond_90

    .line 227
    add-int/lit8 p1, v2, 0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 229
    nop

    .line 237
    iget v1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v0, v3

    sub-int/2addr v1, v0

    .line 238
    move v5, p1

    move v2, v1

    .line 243
    :goto_87
    move v0, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 240
    :cond_90
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 445
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 446
    iget-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 447
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    .line 446
    invoke-interface {p1, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3b

    .line 448
    :cond_1a
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 449
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    move v6, v2

    .line 451
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 453
    nop

    .line 458
    :goto_3b
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 460
    return-object p1

    .line 455
    :cond_3f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Flat list position is of unknown type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getViewTypeCount()I
    .registers 3

    .line 493
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v0, :cond_14

    .line 494
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 496
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 498
    :cond_14
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 763
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 5

    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 376
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 379
    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 380
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    goto :goto_17

    .line 383
    :cond_16
    nop

    .line 386
    :goto_17
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 388
    return v2
.end method

.method public greylist-max-o isGroupExpanded(I)Z
    .registers 5

    .line 706
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 707
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 709
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_17

    .line 710
    return v1

    .line 706
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 714
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 4

    .line 87
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 91
    :cond_b
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 92
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    return-void
.end method

.method greylist-max-o setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 743
    if-eqz p1, :cond_2a

    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_7

    goto :goto_2a

    .line 749
    :cond_7
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 750
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_13
    if-ltz v1, :cond_23

    .line 751
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_20

    .line 753
    return-void

    .line 750
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 757
    :cond_23
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 758
    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 759
    return-void

    .line 744
    :cond_2a
    :goto_2a
    return-void
.end method

.method public greylist-max-o setMaxExpGroupCount(I)V
    .registers 2

    .line 721
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 722
    return-void
.end method
