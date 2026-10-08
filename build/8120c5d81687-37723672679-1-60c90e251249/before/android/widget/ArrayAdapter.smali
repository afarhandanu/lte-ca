.class public Landroid/widget/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ArrayAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/ThemedSpinnerAdapter;"
    }
.end annotation


# static fields
.field private static final blacklist BOOST_CPU_TEXT_LENGTH_THRESHOLD:I = 0x1f4

.field private static final blacklist sBoostCpuLoadFlag:Z


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mDropDownResource:I

.field private greylist-max-o mFieldId:I

.field private greylist-max-o mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private final greylist mLock:Ljava/lang/Object;

.field private greylist-max-o mNotifyOnChange:Z

.field private greylist mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mObjectsFromResources:Z

.field private greylist mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObjects(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalValues(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObjects(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalValues(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->boostCpuLoadForLongTextRendering()Z

    move-result v0

    sput-boolean v0, Landroid/widget/ArrayAdapter;->sBoostCpuLoadFlag:Z

    .line 131
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 146
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 5

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 159
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 213
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    .line 214
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;IILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 218
    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 220
    iput p2, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    iput p2, p0, Landroid/widget/ArrayAdapter;->mResource:I

    .line 221
    iput-object p4, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    .line 222
    iput-boolean p5, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 223
    iput p3, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 224
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .line 186
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 187
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 200
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 172
    return-void
.end method

.method public static whitelist createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 537
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    return-object v0
.end method

.method private greylist-max-o createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 7

    .line 430
    const/4 v0, 0x0

    if-nez p3, :cond_8

    .line 431
    invoke-virtual {p1, p5, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_9

    .line 433
    :cond_8
    nop

    .line 437
    :goto_9
    :try_start_9
    iget p1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    if-nez p1, :cond_11

    .line 439
    move-object p1, p3

    check-cast p1, Landroid/widget/TextView;

    goto :goto_1b

    .line 442
    :cond_11
    iget p1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_19} :catch_85

    .line 444
    if-eqz p1, :cond_5a

    .line 454
    :goto_1b
    nop

    .line 456
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    .line 459
    instance-of p5, p2, Ljava/lang/CharSequence;

    if-eqz p5, :cond_2b

    .line 460
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 461
    goto :goto_3f

    .line 463
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_32

    goto :goto_3a

    :cond_32
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 464
    :goto_3a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move p5, v0

    .line 469
    :goto_3f
    sget-boolean v0, Landroid/widget/ArrayAdapter;->sBoostCpuLoadFlag:Z

    if-eqz v0, :cond_56

    invoke-virtual {p4}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 v0, 0x1f4

    if-le p5, v0, :cond_56

    .line 471
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p4

    const-string p5, "ADPF_SendHint: Expensive text rendering"

    invoke-virtual {p4, p5}, Landroid/view/ViewRootImpl;->notifyRendererOfExpensiveFrame(Ljava/lang/String;)V

    .line 474
    :cond_56
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    return-object p3

    .line 445
    :cond_5a
    :try_start_5a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find view with ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " in item layout"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_5a .. :try_end_85} :catch_85

    .line 450
    :catch_85
    move-exception p1

    .line 451
    const-string p2, "ArrayAdapter"

    const-string p3, "You must supply a resource ID for a TextView"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public whitelist add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 235
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 237
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 240
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 241
    iget-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 242
    :cond_1d
    return-void

    .line 240
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 261
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 263
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    :goto_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 266
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 267
    iget-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 268
    :cond_1d
    return-void

    .line 266
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public varargs whitelist addAll([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 279
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_12

    .line 281
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 283
    :goto_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 284
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 285
    iget-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 286
    :cond_1d
    return-void

    .line 284
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist clear()V
    .registers 3

    .line 331
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 333
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_12

    .line 335
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 337
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 338
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 339
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 340
    :cond_1d
    return-void

    .line 338
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 3

    .line 558
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_7

    .line 560
    return-object v0

    .line 564
    :cond_7
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_26

    .line 567
    :cond_18
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 568
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 569
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 570
    return-object v0

    .line 565
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 390
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 395
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .line 520
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_9
    move-object v2, v0

    .line 521
    iget v6, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/ArrayAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 3

    .line 542
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    if-nez v0, :cond_c

    .line 543
    new-instance v0, Landroid/widget/ArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter-IA;)V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    .line 545
    :cond_c
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 416
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getPosition(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .line 422
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/widget/ArrayAdapter;->mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 298
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_12

    .line 300
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 302
    :goto_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 303
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 304
    iget-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 305
    :cond_1d
    return-void

    .line 303
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 2

    .line 361
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 363
    return-void
.end method

.method public whitelist remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 316
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 318
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    :goto_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 321
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 322
    iget-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 323
    :cond_1d
    return-void

    .line 321
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist setDropDownViewResource(I)V
    .registers 2

    .line 486
    iput p1, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    .line 487
    return-void
.end method

.method public whitelist setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 502
    if-nez p1, :cond_6

    .line 503
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_24

    .line 504
    :cond_6
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 505
    iget-object p1, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_24

    .line 507
    :cond_17
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 508
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 510
    :goto_24
    return-void
.end method

.method public whitelist setNotifyOnChange(Z)V
    .registers 2

    .line 380
    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 381
    return-void
.end method

.method public whitelist sort(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 351
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_12

    .line 353
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 355
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1b

    .line 356
    iget-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 357
    :cond_1a
    return-void

    .line 355
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method
