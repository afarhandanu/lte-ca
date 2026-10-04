.class public final Landroid/widget/RemoteViews$DrawInstructions$Builder;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews$DrawInstructions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mInstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 10250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$DrawInstructions$Builder;->mInstructions:Ljava/util/List;

    .line 10252
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/widget/RemoteViews$DrawInstructions;
    .registers 4

    .line 10260
    new-instance v0, Landroid/widget/RemoteViews$DrawInstructions;

    iget-object v1, p0, Landroid/widget/RemoteViews$DrawInstructions$Builder;->mInstructions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews$DrawInstructions;-><init>(Ljava/util/List;Landroid/widget/RemoteViews-IA;)V

    return-object v0
.end method
