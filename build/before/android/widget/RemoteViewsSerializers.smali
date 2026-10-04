.class public Landroid/widget/RemoteViewsSerializers;
.super Ljava/lang/Object;
.source "RemoteViewsSerializers.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RemoteViews"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAbsoluteSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AbsoluteSizeSpan;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 658
    nop

    .line 659
    const/4 v0, 0x0

    move v1, v0

    .line 660
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 661
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading AbsoluteSizeSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 671
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    const-string v3, "AbsoluteSizeSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 666
    :pswitch_2e
    const-wide v1, 0x10800000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    .line 667
    goto :goto_3

    .line 663
    :pswitch_38
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 664
    goto :goto_3

    .line 674
    :cond_42
    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0, v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-object p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createAccessibilityClickableSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityClickableSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 685
    const/4 v0, 0x0

    .line 686
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 687
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AccessibilityClickableSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    const-string v2, "AccessibilityClickable"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 690
    :pswitch_2c
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 693
    goto :goto_1

    .line 700
    :cond_36
    new-instance p0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {p0, v0}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAccessibilityReplacementSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityReplacementSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 713
    const/4 v0, 0x0

    .line 714
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    .line 715
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AccessibilityReplacementSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 727
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    const-string v2, "AccessibilityReplacemen"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 718
    :pswitch_2c
    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 721
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 722
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 723
    move-object v0, v2

    goto :goto_1

    .line 730
    :cond_3e
    new-instance p0, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {p0, v0}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAccessibilityURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityURLSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    .line 747
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 748
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AccessibilityURLSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    const-string v2, "AccessibilityURLSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 750
    :pswitch_2c
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 751
    goto :goto_1

    .line 758
    :cond_36
    new-instance p0, Landroid/text/style/AccessibilityURLSpan;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAlignmentSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AlignmentSpan$Standard;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    const/4 v0, 0x0

    .line 769
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 770
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading AlignmentSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 778
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    const-string v2, "AlignmentSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    :pswitch_2c
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 774
    goto :goto_1

    .line 781
    :cond_36
    new-instance p0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v0}, Landroid/text/Layout$Alignment;->valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createAnnotationFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/Annotation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 792
    nop

    .line 793
    const/4 v0, 0x0

    move-object v1, v0

    .line 794
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 795
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading Annotation proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 804
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    const-string v3, "Annotation"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 800
    :pswitch_2e
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 801
    goto :goto_3

    .line 797
    :pswitch_38
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 798
    goto :goto_3

    .line 807
    :cond_42
    new-instance p0, Landroid/text/Annotation;

    invoke-direct {p0, v0, v1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createBackgroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BackgroundColorSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 817
    const/4 v0, 0x0

    .line 818
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 819
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading BackgroundColorSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 826
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    const-string v2, "BackgroundColorSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 821
    :pswitch_2c
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 822
    goto :goto_1

    .line 829
    :cond_36
    new-instance p0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createBulletSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BulletSpan;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 840
    nop

    .line 841
    nop

    .line 842
    nop

    .line 843
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 844
    :goto_7
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5a

    .line 845
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_60

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled field while reading BulletSpan proto!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 862
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    const-string v5, "BulletSpan"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 857
    :pswitch_32
    const-wide v4, 0x10800000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    .line 859
    goto :goto_7

    .line 847
    :pswitch_3c
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    .line 849
    goto :goto_7

    .line 851
    :pswitch_46
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 852
    goto :goto_7

    .line 854
    :pswitch_50
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 855
    goto :goto_7

    .line 865
    :cond_5a
    new-instance p0, Landroid/text/style/BulletSpan;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-object p0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_32
    .end packed-switch
.end method

.method public static blacklist createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 445
    const/4 v1, 0x0

    .line 446
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_50

    .line 447
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_58

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading CharSequence proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 453
    :pswitch_31
    nop

    .line 454
    const-wide v1, 0x20b00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 455
    invoke-static {p0, v0}, Landroid/widget/RemoteViewsSerializers;->createSpanFromProto(Landroid/util/proto/ProtoInputStream;Landroid/text/SpannableStringBuilder;)V

    .line 456
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 457
    const/4 v1, 0x1

    goto :goto_6

    .line 449
    :pswitch_43
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    goto :goto_6

    .line 463
    :cond_50
    if-eqz v1, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_57
    return-object v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_43
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist createDurationFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/time/Duration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    nop

    .line 275
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 276
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    .line 277
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_4a

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading Duration proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 282
    :pswitch_2f
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 283
    goto :goto_4

    .line 279
    :pswitch_39
    const-wide v0, 0x10300000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    .line 280
    goto :goto_4

    .line 290
    :cond_43
    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_2f
    .end packed-switch
.end method

.method public static blacklist createEasyEditSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/EasyEditSpan;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 877
    new-instance p0, Landroid/text/style/EasyEditSpan;

    invoke-direct {p0}, Landroid/text/style/EasyEditSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createForegroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ForegroundColorSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 885
    const/4 v0, 0x0

    .line 886
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 887
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading ForegroundColorSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 894
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    const-string v2, "ForegroundColorSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 889
    :pswitch_2c
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 890
    goto :goto_1

    .line 897
    :cond_36
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createIconFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/function/Function;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 143
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b5

    .line 144
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_bc

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading Icon proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 162
    :pswitch_31
    const-wide v3, 0x10c00000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    .line 164
    array-length v5, v1

    .line 165
    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 167
    goto :goto_5

    .line 181
    :pswitch_43
    nop

    .line 183
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 184
    goto :goto_5

    .line 178
    :pswitch_51
    const-wide v1, 0x10900000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 179
    goto :goto_5

    .line 174
    :pswitch_5e
    nop

    .line 175
    const-wide v1, 0x10c00000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 176
    goto :goto_5

    .line 169
    :pswitch_6c
    nop

    .line 171
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 172
    goto :goto_5

    .line 156
    :pswitch_7a
    const-wide v3, 0x10c00000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    .line 157
    array-length v5, v1

    .line 159
    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 160
    goto/16 :goto_5

    .line 151
    :pswitch_8d
    const-wide v1, 0x10b00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 152
    invoke-static {p0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 153
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 154
    goto/16 :goto_5

    .line 146
    :pswitch_a2
    nop

    .line 148
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 149
    goto/16 :goto_5

    .line 193
    :cond_b5
    new-instance p0, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8d
        :pswitch_7a
        :pswitch_6c
        :pswitch_5e
        :pswitch_51
        :pswitch_43
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist createInstantFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/time/Instant;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    nop

    .line 246
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 247
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    .line 248
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_4a

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading Instant proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 253
    :pswitch_2f
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 254
    goto :goto_4

    .line 250
    :pswitch_39
    const-wide v0, 0x10300000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    .line 251
    goto :goto_4

    .line 261
    :cond_43
    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_2f
    .end packed-switch
.end method

.method public static blacklist createLeadingMarginSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LeadingMarginSpan$Standard;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 902
    nop

    .line 903
    const/4 v0, 0x0

    move v1, v0

    .line 904
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 905
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading LeadingMarginSpanproto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 915
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 913
    const-string v3, "LeadingMarginSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 910
    :pswitch_2e
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 911
    goto :goto_3

    .line 907
    :pswitch_38
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 908
    goto :goto_3

    .line 918
    :cond_42
    new-instance p0, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {p0, v0, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    return-object p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createLineBackgroundSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBackgroundSpan$Standard;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 937
    const/4 v0, 0x0

    .line 938
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 939
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading LineBackgroundSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 946
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 944
    const-string v2, "LineBackgroundSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 941
    :pswitch_2c
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 942
    goto :goto_1

    .line 949
    :cond_36
    new-instance p0, Landroid/text/style/LineBackgroundSpan$Standard;

    invoke-direct {p0, v0}, Landroid/text/style/LineBackgroundSpan$Standard;-><init>(I)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createLineBreakConfigSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBreakConfigSpan;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 960
    nop

    .line 961
    nop

    .line 962
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 963
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4e

    .line 964
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_6a

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading LineBreakConfigSpan proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 980
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 978
    const-string v4, "LineBreakConfigSpan"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 974
    :pswitch_30
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 976
    goto :goto_5

    .line 970
    :pswitch_3a
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 972
    goto :goto_5

    .line 966
    :pswitch_44
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 968
    goto :goto_5

    .line 983
    :cond_4e
    new-instance p0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {p0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    .line 984
    invoke-virtual {p0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    .line 985
    invoke-virtual {p0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object p0

    .line 986
    new-instance v0, Landroid/text/style/LineBreakConfigSpan;

    invoke-direct {v0, p0}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3a
        :pswitch_30
    .end packed-switch
.end method

.method public static blacklist createLineHeightSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineHeightSpan$Standard;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1002
    const/4 v0, 0x0

    .line 1003
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1004
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading LineHeightSpan.Standard proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1011
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    const-string v2, "LineHeightSpan.Standard"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1006
    :pswitch_2c
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 1007
    goto :goto_1

    .line 1014
    :cond_36
    new-instance p0, Landroid/text/style/LineHeightSpan$Standard;

    invoke-direct {p0, v0}, Landroid/text/style/LineHeightSpan$Standard;-><init>(I)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createLocaleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LocaleSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1024
    const/4 v0, 0x0

    .line 1025
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1026
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading LocaleSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1033
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    const-string v2, "LocaleSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1028
    :pswitch_2c
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1030
    goto :goto_1

    .line 1036
    :cond_36
    new-instance p0, Landroid/text/style/LocaleSpan;

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/LocaleList;)V

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createQuoteSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/QuoteSpan;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1046
    nop

    .line 1047
    nop

    .line 1048
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1049
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4e

    .line 1050
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_54

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading QuoteSpan proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1062
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1061
    const-string v4, "QuoteSpan"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1058
    :pswitch_30
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 1059
    goto :goto_5

    .line 1055
    :pswitch_3a
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 1056
    goto :goto_5

    .line 1052
    :pswitch_44
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 1053
    goto :goto_5

    .line 1065
    :cond_4e
    new-instance p0, Landroid/text/style/QuoteSpan;

    invoke-direct {p0, v0, v1, v2}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-object p0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3a
        :pswitch_30
    .end packed-switch
.end method

.method public static blacklist createRelativeSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/RelativeSizeSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1076
    const/4 v0, 0x0

    .line 1077
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1078
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading RelativeSizeSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1086
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    const-string v2, "RelativeSizeSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1080
    :pswitch_2c
    const-wide v0, 0x10200000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    .line 1082
    goto :goto_1

    .line 1089
    :cond_36
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p0, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createScaleXSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ScaleXSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1099
    const/4 v0, 0x0

    .line 1100
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1101
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading ScaleXSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1107
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    const-string v2, "ScaleXSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1103
    :pswitch_2c
    const-wide v0, 0x10200000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    .line 1104
    goto :goto_1

    .line 1110
    :cond_36
    new-instance p0, Landroid/text/style/ScaleXSpan;

    invoke-direct {p0, v0}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method private static blacklist createSpanFromProto(Landroid/util/proto/ProtoInputStream;Landroid/text/SpannableStringBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 468
    nop

    .line 469
    nop

    .line 470
    nop

    .line 471
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move v1, v2

    .line 472
    :goto_8
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_292

    .line 473
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_29a

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled field while reading CharSequence proto!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 647
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 646
    const-string v5, "RemoteViews"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 641
    :pswitch_33
    const-wide v3, 0x20b00000021L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 642
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/URLSpan;

    move-result-object v5

    .line 643
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 644
    move-object v3, v5

    goto :goto_8

    .line 636
    :pswitch_45
    const-wide v3, 0x20b00000020L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 637
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createUnderlineSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/UnderlineSpan;

    move-result-object v5

    .line 638
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 639
    move-object v3, v5

    goto :goto_8

    .line 631
    :pswitch_57
    const-wide v3, 0x20b0000001fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 632
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTypefaceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TypefaceSpan;

    move-result-object v5

    .line 633
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 634
    move-object v3, v5

    goto :goto_8

    .line 626
    :pswitch_69
    const-wide v3, 0x20b0000001eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 627
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTtsSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TtsSpan;

    move-result-object v5

    .line 628
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 629
    move-object v3, v5

    goto :goto_8

    .line 620
    :pswitch_7b
    const-wide v3, 0x20b0000001dL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 622
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTextAppearanceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    .line 623
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 624
    move-object v3, v5

    goto/16 :goto_8

    .line 615
    :pswitch_8e
    const-wide v3, 0x20b0000001cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 616
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuperscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuperscriptSpan;

    move-result-object v5

    .line 617
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 618
    move-object v3, v5

    goto/16 :goto_8

    .line 604
    :pswitch_a1
    const-wide v3, 0x20b0000001bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 606
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuggestionRangeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v5

    .line 607
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 608
    move-object v3, v5

    goto/16 :goto_8

    .line 610
    :pswitch_b4
    const-wide v3, 0x20b0000001aL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 611
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuggestionSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionSpan;

    move-result-object v5

    .line 612
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 613
    move-object v3, v5

    goto/16 :goto_8

    .line 599
    :pswitch_c7
    const-wide v3, 0x20b00000019L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 600
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSubscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SubscriptSpan;

    move-result-object v5

    .line 601
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 602
    move-object v3, v5

    goto/16 :goto_8

    .line 594
    :pswitch_da
    const-wide v3, 0x20b00000018L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 595
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createStyleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StyleSpan;

    move-result-object v5

    .line 596
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 597
    move-object v3, v5

    goto/16 :goto_8

    .line 589
    :pswitch_ed
    const-wide v3, 0x20b00000017L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 590
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createStrikethroughSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StrikethroughSpan;

    move-result-object v5

    .line 591
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 592
    move-object v3, v5

    goto/16 :goto_8

    .line 584
    :pswitch_100
    const-wide v3, 0x20b00000016L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 585
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSpellCheckSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SpellCheckSpan;

    move-result-object v5

    .line 586
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 587
    move-object v3, v5

    goto/16 :goto_8

    .line 579
    :pswitch_113
    const-wide v3, 0x20b00000015L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 580
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createScaleXSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ScaleXSpan;

    move-result-object v5

    .line 581
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 582
    move-object v3, v5

    goto/16 :goto_8

    .line 574
    :pswitch_126
    const-wide v3, 0x20b00000014L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 575
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createRelativeSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/RelativeSizeSpan;

    move-result-object v5

    .line 576
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 577
    move-object v3, v5

    goto/16 :goto_8

    .line 569
    :pswitch_139
    const-wide v3, 0x20b00000013L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 570
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createQuoteSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/QuoteSpan;

    move-result-object v5

    .line 571
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 572
    move-object v3, v5

    goto/16 :goto_8

    .line 564
    :pswitch_14c
    const-wide v3, 0x20b00000012L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 565
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLocaleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LocaleSpan;

    move-result-object v5

    .line 566
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 567
    move-object v3, v5

    goto/16 :goto_8

    .line 559
    :pswitch_15f
    const-wide v3, 0x20b00000011L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 560
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineHeightSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineHeightSpan$Standard;

    move-result-object v5

    .line 561
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 562
    move-object v3, v5

    goto/16 :goto_8

    .line 551
    :pswitch_172
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v4

    if-nez v4, :cond_17a

    .line 552
    goto/16 :goto_8

    .line 554
    :cond_17a
    const-wide v3, 0x20b00000010L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 555
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineBreakConfigSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBreakConfigSpan;

    move-result-object v5

    .line 556
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 557
    move-object v3, v5

    goto/16 :goto_8

    .line 545
    :pswitch_18d
    const-wide v3, 0x20b0000000fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 547
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineBackgroundSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBackgroundSpan$Standard;

    move-result-object v5

    .line 548
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 549
    move-object v3, v5

    goto/16 :goto_8

    .line 539
    :pswitch_1a0
    const-wide v3, 0x20b0000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 541
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLeadingMarginSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LeadingMarginSpan$Standard;

    move-result-object v5

    .line 542
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 543
    move-object v3, v5

    goto/16 :goto_8

    .line 533
    :pswitch_1b3
    const-wide v3, 0x20b0000000dL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 535
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createForegroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    .line 536
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 537
    move-object v3, v5

    goto/16 :goto_8

    .line 528
    :pswitch_1c6
    const-wide v3, 0x20b0000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 529
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createEasyEditSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/EasyEditSpan;

    move-result-object v5

    .line 530
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 531
    move-object v3, v5

    goto/16 :goto_8

    .line 523
    :pswitch_1d9
    const-wide v3, 0x20b0000000bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 524
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createBulletSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BulletSpan;

    move-result-object v5

    .line 525
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 526
    move-object v3, v5

    goto/16 :goto_8

    .line 517
    :pswitch_1ec
    const-wide v3, 0x20b0000000aL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 519
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createBackgroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v5

    .line 520
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 521
    move-object v3, v5

    goto/16 :goto_8

    .line 512
    :pswitch_1ff
    const-wide v3, 0x20b00000009L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 513
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAnnotationFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/Annotation;

    move-result-object v5

    .line 514
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 515
    move-object v3, v5

    goto/16 :goto_8

    .line 507
    :pswitch_212
    const-wide v3, 0x20b00000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 508
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAlignmentSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AlignmentSpan$Standard;

    move-result-object v5

    .line 509
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 510
    move-object v3, v5

    goto/16 :goto_8

    .line 501
    :pswitch_225
    const-wide v3, 0x20b00000007L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 503
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityURLSpan;

    move-result-object v5

    .line 504
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 505
    move-object v3, v5

    goto/16 :goto_8

    .line 495
    :pswitch_238
    const-wide v3, 0x20b00000006L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 497
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityReplacementSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityReplacementSpan;

    move-result-object v5

    .line 498
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 499
    move-object v3, v5

    goto/16 :goto_8

    .line 489
    :pswitch_24b
    const-wide v3, 0x20b00000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 491
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityClickableSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityClickableSpan;

    move-result-object v5

    .line 492
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 493
    move-object v3, v5

    goto/16 :goto_8

    .line 484
    :pswitch_25e
    const-wide v3, 0x20b00000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 485
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAbsoluteSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v5

    .line 486
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 487
    move-object v3, v5

    goto/16 :goto_8

    .line 481
    :pswitch_271
    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 482
    goto/16 :goto_8

    .line 478
    :pswitch_27c
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 479
    goto/16 :goto_8

    .line 475
    :pswitch_287
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 476
    goto/16 :goto_8

    .line 650
    :cond_292
    if-nez v3, :cond_295

    .line 651
    return-void

    .line 653
    :cond_295
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 654
    return-void

    nop

    :pswitch_data_29a
    .packed-switch 0x1
        :pswitch_287
        :pswitch_27c
        :pswitch_271
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_225
        :pswitch_212
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_1a0
        :pswitch_18d
        :pswitch_172
        :pswitch_15f
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_100
        :pswitch_ed
        :pswitch_da
        :pswitch_c7
        :pswitch_b4
        :pswitch_a1
        :pswitch_8e
        :pswitch_7b
        :pswitch_69
        :pswitch_57
        :pswitch_45
        :pswitch_33
    .end packed-switch
.end method

.method public static blacklist createSpellCheckSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SpellCheckSpan;
    .registers 1

    .line 1118
    new-instance p0, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0}, Landroid/text/style/SpellCheckSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createStrikethroughSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StrikethroughSpan;
    .registers 1

    .line 1126
    new-instance p0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createStyleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StyleSpan;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1135
    nop

    .line 1136
    const/4 v0, 0x0

    move v1, v0

    .line 1137
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 1138
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading StyleSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1148
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    const-string v3, "StyleSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1143
    :pswitch_2e
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 1145
    goto :goto_3

    .line 1140
    :pswitch_38
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 1141
    goto :goto_3

    .line 1151
    :cond_42
    new-instance p0, Landroid/text/style/StyleSpan;

    invoke-direct {p0, v0, v1}, Landroid/text/style/StyleSpan;-><init>(II)V

    return-object p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createSubscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SubscriptSpan;
    .registers 1

    .line 1161
    new-instance p0, Landroid/text/style/SubscriptSpan;

    invoke-direct {p0}, Landroid/text/style/SubscriptSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createSuggestionRangeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionRangeSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1170
    const/4 v0, 0x0

    .line 1171
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1172
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading SuggestionRangeSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1180
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    const-string v2, "SuggestionRangeSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1174
    :pswitch_2c
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 1176
    goto :goto_1

    .line 1183
    :cond_36
    new-instance p0, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {p0}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    .line 1184
    invoke-virtual {p0, v0}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 1185
    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createSuggestionSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionSpan;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1196
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    nop

    .line 1198
    nop

    .line 1199
    nop

    .line 1200
    nop

    .line 1201
    nop

    .line 1202
    nop

    .line 1203
    nop

    .line 1204
    nop

    .line 1205
    nop

    .line 1206
    nop

    .line 1207
    nop

    .line 1208
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v15, v13

    move/from16 v17, v15

    move-object v8, v3

    move-object v9, v8

    move v12, v4

    move v14, v12

    move/from16 v16, v14

    move/from16 v18, v16

    .line 1209
    :goto_24
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d9

    .line 1210
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_e8

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading SuggestionSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1282
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1280
    const-string v3, "SuggestionSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1275
    :pswitch_4f
    const-wide v2, 0x1020000000dL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v18

    .line 1278
    goto :goto_24

    .line 1269
    :pswitch_59
    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v17

    .line 1272
    goto :goto_24

    .line 1263
    :pswitch_63
    const-wide v2, 0x1020000000bL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v16

    .line 1266
    goto :goto_24

    .line 1257
    :pswitch_6d
    const-wide v2, 0x1050000000aL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v15

    .line 1260
    goto :goto_24

    .line 1251
    :pswitch_77
    const-wide v2, 0x10200000009L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v14

    .line 1254
    goto :goto_24

    .line 1245
    :pswitch_81
    const-wide v2, 0x10500000008L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v13

    .line 1248
    goto :goto_24

    .line 1239
    :pswitch_8b
    const-wide v2, 0x10200000007L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v12

    .line 1242
    goto :goto_24

    .line 1233
    :pswitch_95
    const-wide v2, 0x10500000006L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    .line 1236
    goto :goto_24

    .line 1229
    :pswitch_9f
    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    .line 1230
    goto/16 :goto_24

    .line 1225
    :pswitch_aa
    const-wide v2, 0x10900000004L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v9

    .line 1227
    goto/16 :goto_24

    .line 1220
    :pswitch_b5
    const-wide v2, 0x10900000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v8

    .line 1223
    goto/16 :goto_24

    .line 1216
    :pswitch_c0
    const-wide v2, 0x10500000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    .line 1217
    goto/16 :goto_24

    .line 1212
    :pswitch_cb
    const-wide v2, 0x20900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    goto/16 :goto_24

    .line 1285
    :cond_d9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 1286
    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1287
    new-instance v5, Landroid/text/style/SuggestionSpan;

    invoke-direct/range {v5 .. v18}, Landroid/text/style/SuggestionSpan;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V

    return-object v5

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_c0
        :pswitch_b5
        :pswitch_aa
        :pswitch_9f
        :pswitch_95
        :pswitch_8b
        :pswitch_81
        :pswitch_77
        :pswitch_6d
        :pswitch_63
        :pswitch_59
        :pswitch_4f
    .end packed-switch
.end method

.method public static blacklist createSuperscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuperscriptSpan;
    .registers 1

    .line 1326
    new-instance p0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createTextAppearanceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TextAppearanceSpan;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1335
    move-object/from16 v0, p0

    .line 1336
    nop

    .line 1337
    nop

    .line 1338
    nop

    .line 1339
    nop

    .line 1340
    nop

    .line 1341
    nop

    .line 1342
    nop

    .line 1343
    nop

    .line 1344
    nop

    .line 1345
    nop

    .line 1346
    nop

    .line 1347
    nop

    .line 1348
    nop

    .line 1349
    nop

    .line 1350
    nop

    .line 1351
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v1

    move-object v8, v5

    move-object v9, v8

    move-object v12, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v21

    move v6, v2

    move v7, v6

    move v11, v7

    move/from16 v16, v11

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move v13, v3

    move v14, v13

    move v15, v14

    move/from16 v20, v15

    .line 1352
    :goto_2c
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11c

    .line 1353
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_124

    .line 1433
    :pswitch_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading TextAppearanceSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    const-string v2, "TextAppearanceSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1428
    :pswitch_57
    const-wide v1, 0x10900000012L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v22

    .line 1431
    goto :goto_2c

    .line 1422
    :pswitch_61
    const-wide v1, 0x10900000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v21

    .line 1425
    goto :goto_2c

    .line 1418
    :pswitch_6b
    const-wide v1, 0x10200000010L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v20

    .line 1420
    goto :goto_2c

    .line 1413
    :pswitch_75
    const-wide v1, 0x1080000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v19

    .line 1416
    goto :goto_2c

    .line 1408
    :pswitch_7f
    const-wide v1, 0x1080000000eL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v18

    .line 1410
    goto :goto_2c

    .line 1403
    :pswitch_89
    const-wide v1, 0x1080000000dL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v17

    .line 1406
    goto :goto_2c

    .line 1398
    :pswitch_93
    const-wide v1, 0x1050000000cL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v16

    .line 1400
    goto :goto_2c

    .line 1394
    :pswitch_9d
    const-wide v1, 0x1020000000bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v15

    .line 1396
    goto :goto_2c

    .line 1390
    :pswitch_a7
    const-wide v1, 0x1020000000aL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v14

    .line 1392
    goto/16 :goto_2c

    .line 1386
    :pswitch_b2
    const-wide v1, 0x10200000009L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v13

    .line 1388
    goto/16 :goto_2c

    .line 1382
    :pswitch_bd
    const-wide v1, 0x10900000008L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v12

    .line 1384
    goto/16 :goto_2c

    .line 1378
    :pswitch_cc
    const-wide v1, 0x10500000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    .line 1380
    goto/16 :goto_2c

    .line 1372
    :pswitch_d7
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1374
    invoke-static {v0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 1375
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1376
    goto/16 :goto_2c

    .line 1366
    :pswitch_e9
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1368
    invoke-static {v0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 1369
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1370
    goto/16 :goto_2c

    .line 1362
    :pswitch_fb
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    .line 1364
    goto/16 :goto_2c

    .line 1359
    :pswitch_106
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    .line 1360
    goto/16 :goto_2c

    .line 1355
    :pswitch_111
    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 1357
    goto/16 :goto_2c

    .line 1438
    :cond_11c
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v22}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V

    return-object v4

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_111
        :pswitch_106
        :pswitch_fb
        :pswitch_e9
        :pswitch_d7
        :pswitch_3a
        :pswitch_cc
        :pswitch_bd
        :pswitch_b2
        :pswitch_a7
        :pswitch_9d
        :pswitch_93
        :pswitch_89
        :pswitch_7f
        :pswitch_75
        :pswitch_6b
        :pswitch_61
        :pswitch_57
    .end packed-switch
.end method

.method public static blacklist createTtsSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TtsSpan;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1488
    nop

    .line 1489
    const/4 v0, 0x0

    move-object v1, v0

    .line 1490
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4f

    .line 1491
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_56

    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading TtsSpan proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1502
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    const-string v3, "TtsSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1496
    :pswitch_2e
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 1497
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1498
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1499
    goto :goto_3

    .line 1493
    :pswitch_45
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1494
    goto :goto_3

    .line 1505
    :cond_4f
    new-instance p0, Landroid/text/style/TtsSpan;

    invoke-direct {p0, v0, v1}, Landroid/text/style/TtsSpan;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_45
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist createTypefaceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TypefaceSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1523
    const/4 v0, 0x0

    .line 1524
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1525
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading TypefaceSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1531
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    const-string v2, "TypefaceSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1527
    :pswitch_2c
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1528
    goto :goto_1

    .line 1534
    :cond_36
    new-instance p0, Landroid/text/style/TypefaceSpan;

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/URLSpan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1542
    const/4 v0, 0x0

    .line 1543
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1544
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field while reading URLSpan proto!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1550
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1549
    const-string v2, "URLSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1546
    :pswitch_2c
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1547
    goto :goto_1

    .line 1553
    :cond_36
    new-instance p0, Landroid/text/style/URLSpan;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist createUnderlineSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/UnderlineSpan;
    .registers 1

    .line 1561
    new-instance p0, Landroid/text/style/UnderlineSpan;

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-object p0
.end method

.method static synthetic blacklist lambda$createIconFromProto$0(Landroid/util/LongSparseArray;Landroid/content/res/Resources;)Landroid/graphics/drawable/Icon;
    .registers 13

    .line 194
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 197
    const-wide v3, 0x10c00000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 198
    const-wide v4, 0x10c00000008L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 200
    const-wide v5, 0x10900000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 201
    const/4 v6, 0x0

    if-eqz v5, :cond_48

    invoke-virtual {p1, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_49

    .line 203
    :cond_48
    move v5, v0

    .line 204
    :goto_49
    const-wide v7, 0x10c00000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 205
    const-wide v8, 0x10900000006L

    invoke-virtual {p0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 206
    const-wide v9, 0x10900000007L

    invoke-virtual {p0, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 209
    if-eqz v3, :cond_71

    .line 210
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_95

    .line 211
    :cond_71
    if-eqz v4, :cond_78

    .line 212
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_95

    .line 213
    :cond_78
    if-eq v5, v0, :cond_7f

    .line 214
    invoke-static {p1, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_95

    .line 215
    :cond_7f
    if-eqz v7, :cond_88

    .line 216
    const/4 p0, 0x0

    array-length p1, v7

    invoke-static {v7, p0, p1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_95

    .line 217
    :cond_88
    if-eqz v8, :cond_8f

    .line 218
    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_95

    .line 219
    :cond_8f
    if-eqz p0, :cond_a4

    .line 220
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    .line 226
    :goto_95
    if-eqz v2, :cond_9a

    .line 227
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 229
    :cond_9a
    if-eq v1, v0, :cond_a3

    .line 230
    invoke-static {v1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    .line 232
    :cond_a3
    return-object p0

    .line 223
    :cond_a4
    return-object v6
.end method

.method public static blacklist writeAbsoluteSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AbsoluteSizeSpan;)V
    .registers 5

    .line 679
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 680
    const-wide v0, 0x10800000002L

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 681
    return-void
.end method

.method public static blacklist writeAccessibilityClickableSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityClickableSpan;)V
    .registers 4

    .line 705
    nop

    .line 708
    invoke-virtual {p1}, Landroid/text/style/AccessibilityClickableSpan;->getOriginalClickableSpanId()I

    move-result p1

    .line 705
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 709
    return-void
.end method

.method public static blacklist writeAccessibilityReplacementSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityReplacementSpan;)V
    .registers 4

    .line 735
    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 737
    invoke-virtual {p1}, Landroid/text/style/AccessibilityReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    .line 738
    if-eqz p1, :cond_12

    .line 739
    invoke-static {p0, p1}, Landroid/widget/RemoteViewsSerializers;->writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V

    .line 741
    :cond_12
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 742
    return-void
.end method

.method public static blacklist writeAccessibilityURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityURLSpan;)V
    .registers 4

    .line 763
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/AccessibilityURLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 764
    return-void
.end method

.method public static blacklist writeAlignmentSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AlignmentSpan$Standard;)V
    .registers 4

    .line 786
    nop

    .line 787
    invoke-virtual {p1}, Landroid/text/style/AlignmentSpan$Standard;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object p1

    .line 786
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 788
    return-void
.end method

.method public static blacklist writeAnnotationToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/Annotation;)V
    .registers 5

    .line 811
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 812
    const-wide v0, 0x10900000002L

    invoke-virtual {p1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 813
    return-void
.end method

.method public static blacklist writeBackgroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BackgroundColorSpan;)V
    .registers 4

    .line 834
    nop

    .line 835
    invoke-virtual {p1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p1

    .line 834
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 836
    return-void
.end method

.method public static blacklist writeBulletSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BulletSpan;)V
    .registers 5

    .line 869
    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getBulletRadius()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 870
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 871
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getGapWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 872
    const-wide v0, 0x10800000004L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getWantColor()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 873
    return-void
.end method

.method public static blacklist writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V
    .registers 12

    .line 295
    const-wide v0, 0x10900000001L

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 296
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_317

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 298
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 299
    array-length v1, p1

    :goto_1f
    if-ge v2, v1, :cond_316

    aget-object v3, p1, v2

    .line 300
    nop

    .line 301
    instance-of v4, v3, Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_30

    .line 302
    move-object v4, v3

    check-cast v4, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    goto :goto_31

    .line 301
    :cond_30
    move-object v4, v3

    .line 305
    :goto_31
    const-wide v5, 0x20b00000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 306
    const-wide v7, 0x10500000001L

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 307
    const-wide v7, 0x10500000002L

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 308
    const-wide v7, 0x10500000003L

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 310
    instance-of v3, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v3, :cond_75

    check-cast v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 311
    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 312
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAbsoluteSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AbsoluteSizeSpan;)V

    .line 313
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 314
    goto/16 :goto_30f

    :cond_75
    instance-of v3, v4, Landroid/text/style/AccessibilityClickableSpan;

    if-eqz v3, :cond_8c

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    .line 315
    const-wide v7, 0x20b00000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 317
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityClickableSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityClickableSpan;)V

    .line 318
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 319
    goto/16 :goto_30f

    :cond_8c
    instance-of v3, v4, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v3, :cond_a3

    check-cast v4, Landroid/text/style/AccessibilityReplacementSpan;

    .line 320
    const-wide v7, 0x20b00000006L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 322
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityReplacementSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityReplacementSpan;)V

    .line 323
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 324
    goto/16 :goto_30f

    :cond_a3
    instance-of v3, v4, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v3, :cond_ba

    check-cast v4, Landroid/text/style/AccessibilityURLSpan;

    .line 325
    const-wide v7, 0x20b00000007L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 327
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityURLSpan;)V

    .line 328
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 329
    goto/16 :goto_30f

    :cond_ba
    instance-of v3, v4, Landroid/text/Annotation;

    if-eqz v3, :cond_d1

    check-cast v4, Landroid/text/Annotation;

    .line 330
    const-wide v7, 0x20b00000009L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 331
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAnnotationToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/Annotation;)V

    .line 332
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 333
    goto/16 :goto_30f

    :cond_d1
    instance-of v3, v4, Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_e8

    check-cast v4, Landroid/text/style/BackgroundColorSpan;

    .line 334
    const-wide v7, 0x20b0000000aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 336
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeBackgroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BackgroundColorSpan;)V

    .line 337
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 338
    goto/16 :goto_30f

    :cond_e8
    instance-of v3, v4, Landroid/text/style/BulletSpan;

    if-eqz v3, :cond_ff

    check-cast v4, Landroid/text/style/BulletSpan;

    .line 339
    const-wide v7, 0x20b0000000bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 340
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeBulletSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BulletSpan;)V

    .line 341
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 342
    goto/16 :goto_30f

    :cond_ff
    instance-of v3, v4, Landroid/text/style/EasyEditSpan;

    if-eqz v3, :cond_116

    check-cast v4, Landroid/text/style/EasyEditSpan;

    .line 343
    const-wide v7, 0x20b0000000cL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 344
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeEasyEditSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/EasyEditSpan;)V

    .line 345
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 346
    goto/16 :goto_30f

    :cond_116
    instance-of v3, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_12d

    check-cast v4, Landroid/text/style/ForegroundColorSpan;

    .line 347
    const-wide v7, 0x20b0000000dL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 349
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeForegroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ForegroundColorSpan;)V

    .line 350
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 351
    goto/16 :goto_30f

    :cond_12d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v3

    if-eqz v3, :cond_14a

    instance-of v3, v4, Landroid/text/style/LineBreakConfigSpan;

    if-eqz v3, :cond_14a

    check-cast v4, Landroid/text/style/LineBreakConfigSpan;

    .line 352
    const-wide v7, 0x20b00000010L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 353
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLineBreakConfigSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBreakConfigSpan;)V

    .line 354
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 355
    goto/16 :goto_30f

    :cond_14a
    instance-of v3, v4, Landroid/text/style/LocaleSpan;

    if-eqz v3, :cond_161

    check-cast v4, Landroid/text/style/LocaleSpan;

    .line 356
    const-wide v7, 0x20b00000012L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 357
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLocaleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LocaleSpan;)V

    .line 358
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 359
    goto/16 :goto_30f

    :cond_161
    instance-of v3, v4, Landroid/text/style/QuoteSpan;

    if-eqz v3, :cond_178

    check-cast v4, Landroid/text/style/QuoteSpan;

    .line 360
    const-wide v7, 0x20b00000013L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 361
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeQuoteSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/QuoteSpan;)V

    .line 362
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 363
    goto/16 :goto_30f

    :cond_178
    instance-of v3, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v3, :cond_18f

    check-cast v4, Landroid/text/style/RelativeSizeSpan;

    .line 364
    const-wide v7, 0x20b00000014L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 365
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeRelativeSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/RelativeSizeSpan;)V

    .line 366
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 367
    goto/16 :goto_30f

    :cond_18f
    instance-of v3, v4, Landroid/text/style/ScaleXSpan;

    if-eqz v3, :cond_1a6

    check-cast v4, Landroid/text/style/ScaleXSpan;

    .line 368
    const-wide v7, 0x20b00000015L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 369
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeScaleXSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ScaleXSpan;)V

    .line 370
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 371
    goto/16 :goto_30f

    :cond_1a6
    instance-of v3, v4, Landroid/text/style/SpellCheckSpan;

    if-eqz v3, :cond_1bd

    check-cast v4, Landroid/text/style/SpellCheckSpan;

    .line 372
    const-wide v7, 0x20b00000016L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 373
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSpellCheckSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SpellCheckSpan;)V

    .line 374
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 375
    goto/16 :goto_30f

    :cond_1bd
    instance-of v3, v4, Landroid/text/style/LineBackgroundSpan$Standard;

    if-eqz v3, :cond_1d4

    check-cast v4, Landroid/text/style/LineBackgroundSpan$Standard;

    .line 376
    const-wide v7, 0x20b0000000fL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 378
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLineBackgroundSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBackgroundSpan$Standard;)V

    .line 379
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 380
    goto/16 :goto_30f

    :cond_1d4
    instance-of v3, v4, Landroid/text/style/LineHeightSpan$Standard;

    if-eqz v3, :cond_1eb

    check-cast v4, Landroid/text/style/LineHeightSpan$Standard;

    .line 381
    const-wide v7, 0x20b00000011L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 382
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLineHeightSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineHeightSpan$Standard;)V

    .line 383
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 384
    goto/16 :goto_30f

    :cond_1eb
    instance-of v3, v4, Landroid/text/style/LeadingMarginSpan$Standard;

    if-eqz v3, :cond_202

    check-cast v4, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 385
    const-wide v7, 0x20b0000000eL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 386
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLeadingMarginSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LeadingMarginSpan$Standard;)V

    .line 387
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 388
    goto/16 :goto_30f

    :cond_202
    instance-of v3, v4, Landroid/text/style/AlignmentSpan$Standard;

    if-eqz v3, :cond_219

    check-cast v4, Landroid/text/style/AlignmentSpan$Standard;

    .line 389
    const-wide v7, 0x20b00000008L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 390
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAlignmentSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AlignmentSpan$Standard;)V

    .line 391
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 392
    goto/16 :goto_30f

    :cond_219
    instance-of v3, v4, Landroid/text/style/StrikethroughSpan;

    if-eqz v3, :cond_230

    check-cast v4, Landroid/text/style/StrikethroughSpan;

    .line 393
    const-wide v7, 0x20b00000017L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 394
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeStrikethroughSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StrikethroughSpan;)V

    .line 395
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 396
    goto/16 :goto_30f

    :cond_230
    instance-of v3, v4, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_247

    check-cast v4, Landroid/text/style/StyleSpan;

    .line 397
    const-wide v7, 0x20b00000018L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 398
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeStyleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StyleSpan;)V

    .line 399
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 400
    goto/16 :goto_30f

    :cond_247
    instance-of v3, v4, Landroid/text/style/SubscriptSpan;

    if-eqz v3, :cond_25e

    check-cast v4, Landroid/text/style/SubscriptSpan;

    .line 401
    const-wide v7, 0x20b00000019L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 402
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSubscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SubscriptSpan;)V

    .line 403
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 404
    goto/16 :goto_30f

    :cond_25e
    instance-of v3, v4, Landroid/text/style/SuggestionRangeSpan;

    if-eqz v3, :cond_275

    check-cast v4, Landroid/text/style/SuggestionRangeSpan;

    .line 405
    const-wide v7, 0x20b0000001bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 407
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSuggestionRangeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionRangeSpan;)V

    .line 408
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 409
    goto/16 :goto_30f

    :cond_275
    instance-of v3, v4, Landroid/text/style/SuggestionSpan;

    if-eqz v3, :cond_28c

    check-cast v4, Landroid/text/style/SuggestionSpan;

    .line 410
    const-wide v7, 0x20b0000001aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 411
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSuggestionSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionSpan;)V

    .line 412
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 413
    goto/16 :goto_30f

    :cond_28c
    instance-of v3, v4, Landroid/text/style/SuperscriptSpan;

    if-eqz v3, :cond_2a2

    check-cast v4, Landroid/text/style/SuperscriptSpan;

    .line 414
    const-wide v7, 0x20b0000001cL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 415
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSuperscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuperscriptSpan;)V

    .line 416
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 417
    goto :goto_30f

    :cond_2a2
    instance-of v3, v4, Landroid/text/style/TextAppearanceSpan;

    if-eqz v3, :cond_2b8

    check-cast v4, Landroid/text/style/TextAppearanceSpan;

    .line 418
    const-wide v7, 0x20b0000001dL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 420
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeTextAppearanceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TextAppearanceSpan;)V

    .line 421
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 422
    goto :goto_30f

    :cond_2b8
    instance-of v3, v4, Landroid/text/style/TtsSpan;

    if-eqz v3, :cond_2ce

    check-cast v4, Landroid/text/style/TtsSpan;

    .line 423
    const-wide v7, 0x20b0000001eL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 424
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeTtsSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TtsSpan;)V

    .line 425
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 426
    goto :goto_30f

    :cond_2ce
    instance-of v3, v4, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_2e4

    check-cast v4, Landroid/text/style/TypefaceSpan;

    .line 427
    const-wide v7, 0x20b0000001fL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 428
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeTypefaceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TypefaceSpan;)V

    .line 429
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 430
    goto :goto_30f

    :cond_2e4
    instance-of v3, v4, Landroid/text/style/URLSpan;

    if-eqz v3, :cond_2fa

    check-cast v4, Landroid/text/style/URLSpan;

    .line 431
    const-wide v7, 0x20b00000021L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 432
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/URLSpan;)V

    .line 433
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 434
    goto :goto_30f

    :cond_2fa
    instance-of v3, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_30f

    check-cast v4, Landroid/text/style/UnderlineSpan;

    .line 435
    const-wide v7, 0x20b00000020L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 436
    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeUnderlineSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/UnderlineSpan;)V

    .line 437
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 439
    :cond_30f
    :goto_30f
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    .line 441
    :cond_316
    return-void

    .line 296
    :cond_317
    return-void
