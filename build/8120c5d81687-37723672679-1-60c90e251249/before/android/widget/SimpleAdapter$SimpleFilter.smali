.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SimpleAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 15

    .line 366
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 368
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v1}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 369
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v3}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmData(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Landroid/widget/SimpleAdapter;->-$$Nest$fputmUnfilteredData(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)V

    .line 372
    :cond_1d
    if-eqz p1, :cond_8d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_26

    goto :goto_8d

    .line 377
    :cond_26
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 379
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v1}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 382
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    const/4 v4, 0x0

    move v5, v4

    :goto_3f
    if-ge v5, v2, :cond_84

    .line 385
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 386
    if-eqz v6, :cond_81

    .line 388
    iget-object v7, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v7}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmTo(Landroid/widget/SimpleAdapter;)[I

    move-result-object v7

    array-length v7, v7

    .line 390
    move v8, v4

    :goto_51
    if-ge v8, v7, :cond_81

    .line 391
    iget-object v9, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v9}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmFrom(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 393
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 394
    array-length v10, v9

    .line 396
    move v11, v4

    :goto_69
    if-ge v11, v10, :cond_7e

    .line 397
    aget-object v12, v9, v11

    .line 399
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 400
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    goto :goto_7e

    .line 396
    :cond_7b
    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    .line 390
    :cond_7e
    :goto_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 384
    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 408
    :cond_84
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 409
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_9c

    .line 373
    :cond_8d
    :goto_8d
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {p1}, Landroid/widget/SimpleAdapter;->-$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    .line 374
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 375
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 376
    nop

    .line 412
    :goto_9c
    return-object v0
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 418
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Landroid/widget/SimpleAdapter;->-$$Nest$fputmData(Landroid/widget/SimpleAdapter;Ljava/util/List;)V

    .line 419
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_13

    .line 420
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_18

    .line 422
    :cond_13
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    .line 424
    :goto_18
    return-void
.end method
