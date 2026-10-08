.class public final Landroid/view/textclassifier/TextClassifier$EntityConfig;
.super Ljava/lang/Object;
.source "TextClassifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntityConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExcludedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIncludeTypesFromTextClassifier:Z

.field private final blacklist mIncludedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 626
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    .line 508
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    .line 510
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 513
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    .line 515
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    .line 501
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    .line 502
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    .line 503
    iput-boolean p4, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    .line 504
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLandroid/view/textclassifier/TextClassifier-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public static whitelist create(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 557
    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p1

    .line 558
    invoke-virtual {p1, p2}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setExcludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p1

    .line 559
    invoke-virtual {p1, p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p0

    .line 560
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p0

    .line 561
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p0

    .line 556
    return-object p0
.end method

.method public static whitelist createWithExplicitEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 575
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p0

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p0

    .line 577
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p0

    .line 574
    return-object p0
.end method

.method public static whitelist createWithHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 535
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 536
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p0

    .line 534
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHints()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 591
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    if-eqz v1, :cond_c

    .line 592
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 594
    :cond_c
    iget-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 595
    iget-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 596
    return-object v0
.end method

.method public whitelist shouldIncludeTypesFromTextClassifier()Z
    .registers 2

    .line 618
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 519
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 520
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 521
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 522
    iget-boolean p2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 523
    return-void
.end method