.end method

.method public static blacklist writeDurationToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Duration;)V
    .registers 6

    .line 267
    const-wide v0, 0x10300000001L

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 268
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 269
    return-void
.end method

.method public static blacklist writeEasyEditSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/EasyEditSpan;)V
    .registers 2

    .line 881
    return-void
.end method

.method public static blacklist writeForegroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ForegroundColorSpan;)V
    .registers 4

    .line 931
    nop

    .line 932
    invoke-virtual {p1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p1

    .line 931
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 933
    return-void
.end method

.method public static blacklist writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;)V
    .registers 6

    .line 99
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 100
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 101
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 104
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 105
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_c0

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Tried to serialize unknown Icon type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteViews"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 129
    :pswitch_4f
    const-wide v0, 0x10900000007L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 130
    goto :goto_be

    .line 112
    :pswitch_5c
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    .line 114
    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    const-wide v0, 0x10c00000008L

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 116
    goto :goto_be

    .line 126
    :pswitch_77
    const-wide v0, 0x10900000006L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 127
    goto :goto_be

    .line 123
    :pswitch_84
    const-wide v0, 0x10c00000005L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 124
    goto :goto_be

    .line 118
    :pswitch_91
    nop

    .line 120
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-wide v0, 0x10900000004L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 121
    goto :goto_be

    .line 107
    :pswitch_a3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 109
    const-wide v0, 0x10c00000003L

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 110
    nop

    .line 134
    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_91
        :pswitch_84
        :pswitch_77
        :pswitch_5c
        :pswitch_4f
    .end packed-switch
