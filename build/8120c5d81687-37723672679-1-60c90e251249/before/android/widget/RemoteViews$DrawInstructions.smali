.class public final Landroid/widget/RemoteViews$DrawInstructions;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawInstructions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$DrawInstructions$Builder;
    }
.end annotation


# static fields
.field private static final blacklist VERSION:J = 0x1L


# instance fields
.field final blacklist mInstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews$DrawInstructions;->readFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews$DrawInstructions;->writeToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 10184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawInstructions cannot be instantiate without instructions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 10189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10191
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    .line 10192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 10193
    array-length v1, v0

    .line 10194
    new-array v2, v1, [B

    .line 10195
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10196
    iget-object v0, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10197
    goto :goto_12

    .line 10198
    :cond_2b
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/widget/RemoteViews-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$DrawInstructions;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static whitelist getSupportedVersion()J
    .registers 2

    .line 10233
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocumentApiLevel()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;
    .registers 5

    .line 10202
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10203
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 10204
    const/4 p0, 0x0

    return-object p0

    .line 10207
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10208
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1b

    .line 10209
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    .line 10210
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10208
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 10212
    :cond_1b
    new-instance p0, Landroid/widget/RemoteViews$DrawInstructions;

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews$DrawInstructions;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static blacklist writeToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V
    .registers 3

    .line 10217
    if-nez p0, :cond_7

    .line 10218
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10219
    return-void

    .line 10221
    :cond_7
    iget-object p0, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    .line 10222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 10224
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    .line 10225
    goto :goto_14

    .line 10226
    :cond_24
    return-void
.end method
