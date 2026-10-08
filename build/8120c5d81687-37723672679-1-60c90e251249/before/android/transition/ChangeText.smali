.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final greylist-max-o CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final greylist-max-o CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final greylist-max-o PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final greylist-max-o PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mChangeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I
    .registers 1

    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 93
    const-string v0, "android:textchange:textSelectionStart"

    const-string v1, "android:textchange:textSelectionEnd"

    const-string v2, "android:textchange:text"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 6

    .line 131
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 132
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 133
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textchange:text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_37

    .line 135
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    const-string v3, "android:textchange:textSelectionStart"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    const-string v3, "android:textchange:textSelectionEnd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_37
    iget v1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-lez v1, :cond_4a

    .line 141
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:textchange:textColor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_4a
    return-void
.end method

.method private greylist-max-o setSelection(Landroid/widget/EditText;II)V
    .registers 4

    .line 314
    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    .line 315
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 317
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    .line 154
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 148
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    .line 149
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 21

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_179

    if-eqz v2, :cond_179

    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_179

    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-nez v3, :cond_1a

    const/16 p1, 0x0

    goto/16 :goto_17b

    .line 165
    :cond_1a
    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 166
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 167
    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 168
    const-string v4, "android:textchange:text"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_34

    .line 169
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move-object v7, v5

    goto :goto_35

    :cond_34
    move-object v7, v6

    .line 170
    :goto_35
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 171
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_44

    :cond_43
    nop

    :goto_44
    move-object v4, v6

    .line 173
    instance-of v5, v3, Landroid/widget/EditText;

    const/4 v6, -0x1

    if-eqz v5, :cond_99

    .line 174
    const-string v9, "android:textchange:textSelectionStart"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5d

    .line 175
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_5e

    :cond_5d
    move v10, v6

    .line 176
    :goto_5e
    const-string v11, "android:textchange:textSelectionEnd"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_71

    .line 177
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_72

    :cond_71
    move v12, v10

    .line 178
    :goto_72
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_83

    .line 179
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_84

    :cond_83
    nop

    .line 180
    :goto_84
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_95

    .line 181
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_96

    :cond_95
    move v9, v6

    :goto_96
    move v11, v9

    move v9, v12

    goto :goto_9c

    .line 183
    :cond_99
    move v9, v6

    move v10, v9

    move v11, v10

    .line 185
    :goto_9c
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_176

    .line 188
    iget v12, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_b2

    .line 189
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    if-eqz v5, :cond_b2

    .line 191
    move-object v5, v3

    check-cast v5, Landroid/widget/EditText;

    invoke-direct {v1, v5, v10, v9}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    .line 195
    :cond_b2
    iget v5, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v12, 0x0

    if-nez v5, :cond_cf

    .line 196
    nop

    .line 197
    new-array v0, v13, [F

    fill-array-data v0, :array_17c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 198
    new-instance v0, Landroid/transition/ChangeText$1;

    move v5, v6

    move-object v2, v7

    move v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v11, v8

    goto/16 :goto_166

    .line 211
    :cond_cf
    move v5, v6

    move v6, v11

    const-string v11, "android:textchange:textColor"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 214
    nop

    .line 215
    iget v11, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v14, 0x1

    const/4 v15, 0x3

    if-eq v11, v15, :cond_fc

    iget v11, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-ne v11, v14, :cond_f3

    goto :goto_fc

    :cond_f3
    move-object/from16 p1, v7

    move v7, v2

    move-object/from16 v2, p1

    const/16 p1, 0x0

    const/4 v8, 0x0

    goto :goto_120

    .line 217
    :cond_fc
    :goto_fc
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    filled-new-array {v11, v12}, [I

    move-result-object v11

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 218
    const/16 p1, 0x0

    new-instance v8, Landroid/transition/ChangeText$2;

    invoke-direct {v8, v1, v3, v0}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v11, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    new-instance v0, Landroid/transition/ChangeText$3;

    move-object/from16 v16, v7

    move v7, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v8, v11

    .line 241
    :goto_120
    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-eq v0, v15, :cond_12c

    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-ne v0, v13, :cond_129

    goto :goto_12c

    :cond_129
    move-object/from16 v0, p1

    goto :goto_148

    .line 243
    :cond_12c
    :goto_12c
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    filled-new-array {v12, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 244
    new-instance v11, Landroid/transition/ChangeText$4;

    invoke-direct {v11, v1, v3, v7}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    new-instance v11, Landroid/transition/ChangeText$5;

    invoke-direct {v11, v1, v3, v7}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    :goto_148
    if-eqz v8, :cond_15f

    if-eqz v0, :cond_15f

    .line 260
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    move-object v15, v11

    check-cast v15, Landroid/animation/AnimatorSet;

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v8, v13, v12

    aput-object v0, v13, v14

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    move v12, v7

    goto :goto_166

    .line 262
    :cond_15f
    if-eqz v8, :cond_164

    .line 263
    move v12, v7

    move-object v11, v8

    goto :goto_166

    .line 266
    :cond_164
    move-object v11, v0

    move v12, v7

    .line 269
    :goto_166
    new-instance v0, Landroid/transition/ChangeText$6;

    move-object v7, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v8, v10

    move v6, v12

    invoke-direct/range {v0 .. v9}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    .line 304
    invoke-virtual {v1, v0}, Landroid/transition/ChangeText;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 308
    return-object v11

    .line 310
    :cond_176
    const/16 p1, 0x0

    return-object p1

    .line 161
    :cond_179
    const/16 p1, 0x0

    .line 163
    :goto_17b
    return-object p1

    :array_17c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getChangeBehavior()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 117
    sget-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setChangeBehavior(I)Landroid/transition/ChangeText;
    .registers 3

    .line 109
    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    .line 110
    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 112
    :cond_7
    return-object p0
.end method