.end method

.method public static blacklist writeInstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Instant;)V
    .registers 6

    .line 239
    const-wide v0, 0x10300000001L

    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 240
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 241
    return-void
.end method

.method public static blacklist writeLeadingMarginSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LeadingMarginSpan$Standard;)V
    .registers 5

    .line 923
    nop

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/style/LeadingMarginSpan$Standard;->getLeadingMargin(Z)I

    move-result v0

    .line 923
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 925
    nop

    .line 926
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/style/LeadingMarginSpan$Standard;->getLeadingMargin(Z)I

    move-result p1

    .line 925
    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 927
    return-void
.end method

.method public static blacklist writeLineBackgroundSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBackgroundSpan$Standard;)V
    .registers 4

    .line 954
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/LineBackgroundSpan$Standard;->getColor()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 955
    return-void
.end method

.method public static blacklist writeLineBreakConfigSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBreakConfigSpan;)V
    .registers 5

    .line 992
    nop

    .line 993
    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v0

    .line 992
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 994
    nop

    .line 995
    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v0

    .line 994
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 996
    nop

    .line 997
    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/text/LineBreakConfig;->getHyphenation()I

    move-result p1

    .line 996
    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 998
    return-void
.end method

.method public static blacklist writeLineHeightSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineHeightSpan$Standard;)V
    .registers 4

    .line 1019
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/LineHeightSpan$Standard;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1020
    return-void
