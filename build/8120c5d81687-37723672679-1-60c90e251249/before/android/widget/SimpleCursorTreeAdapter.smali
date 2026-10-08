.class public abstract Landroid/widget/SimpleCursorTreeAdapter;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SimpleCursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private greylist-max-o mChildFrom:[I

.field private greylist-max-o mChildFromNames:[Ljava/lang/String;

.field private greylist-max-o mChildTo:[I

.field private greylist-max-o mGroupFrom:[I

.field private greylist-max-o mGroupFromNames:[Ljava/lang/String;

.field private greylist-max-o mGroupTo:[I

.field private greylist-max-o mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[III[Ljava/lang/String;[I)V
    .registers 18

    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    .line 107
    move-object/from16 p1, p9

    move-object/from16 p2, p10

    invoke-direct {p0, p5, p6, p1, p2}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 108
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .registers 16

    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;III)V

    .line 143
    invoke-direct {p0, p5, p6, p8, p9}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 144
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .registers 9

    .line 175
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 176
    invoke-direct {p0, p4, p5, p7, p8}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 177
    return-void
.end method

.method private greylist-max-o bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V
    .registers 11

    .line 213
    iget-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    .line 215
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    array-length v2, p5

    if-ge v1, v2, :cond_45

    .line 216
    aget v2, p5, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_42

    .line 218
    nop

    .line 219
    if-eqz p2, :cond_19

    .line 220
    aget v3, p4, v1

    invoke-interface {p2, v2, p3, v3}, Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v3

    goto :goto_1a

    .line 219
    :cond_19
    move v3, v0

    .line 223
    :goto_1a
    if-nez v3, :cond_42

    .line 224
    aget v3, p4, v1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    if-nez v3, :cond_26

    .line 226
    const-string v3, ""

    .line 228
    :cond_26
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_30

    .line 229
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_42

    .line 230
    :cond_30
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_3a

    .line 231
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_42

    .line 233
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SimpleCursorTreeAdapter can bind values only to TextView and ImageView!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 239
    :cond_45
    return-void
.end method

.method private greylist-max-o init([Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .registers 5

    .line 182
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    .line 183
    iput-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    .line 185
    iput-object p3, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    .line 186
    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    .line 187
    return-void
.end method

.method private greylist-max-o initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 6

    .line 242
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_10

    .line 243
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    aput v1, p3, v0

    .line 242
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 245
    :cond_10
    return-void
.end method


# virtual methods
.method protected whitelist bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 12

    .line 249
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    if-nez p4, :cond_12

    .line 250
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    array-length p4, p4

    new-array p4, p4, [I

    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    .line 251
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    invoke-direct {p0, p3, p4, v0}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 254
    :cond_12
    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    iget-object v6, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    .line 255
    return-void
.end method

.method protected whitelist bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 12

    .line 259
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    if-nez p4, :cond_12

    .line 260
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    array-length p4, p4

    new-array p4, p4, [I

    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    .line 261
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    invoke-direct {p0, p3, p4, v0}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 264
    :cond_12
    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    iget-object v6, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    .line 265
    return-void
.end method

.method public whitelist getViewBinder()Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    return-object v0
.end method

.method public whitelist setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V
    .registers 2

    .line 209
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    .line 210
    return-void
.end method

.method protected whitelist setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    .line 277
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 280
    goto :goto_10

    .line 278
    :catch_8
    move-exception v0

    .line 279
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 281
    :goto_10
    return-void
.end method

.method public whitelist setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 295
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method
