.class public final Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews$RemoteCollectionItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHasLegacyNullItems:Z

.field private blacklist mHasStableIds:Z

.field private final blacklist mIds:Landroid/util/LongArray;

.field private blacklist mViewTypeCount:I

.field private final blacklist mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 10064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10065
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    .line 10066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 5

    .line 10082
    if-eqz p3, :cond_1b

    .line 10083
    invoke-static {p3}, Landroid/widget/RemoteViews;->-$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 10088
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    .line 10089
    iget-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10090
    return-object p0

    .line 10084
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RemoteViews used in a RemoteCollectionItems cannot specify separate layouts for orientations or sizes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10082
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist build()Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 9

    .line 10136
    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1f

    .line 10139
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;-><init>()V

    .line 10140
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 10141
    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    .line 10142
    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 10144
    :cond_1f
    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems;

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mIds:Landroid/util/LongArray;

    .line 10145
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v3

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViews:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/widget/RemoteViews;

    .line 10146
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/widget/RemoteViews;

    iget-boolean v5, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 10148
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-boolean v7, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasLegacyNullItems:Z

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>([J[Landroid/widget/RemoteViews;ZIZ)V

    .line 10144
    return-object v2
.end method

.method public blacklist setHasLegacyNullItems(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2

    .line 10129
    iput-boolean p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasLegacyNullItems:Z

    .line 10130
    return-object p0
.end method

.method public whitelist setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2

    .line 10100
    iput-boolean p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mHasStableIds:Z

    .line 10101
    return-object p0
.end method

.method public whitelist setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .registers 2

    .line 10117
    iput p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->mViewTypeCount:I

    .line 10118
    return-object p0
.end method
