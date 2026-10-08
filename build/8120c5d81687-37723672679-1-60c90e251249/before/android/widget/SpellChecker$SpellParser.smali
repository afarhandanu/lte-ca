.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private blacklist mForceCheckWhenEditingWord:Z

.field private greylist-max-o mRange:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SpellChecker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 648
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private greylist-max-o removeRangeSpan(Landroid/text/Editable;)V
    .registers 3

    .line 691
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 692
    return-void
.end method

.method private greylist-max-o removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .line 781
    array-length v0, p3

    .line 782
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    .line 783
    aget-object v2, p3, v1

    .line 784
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 785
    if-le v3, p2, :cond_d

    goto :goto_17

    .line 786
    :cond_d
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 787
    if-ge v3, p2, :cond_14

    goto :goto_17

    .line 788
    :cond_14
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 782
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 790
    :cond_1a
    return-void
.end method

.method private greylist-max-o setRangeSpan(Landroid/text/Editable;II)V
    .registers 6

    .line 683
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 684
    return-void
.end method


# virtual methods
.method public greylist-max-o isFinished()Z
    .registers 3

    .line 671
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public greylist-max-o parse()V
    .registers 13

    .line 695
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 696
    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 697
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 699
    iget-object v3, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3, v0, v1, v2}, Landroid/widget/SpellChecker;->-$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 702
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 704
    if-ne v3, v1, :cond_38

    .line 708
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 709
    return-void

    .line 712
    :cond_38
    nop

    .line 714
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v2, :cond_3f

    .line 719
    move v6, v4

    goto :goto_40

    .line 714
    :cond_3f
    move v6, v5

    .line 721
    :goto_40
    nop

    .line 723
    nop

    .line 724
    nop

    .line 726
    move v8, v3

    move v7, v5

    :goto_45
    iget-object v9, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->-$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I

    move-result v9

    if-ge v7, v9, :cond_88

    .line 727
    iget-object v9, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->-$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v9

    aget-object v9, v9, v7

    .line 728
    iget-object v10, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10}, Landroid/widget/SpellChecker;->-$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I

    move-result-object v10

    aget v10, v10, v7

    if-ltz v10, :cond_85

    invoke-virtual {v9}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v10

    if-eqz v10, :cond_66

    .line 729
    goto :goto_85

    .line 731
    :cond_66
    invoke-interface {v0, v9}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 732
    invoke-interface {v0, v9}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 733
    if-lt v11, v8, :cond_85

    if-ge v1, v10, :cond_73

    .line 735
    goto :goto_85

    .line 737
    :cond_73
    if-gt v10, v8, :cond_7a

    if-gt v1, v11, :cond_7a

    .line 740
    nop

    .line 744
    move v4, v5

    goto :goto_88

    .line 747
    :cond_7a
    invoke-interface {v0, v9}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 748
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 749
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 726
    :cond_85
    :goto_85
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 760
    :cond_88
    :goto_88
    if-gt v1, v8, :cond_af

    .line 761
    invoke-static {}, Landroid/widget/SpellChecker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to spellcheck invalid region, from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    goto :goto_b6

    .line 765
    :cond_af
    if-eqz v4, :cond_b6

    .line 766
    iget-object v3, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3, v0, v8, v1}, Landroid/widget/SpellChecker;->-$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 769
    :cond_b6
    :goto_b6
    nop

    .line 770
    if-eqz v6, :cond_c2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_c2

    if-gt v1, v2, :cond_c2

    .line 773
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_c5

    .line 775
    :cond_c2
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 777
    :goto_c5
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    iget-boolean v1, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    invoke-static {v0, v1}, Landroid/widget/SpellChecker;->-$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V

    .line 778
    return-void
.end method

.method public blacklist parse(IIZ)V
    .registers 7

    .line 655
    iput-boolean p3, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    .line 656
    iget-object p3, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {p3}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p3

    .line 658
    if-le p2, p3, :cond_34

    .line 659
    invoke-static {}, Landroid/widget/SpellChecker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse invalid region, from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move p2, p3

    goto :goto_35

    .line 662
    :cond_34
    nop

    .line 664
    :goto_35
    if-le p2, p1, :cond_49

    .line 665
    iget-object p3, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {p3}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Landroid/text/Editable;

    invoke-direct {p0, p3, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 666
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    .line 668
    :cond_49
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    .line 677
    return-void
.end method
