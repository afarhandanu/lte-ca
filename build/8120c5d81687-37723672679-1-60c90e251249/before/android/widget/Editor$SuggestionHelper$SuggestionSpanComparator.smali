.class Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SuggestionHelper;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor$SuggestionHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4043
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;)V

    return-void
.end method

.method private blacklist compareFlag(III)I
    .registers 6

    .line 4066
    and-int/2addr p2, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_8

    :cond_7
    move p2, v1

    .line 4067
    :goto_8
    and-int/2addr p1, p3

    if-eqz p1, :cond_d

    move p1, v0

    goto :goto_e

    :cond_d
    move p1, v1

    .line 4068
    :goto_e
    if-ne p2, p1, :cond_11

    return v1

    .line 4069
    :cond_11
    if-eqz p2, :cond_14

    const/4 v0, -0x1

    :cond_14
    return v0
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .registers 6

    .line 4045
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4046
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    .line 4047
    if-eq v0, v1, :cond_23

    .line 4049
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compareFlag(III)I

    move-result v2

    .line 4050
    if-eqz v2, :cond_12

    return v2

    .line 4051
    :cond_12
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compareFlag(III)I

    move-result v2

    .line 4052
    if-eqz v2, :cond_1a

    return v2

    .line 4053
    :cond_1a
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compareFlag(III)I

    move-result v0

    .line 4054
    if-eqz v0, :cond_23

    return v0

    .line 4057
    :cond_23
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionHelper;->-$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionHelper;->-$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4043
    check-cast p1, Landroid/text/style/SuggestionSpan;

    check-cast p2, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result p1

    return p1
.end method
