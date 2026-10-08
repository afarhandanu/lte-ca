.class public final Landroid/view/textclassifier/TextLinksParams;
.super Ljava/lang/Object;
.source "TextLinksParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinksParams$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mApplyStrategy:I

.field private final greylist-max-o mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private final greylist-max-o mSpanFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_SPAN_FACTORY()Ljava/util/function/Function;
    .registers 1

    sget-object v0, Landroid/view/textclassifier/TextLinksParams;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckApplyStrategy(I)I
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextLinksParams;->checkApplyStrategy(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/view/textclassifier/TextLinksParams$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinksParams$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinksParams;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/view/textclassifier/TextLinksParams;->mApplyStrategy:I

    .line 54
    iput-object p2, p0, Landroid/view/textclassifier/TextLinksParams;->mSpanFactory:Ljava/util/function/Function;

    .line 55
    const/4 p1, 0x0

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextLinksParams;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/function/Function;Landroid/view/textclassifier/TextLinksParams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextLinksParams;-><init>(ILjava/util/function/Function;)V

    return-void
.end method

.method private static greylist-max-o checkApplyStrategy(I)I
    .registers 2

    .line 204
    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_e

    .line 206
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid apply strategy. See TextLinksParams.ApplyStrategy for options."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_e
    :goto_e
    return p0
.end method

.method public static greylist-max-o fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;
    .registers 3

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    .line 69
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_18

    .line 72
    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_18
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    .line 75
    const-string/jumbo v1, "phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_22
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_2b

    .line 78
    const-string p0, "address"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2b
    new-instance p0, Landroid/view/textclassifier/TextLinksParams$Builder;

    invoke-direct {p0}, Landroid/view/textclassifier/TextLinksParams$Builder;-><init>()V

    .line 81
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithExplicitEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextLinksParams$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinksParams$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/view/textclassifier/TextLinksParams$Builder;->build()Landroid/view/textclassifier/TextLinksParams;

    move-result-object p0

    .line 80
    return-object p0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/view/textclassifier/TextLinks$TextLinkSpan;
    .registers 2

    .line 43
    new-instance v0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;-><init>(Landroid/view/textclassifier/TextLinks$TextLink;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I
    .registers 13

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 112
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    const-string v0, "116321860"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x534e4554

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 113
    const/4 p1, 0x4

    return p1

    .line 116
    :cond_25
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 117
    const/4 p1, 0x3

    return p1

    .line 119
    :cond_35
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 120
    return v1

    .line 123
    :cond_41
    nop

    .line 124
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v2, v0

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 125
    iget-object v4, p0, Landroid/view/textclassifier/TextLinksParams;->mSpanFactory:Ljava/util/function/Function;

    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    .line 126
    if-eqz v4, :cond_a3

    .line 127
    nop

    .line 128
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v6

    const-class v7, Landroid/text/style/ClickableSpan;

    .line 127
    invoke-interface {p1, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    .line 129
    array-length v6, v5

    const/16 v7, 0x21

    if-lez v6, :cond_96

    .line 130
    iget v6, p0, Landroid/view/textclassifier/TextLinksParams;->mApplyStrategy:I

    if-ne v6, v1, :cond_a3

    .line 131
    array-length v6, v5

    move v8, v0

    :goto_7e
    if-ge v8, v6, :cond_88

    aget-object v9, v5, v8

    .line 132
    invoke-interface {p1, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v8, v8, 0x1

    goto :goto_7e

    .line 134
    :cond_88
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v3

    invoke-interface {p1, v4, v5, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 139
    :cond_96
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v3

    invoke-interface {p1, v4, v5, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 144
    :cond_a3
    :goto_a3
    goto :goto_4c

    .line 145
    :cond_a4
    if-nez v2, :cond_a8

    .line 146
    const/4 p1, 0x2

    return p1

    .line 148
    :cond_a8
    return v0
.end method

.method public greylist-max-o getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/view/textclassifier/TextLinksParams;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method
