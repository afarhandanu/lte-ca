.class public Landroid/widget/SimpleCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorAdapter$ViewBinder;,
        Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    }
.end annotation


# instance fields
.field private greylist-max-o mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected greylist-max-p mFrom:[I

.field greylist-max-o mOriginalFrom:[Ljava/lang/String;

.field private greylist-max-o mStringConversionColumn:I

.field protected greylist mTo:[I

.field private greylist-max-o mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 83
    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 84
    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 85
    invoke-direct {p0, p3, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 7

    .line 108
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 66
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 109
    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 110
    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 111
    invoke-direct {p0, p3, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private greylist-max-o findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 7

    .line 330
    if-eqz p1, :cond_21

    .line 332
    array-length v0, p2

    .line 333
    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v1, v1

    if-eq v1, v0, :cond_10

    .line 334
    :cond_c
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 336
    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_20

    .line 337
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 339
    :cond_20
    goto :goto_24

    .line 340
    :cond_21
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 342
    :goto_24
    return-void
.end method


# virtual methods
.method public whitelist bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12

    .line 140
    iget-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 141
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    array-length v0, v0

    .line 142
    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 143
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 145
    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v0, :cond_64

    .line 146
    aget v5, v2, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_61

    .line 148
    nop

    .line 149
    if-eqz p2, :cond_1f

    .line 150
    aget v6, v1, v4

    invoke-interface {p2, v5, p3, v6}, Landroid/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v6

    goto :goto_20

    .line 149
    :cond_1f
    move v6, v3

    .line 153
    :goto_20
    if-nez v6, :cond_61

    .line 154
    aget v6, v1, v4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 155
    if-nez v6, :cond_2c

    .line 156
    const-string v6, ""

    .line 159
    :cond_2c
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_36

    .line 160
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, v5, v6}, Landroid/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_61

    .line 161
    :cond_36
    instance-of v7, v5, Landroid/widget/ImageView;

    if-eqz v7, :cond_40

    .line 162
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v6}, Landroid/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_61

    .line 164
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_61
    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 170
    :cond_64
    return-void
.end method

.method public whitelist changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 4

    .line 365
    iput-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 370
    iget-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 371
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    return-void
.end method

.method public whitelist convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    .line 313
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 315
    :cond_b
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    .line 316
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 319
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCursorToStringConverter()Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    .registers 2

    .line 281
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public whitelist getStringConversionColumn()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public whitelist getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public whitelist setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .registers 2

    .line 297
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 298
    return-void
.end method

.method public whitelist setStringConversionColumn(I)V
    .registers 2

    .line 265
    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 266
    return-void
.end method

.method public whitelist setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V
    .registers 2

    .line 194
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 195
    return-void
.end method

.method public whitelist setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    .line 214
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 217
    goto :goto_10

    .line 215
    :catch_8
    move-exception v0

    .line 216
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 218
    :goto_10
    return-void
.end method

.method public whitelist setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public whitelist swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3

    .line 349
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
