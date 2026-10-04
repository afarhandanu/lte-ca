.class public interface abstract Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.super Ljava/lang/Object;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteViewsFactory"
.end annotation


# virtual methods
.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getItemId(I)J
.end method

.method public abstract whitelist getLoadingView()Landroid/widget/RemoteViews;
.end method

.method public blacklist getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 19

    .line 134
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v2

    .line 139
    :try_start_a
    new-instance v3, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 141
    nop

    .line 143
    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 144
    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v4

    .line 146
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :goto_1e
    if-ge v7, v4, :cond_63

    .line 147
    invoke-interface {v0, v7}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v8

    .line 148
    invoke-interface {v0, v7}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v10

    .line 149
    if-nez v10, :cond_2f

    .line 150
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasLegacyNullItems(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 151
    goto :goto_63

    .line 153
    :cond_2f
    invoke-virtual {v10, v1, v5}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    move/from16 v12, p1

    if-le v11, v12, :cond_3b

    .line 155
    goto :goto_63

    .line 157
    :cond_3b
    if-nez v6, :cond_47

    .line 158
    new-instance v6, Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/widget/RemoteViews$BitmapCache;)V

    goto :goto_4e

    .line 160
    :cond_47
    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/RemoteViews$BitmapCache;->mergeWithCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 162
    :goto_4e
    invoke-virtual {v6}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()J

    move-result-wide v13

    move/from16 v11, p2

    move-object v15, v6

    int-to-long v5, v11

    cmp-long v5, v13, v5

    if-ltz v5, :cond_5b

    .line 163
    goto :goto_63

    .line 166
    :cond_5b
    invoke-virtual {v3, v8, v9, v10}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 146
    add-int/lit8 v7, v7, 0x1

    move-object v6, v15

    const/4 v5, 0x0

    goto :goto_1e

    .line 168
    :cond_63
    :goto_63
    invoke-virtual {v3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0
    :try_end_67
    .catchall {:try_start_a .. :try_end_67} :catchall_6e

    .line 170
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    return-object v0

    .line 170
    :catchall_6e
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v0
.end method

.method public abstract whitelist getViewAt(I)Landroid/widget/RemoteViews;
.end method

.method public abstract whitelist getViewTypeCount()I
.end method

.method public abstract whitelist hasStableIds()Z
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDataSetChanged()V
.end method

.method public abstract whitelist onDestroy()V
.end method
