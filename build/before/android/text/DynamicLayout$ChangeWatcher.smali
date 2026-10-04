.class Landroid/text/DynamicLayout$ChangeWatcher;
.super Ljava/lang/Object;
.source "DynamicLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private greylist-max-o mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/text/DynamicLayout;)V
    .registers 3

    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    .line 1229
    return-void
.end method

.method private greylist-max-o reflow(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1232
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 1234
    if-eqz v0, :cond_e

    .line 1235
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    goto :goto_17

    .line 1236
    :cond_e
    instance-of p2, p1, Landroid/text/Spannable;

    if-eqz p2, :cond_17

    .line 1237
    check-cast p1, Landroid/text/Spannable;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1239
    :cond_17
    :goto_17
    return-void
.end method

.method private blacklist transformAndReflow(Landroid/text/Spannable;II)V
    .registers 6

    .line 1299
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 1300
    if-eqz v0, :cond_21

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_21

    .line 1301
    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/method/OffsetMapping;

    .line 1302
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/text/method/OffsetMapping;->originalToTransformed(II)I

    move-result p2

    .line 1304
    invoke-interface {v0, p3, v1}, Landroid/text/method/OffsetMapping;->originalToTransformed(II)I

    move-result p3

    .line 1307
    :cond_21
    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 1308
    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 1289
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1242
    iget-object p1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/DynamicLayout;

    .line 1243
    if-eqz p1, :cond_35

    invoke-static {p1}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/OffsetMapping;

    if-eqz v0, :cond_35

    .line 1244
    invoke-static {p1}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/method/OffsetMapping;

    .line 1245
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    if-nez v0, :cond_24

    .line 1246
    new-instance v0, Landroid/text/method/OffsetMapping$TextUpdate;

    invoke-direct {v0, p2, p3, p4}, Landroid/text/method/OffsetMapping$TextUpdate;-><init>(III)V

    iput-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    goto :goto_30

    .line 1248
    :cond_24
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iput p2, v0, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    .line 1249
    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iput p3, p2, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    .line 1250
    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iput p4, p2, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    .line 1262
    :goto_30
    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    invoke-interface {p1, p2}, Landroid/text/method/OffsetMapping;->originalToTransformed(Landroid/text/method/OffsetMapping$TextUpdate;)V

    .line 1264
    :cond_35
    return-void
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5

    .line 1311
    instance-of p2, p2, Landroid/text/style/UpdateLayout;

    if-eqz p2, :cond_7

    .line 1312
    invoke-direct {p0, p1, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    .line 1314
    :cond_7
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8

    .line 1339
    instance-of p2, p2, Landroid/text/style/UpdateLayout;

    if-eqz p2, :cond_45

    .line 1340
    const/4 p2, 0x0

    if-le p3, p4, :cond_8

    .line 1343
    move p3, p2

    .line 1345
    :cond_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1346
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 1347
    if-eqz v0, :cond_36

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/OffsetMapping;

    if-eqz v0, :cond_36

    .line 1351
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeCrashUpdateLayoutSpan()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 1352
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    goto :goto_3e

    .line 1354
    :cond_2e
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p3

    invoke-direct {p0, p1, p2, p2, p3}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    goto :goto_3e

    .line 1357
    :cond_36
    sub-int/2addr p4, p3

    invoke-direct {p0, p1, p3, p4, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 1358
    sub-int/2addr p6, p5

    invoke-direct {p0, p1, p5, p6, p6}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 1360
    :goto_3e
    goto :goto_45

    .line 1361
    :cond_3f
    invoke-direct {p0, p1, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    .line 1362
    invoke-direct {p0, p1, p5, p6}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    .line 1365
    :cond_45
    :goto_45
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5

    .line 1317
    instance-of p2, p2, Landroid/text/style/UpdateLayout;

    if-eqz p2, :cond_3b

    .line 1318
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result p2

    if-eqz p2, :cond_38

    .line 1319
    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/DynamicLayout;

    .line 1320
    if-eqz p2, :cond_33

    invoke-static {p2}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object p2

    instance-of p2, p2, Landroid/text/method/OffsetMapping;

    if-eqz p2, :cond_33

    .line 1324
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->insertModeCrashUpdateLayoutSpan()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2b

    .line 1325
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    goto :goto_37

    .line 1327
    :cond_2b
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p2

    invoke-direct {p0, p1, p3, p3, p2}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    goto :goto_37

    .line 1330
    :cond_33
    sub-int/2addr p4, p3

    invoke-direct {p0, p1, p3, p4, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 1332
    :goto_37
    goto :goto_3b

    .line 1333
    :cond_38
    invoke-direct {p0, p1, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    .line 1336
    :cond_3b
    :goto_3b
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 1267
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 1268
    if-eqz v0, :cond_42

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_42

    .line 1269
    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    if-eqz p2, :cond_2e

    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p2, p2, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    if-ltz p2, :cond_2e

    .line 1270
    iget-object p2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p2, p2, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    .line 1271
    iget-object p3, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p3, p3, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    .line 1272
    iget-object p4, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p4, p4, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    .line 1274
    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    goto :goto_42

    .line 1277
    :cond_2e
    nop

    .line 1280
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result p3

    .line 1281
    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 p2, 0x0

    .line 1284
    :cond_42
    :goto_42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 1285
    return-void
.end method