.end method

.method public static blacklist writeLocaleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LocaleSpan;)V
    .registers 4

    .line 1040
    nop

    .line 1041
    invoke-virtual {p1}, Landroid/text/style/LocaleSpan;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 1040
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1042
    return-void
.end method

.method public static blacklist writeQuoteSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/QuoteSpan;)V
    .registers 5

    .line 1069
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1070
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getStripeWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1071
    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getGapWidth()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1072
    return-void
.end method

.method public static blacklist writeRelativeSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/RelativeSizeSpan;)V
    .registers 4

    .line 1094
    const-wide v0, 0x10200000001L

    invoke-virtual {p1}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1095
    return-void
.end method

.method public static blacklist writeScaleXSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ScaleXSpan;)V
    .registers 4

    .line 1114
    const-wide v0, 0x10200000001L

    invoke-virtual {p1}, Landroid/text/style/ScaleXSpan;->getScaleX()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1115
    return-void
.end method

.method public static blacklist writeSpellCheckSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SpellCheckSpan;)V
    .registers 2

    .line 1123
    return-void
.end method

.method public static blacklist writeStrikethroughSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StrikethroughSpan;)V
    .registers 2

    .line 1131
    return-void
.end method

.method public static blacklist writeStyleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StyleSpan;)V
    .registers 5

    .line 1155
    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1156
    nop

    .line 1157
    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result p1

    .line 1156
    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1158
    return-void
