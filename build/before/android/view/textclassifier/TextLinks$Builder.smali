.class public final Landroid/view/textclassifier/TextLinks$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mFullText:Ljava/lang/String;

.field private final greylist-max-o mLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mFullText:Ljava/lang/String;

    .line 679
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    .line 680
    return-void
.end method

.method private blacklist addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/text/style/URLSpan;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/textclassifier/TextLinks$TextLink;

    new-instance v4, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v4, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;Landroid/view/textclassifier/TextLinks-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    return-object p0
.end method


# virtual methods
.method public whitelist addLink(IILjava/util/Map;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    .line 693
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addLink(IILjava/util/Map;Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    .line 705
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o addLink(IILjava/util/Map;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/text/style/URLSpan;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    .line 717
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist build()Landroid/view/textclassifier/TextLinks;
    .registers 6

    .line 754
    new-instance v0, Landroid/view/textclassifier/TextLinks;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mFullText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    .line 755
    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_d

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_f

    :cond_d
    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Builder;->mExtras:Landroid/os/Bundle;

    :goto_f
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextLinks;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks-IA;)V

    .line 754
    return-object v0
.end method

.method public whitelist clearTextLinks()Landroid/view/textclassifier/TextLinks$Builder;
    .registers 2

    .line 732
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 733
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 2

    .line 743
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mExtras:Landroid/os/Bundle;

    .line 744
    return-object p0
.end method
