.class Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .registers 5

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 868
    if-nez v1, :cond_c

    .line 869
    const/4 p1, 0x0

    return-object p1

    .line 872
    :cond_c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 873
    return-object v1

    .line 876
    :cond_10
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 879
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    if-nez v1, :cond_1d

    .line 882
    nop

    .line 1016
    return-object v0

    .line 885
    :cond_1d
    packed-switch v1, :pswitch_data_10a

    .line 1011
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus span encoding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1007
    :pswitch_39
    sget-object v1, Landroid/text/style/NoWritingToolsSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 1008
    goto/16 :goto_104

    .line 1003
    :pswitch_41
    sget-object v1, Landroid/text/style/LineBreakConfigSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 1004
    goto/16 :goto_104

    .line 999
    :pswitch_49
    new-instance v1, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Landroid/os/Parcel;)V

    .line 1000
    goto/16 :goto_104

    .line 995
    :pswitch_50
    new-instance v1, Landroid/text/style/LineHeightSpan$Standard;

    invoke-direct {v1, p1}, Landroid/text/style/LineHeightSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 996
    goto/16 :goto_104

    .line 991
    :pswitch_57
    new-instance v1, Landroid/text/style/LineBackgroundSpan$Standard;

    invoke-direct {v1, p1}, Landroid/text/style/LineBackgroundSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 992
    goto/16 :goto_104

    .line 987
    :pswitch_5e
    new-instance v1, Landroid/text/style/AccessibilityURLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/os/Parcel;)V

    .line 988
    goto/16 :goto_104

    .line 983
    :pswitch_65
    new-instance v1, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    .line 984
    goto/16 :goto_104

    .line 979
    :pswitch_6c
    new-instance v1, Landroid/text/style/TtsSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan;-><init>(Landroid/os/Parcel;)V

    .line 980
    goto/16 :goto_104

    .line 975
    :pswitch_73
    new-instance v1, Landroid/text/style/LocaleSpan;

    invoke-direct {v1, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    .line 976
    goto/16 :goto_104

    .line 971
    :pswitch_7a
    new-instance v1, Landroid/text/style/EasyEditSpan;

    invoke-direct {v1, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    .line 972
    goto/16 :goto_104

    .line 967
    :pswitch_81
    new-instance v1, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    .line 968
    goto/16 :goto_104

    .line 963
    :pswitch_88
    new-instance v1, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    .line 964
    goto/16 :goto_104

    .line 959
    :pswitch_8f
    new-instance v1, Landroid/text/style/SuggestionSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    .line 960
    goto/16 :goto_104

    .line 955
    :pswitch_96
    new-instance v1, Landroid/text/Annotation;

    invoke-direct {v1, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    .line 956
    goto/16 :goto_104

    .line 951
    :pswitch_9d
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    .line 952
    goto/16 :goto_104

    .line 947
    :pswitch_a4
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    .line 948
    goto :goto_104

    .line 943
    :pswitch_aa
    new-instance v1, Landroid/text/style/SubscriptSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    .line 944
    goto :goto_104

    .line 939
    :pswitch_b0
    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    .line 940
    goto :goto_104

    .line 935
    :pswitch_b6
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    .line 936
    goto :goto_104

    .line 931
    :pswitch_bc
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    .line 932
    goto :goto_104

    .line 927
    :pswitch_c2
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 928
    goto :goto_104

    .line 923
    :pswitch_c8
    new-instance v1, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 924
    goto :goto_104

    .line 919
    :pswitch_ce
    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    .line 920
    goto :goto_104

    .line 915
    :pswitch_d4
    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 916
    goto :goto_104

    .line 911
    :pswitch_da
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    .line 912
    goto :goto_104

    .line 907
    :pswitch_e0
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    .line 908
    goto :goto_104

    .line 903
    :pswitch_e6
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    .line 904
    goto :goto_104

    .line 899
    :pswitch_ec
    new-instance v1, Landroid/text/style/ScaleXSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    .line 900
    goto :goto_104

    .line 895
    :pswitch_f2
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    .line 896
    goto :goto_104

    .line 891
    :pswitch_f8
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    .line 892
    goto :goto_104

    .line 887
    :pswitch_fe
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v1, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    .line 888
    nop

    .line 1013
    :goto_104
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->-$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 1014
    goto/16 :goto_15

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_f8
        :pswitch_f2
        :pswitch_ec
        :pswitch_e6
        :pswitch_e0
        :pswitch_da
        :pswitch_d4
        :pswitch_ce
        :pswitch_c8
        :pswitch_c2
        :pswitch_bc
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a4
        :pswitch_9d
        :pswitch_96
        :pswitch_8f
        :pswitch_88
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_57
        :pswitch_50
        :pswitch_49
        :pswitch_41
        :pswitch_39
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 859
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Ljava/lang/CharSequence;
    .registers 2

    .line 1021
    new-array p1, p1, [Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 859
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