.end method

.method public static blacklist writeSubscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SubscriptSpan;)V
    .registers 2

    .line 1166
    return-void
.end method

.method public static blacklist writeSuggestionRangeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionRangeSpan;)V
    .registers 4

    .line 1190
    nop

    .line 1191
    invoke-virtual {p1}, Landroid/text/style/SuggestionRangeSpan;->getBackgroundColor()I

    move-result p1

    .line 1190
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1192
    return-void
.end method

.method public static blacklist writeSuggestionSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionSpan;)V
    .registers 8

    .line 1296
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 1297
    const-wide v4, 0x20900000001L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1299
    :cond_15
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1300
    nop

    .line 1301
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 1300
    const-wide v1, 0x10900000003L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1302
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1303
    nop

    .line 1304
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 1303
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1306
    :cond_45
    const-wide v0, 0x10500000005L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1307
    nop

    .line 1308
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getEasyCorrectUnderlineColor()I

    move-result v0

    .line 1307
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1309
    nop

    .line 1310
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getEasyCorrectUnderlineThickness()F

    move-result v0

    .line 1309
    const-wide v1, 0x10200000007L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1311
    nop

    .line 1312
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getMisspelledUnderlineColor()I

    move-result v0

    .line 1311
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1313
    nop

    .line 1314
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getMisspelledUnderlineThickness()F

    move-result v0

    .line 1313
    const-wide v1, 0x10200000009L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1315
    nop

    .line 1316
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getAutoCorrectionUnderlineColor()I

    move-result v0

    .line 1315
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1317
    nop

    .line 1318
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getAutoCorrectionUnderlineThickness()F

    move-result v0

    .line 1317
    const-wide v1, 0x1020000000bL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1319
    nop

    .line 1320
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getGrammarErrorUnderlineColor()I

    move-result v0

    .line 1319
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1321
    nop

    .line 1322
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getGrammarErrorUnderlineThickness()F

    move-result p1

    .line 1321
    const-wide v0, 0x1020000000dL

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1323
    return-void
