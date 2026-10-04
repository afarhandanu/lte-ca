.class Landroid/widget/Editor$SuggestionHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
    }
.end annotation


# instance fields
.field private final greylist-max-o mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4037
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4038
    new-instance p1, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor-IA;)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 4040
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .registers 9

    .line 4078
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4079
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 4080
    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 4082
    iget-object v2, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 4083
    array-length v2, v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_3e

    aget-object v4, v0, v3

    .line 4084
    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 4085
    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 4086
    iget-object v7, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4083
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 4092
    :cond_3e
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4093
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4095
    return-object v0
.end method


# virtual methods
.method public greylist-max-o getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .registers 19

    .line 4108
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 4109
    invoke-direct {v2}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 4110
    array-length v4, v2

    .line 4111
    const/4 v5, 0x0

    if-nez v4, :cond_1b

    return v5

    .line 4113
    :cond_1b
    nop

    .line 4114
    array-length v4, v2

    move v6, v5

    move v7, v6

    :goto_1f
    if-ge v6, v4, :cond_95

    aget-object v8, v2, v6

    .line 4115
    invoke-interface {v3, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 4116
    invoke-interface {v3, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 4118
    if-eqz v1, :cond_3b

    .line 4119
    invoke-virtual {v8}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0xa

    if-eqz v11, :cond_3b

    .line 4120
    iput-object v8, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 4121
    iput v9, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4122
    iput v10, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 4125
    :cond_3b
    invoke-virtual {v8}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v11

    .line 4126
    array-length v12, v11

    .line 4128
    move v13, v5

    :goto_41
    if-ge v13, v12, :cond_90

    .line 4129
    aget-object v14, v11, v13

    .line 4130
    move v15, v5

    :goto_46
    if-ge v15, v7, :cond_6a

    .line 4131
    aget-object v5, v0, v15

    .line 4132
    iget-object v1, v5, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4133
    iget-object v1, v5, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v1, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4135
    iget-object v5, v5, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v5, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 4137
    if-ne v9, v1, :cond_64

    if-ne v10, v5, :cond_64

    .line 4138
    const/4 v5, 0x0

    goto :goto_8b

    .line 4130
    :cond_64
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    const/4 v5, 0x0

    goto :goto_46

    .line 4143
    :cond_6a
    aget-object v1, v0, v7

    .line 4144
    invoke-virtual {v1, v8, v9, v10}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    .line 4145
    iput v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 4146
    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 4147
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    iput v15, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 4148
    iget-object v15, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v15, v5, v1, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4149
    add-int/lit8 v7, v7, 0x1

    .line 4150
    array-length v1, v0

    if-lt v7, v1, :cond_8b

    .line 4151
    return v7

    .line 4128
    :cond_8b
    :goto_8b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    goto :goto_41

    .line 4114
    :cond_90
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    goto :goto_1f

    .line 4155
    :cond_95
    return v7
.end method
