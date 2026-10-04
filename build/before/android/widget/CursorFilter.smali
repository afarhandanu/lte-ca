.class Landroid/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field greylist-max-o mClient:Landroid/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/CursorFilter$CursorFilterClient;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 44
    iget-object v0, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4

    .line 49
    iget-object v0, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0, p1}, Landroid/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    .line 51
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 52
    if-eqz p1, :cond_16

    .line 53
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 54
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1c

    .line 56
    :cond_16
    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 57
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 59
    :goto_1c
    return-object v0
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 64
    iget-object p1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    invoke-interface {p1}, Landroid/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 66
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v0, p1, :cond_17

    .line 67
    iget-object p1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p1, p2}, Landroid/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 69
    :cond_17
    return-void
.end method