.end method

.method public static blacklist writeSuperscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuperscriptSpan;)V
    .registers 2

    .line 1331
    return-void
.end method

.method public static blacklist writeTextAppearanceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TextAppearanceSpan;)V
    .registers 5

    .line 1446
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1447
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1448
    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1449
    nop

    .line 1450
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextFontWeight()I

    move-result v0

    .line 1449
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1451
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1452
    nop

    .line 1453
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1452
    const-wide v1, 0x10900000008L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1455
    :cond_48
    nop

    .line 1456
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowRadius()F

    move-result v0

    .line 1455
    const-wide v1, 0x10200000009L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1457
    const-wide v0, 0x1020000000aL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowDx()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1458
    const-wide v0, 0x1020000000bL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1459
    nop

    .line 1460
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowColor()I

    move-result v0

    .line 1459
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1461
    nop

    .line 1462
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->hasElegantTextHeight()Z

    move-result v0

    .line 1461
    const-wide v1, 0x1080000000dL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1463
    nop

    .line 1464
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->isElegantTextHeight()Z

    move-result v0

    .line 1463
    const-wide v1, 0x1080000000eL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1465
    nop

    .line 1466
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->hasLetterSpacing()Z

    move-result v0

    .line 1465
    const-wide v1, 0x1080000000fL

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1467
    nop

    .line 1468
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLetterSpacing()F

    move-result v0

    .line 1467
    const-wide v1, 0x10200000010L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1469
    nop

    .line 1470
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    .line 1469
    const-wide v1, 0x10900000011L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1471
    nop

    .line 1472
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    .line 1471
    const-wide v1, 0x10900000012L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1473
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 1474
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1476
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1477
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1479
    :cond_e1
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_fa

    .line 1480
    const-wide v0, 0x10b00000005L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1482
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1483
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1485
    :cond_fa
    return-void
.end method

.method public static blacklist writeTtsSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TtsSpan;)V
    .registers 5

    .line 1509
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1510
    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getArgs()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1511
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1513
    :try_start_17
    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getArgs()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_2e

    .line 1516
    nop

    .line 1517
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_35

    .line 1514
    :catch_2e
    move-exception p0

    .line 1515
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1519
    :cond_35
    :goto_35
    return-void
.end method

.method public static blacklist writeTypefaceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TypefaceSpan;)V
    .registers 4

    .line 1538
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1539
    return-void
.end method

.method public static blacklist writeURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/URLSpan;)V
    .registers 4

    .line 1557
    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1558
    return-void
.end method

.method public static blacklist writeUnderlineSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/UnderlineSpan;)V
    .registers 2

    .line 1566
    return-void
.end method
