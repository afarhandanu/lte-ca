.class Landroid/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# static fields
.field private static final greylist-max-o STATE_REQUEST_FOCUS:I = 0x3

.field private static final greylist-max-o STATE_SET_SELECTION:I = 0x1

.field private static final greylist-max-o STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private greylist-max-o mAction:I

.field private greylist-max-o mPosition:I

.field private greylist-max-o mPositionTop:I

.field final synthetic blacklist this$0:Landroid/widget/ListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1256
    iput-object p1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ListView;Landroid/widget/ListView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method greylist-max-o onLayoutComplete()V
    .registers 3

    .line 1299
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1300
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1302
    :cond_8
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 1277
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1278
    iget-object v0, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1279
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    goto :goto_2c

    .line 1280
    :cond_12
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 1281
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1282
    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_29

    .line 1284
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1286
    :cond_29
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1288
    :cond_2c
    :goto_2c
    return-void
.end method

.method greylist-max-o setupFocusIfValid(I)Ljava/lang/Runnable;
    .registers 4

    .line 1291
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    if-eq p1, v0, :cond_a

    goto :goto_e

    .line 1294
    :cond_a
    const/4 p1, 0x3

    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1295
    return-object p0

    .line 1292
    :cond_e
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist-max-o setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;
    .registers 3

    .line 1270
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 1271
    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    .line 1272
    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1273
    return-object p0
.end method
