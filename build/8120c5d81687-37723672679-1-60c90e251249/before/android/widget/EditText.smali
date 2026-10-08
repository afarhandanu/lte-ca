.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static final blacklist ID_BOLD:I = 0x102005b

.field private static final blacklist ID_ITALIC:I = 0x102005c

.field private static final blacklist ID_UNDERLINE:I = 0x102005d

.field public static final blacklist LINE_HEIGHT_FOR_LOCALE:J = 0x121465f4L


# instance fields
.field private blacklist mStyleShortcutsEnabled:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 104
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 115
    sget-object v1, Lcom/android/internal/R$styleable;->EditText:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 119
    :try_start_10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 120
    move v3, v0

    :goto_15
    if-ge v3, v2, :cond_28

    .line 121
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 122
    packed-switch v4, :pswitch_data_5e

    goto :goto_25

    .line 124
    :pswitch_1f
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_58

    .line 120
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 129
    :cond_28
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    sget-object v1, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 137
    nop

    .line 138
    const/16 p2, 0x66

    :try_start_37
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    .line 139
    if-eqz p3, :cond_41

    .line 140
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_53

    .line 144
    :cond_41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    nop

    .line 146
    if-nez p3, :cond_4f

    .line 147
    nop

    .line 148
    const-wide/32 p1, 0x121465f4

    invoke-static {p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    .line 150
    :cond_4f
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLocalePreferredLineHeightForMinimumUsed(Z)V

    .line 151
    return-void

    .line 144
    :catchall_53
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    throw p2

    .line 129
    :catchall_58
    move-exception p1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    throw p1

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist performStylingAction(I)Z
    .registers 7

    .line 280
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 281
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 282
    const/4 v2, 0x0

    if-ltz v0, :cond_39

    if-gez v1, :cond_e

    goto :goto_39

    .line 285
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 286
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 289
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 290
    const v4, 0x102005b

    if-ne p1, v4, :cond_24

    .line 291
    invoke-static {v1, v3, v0}, Landroid/text/style/SpanUtils;->toggleBold(Landroid/text/Spannable;II)Z

    move-result p1

    return p1

    .line 292
    :cond_24
    const v4, 0x102005c

    if-ne p1, v4, :cond_2e

    .line 293
    invoke-static {v1, v3, v0}, Landroid/text/style/SpanUtils;->toggleItalic(Landroid/text/Spannable;II)Z

    move-result p1

    return p1

    .line 294
    :cond_2e
    const v4, 0x102005d

    if-ne p1, v4, :cond_38

    .line 295
    invoke-static {v1, v3, v0}, Landroid/text/style/SpanUtils;->toggleUnderline(Landroid/text/Spannable;II)Z

    move-result p1

    return p1

    .line 298
    :cond_38
    return v2

    .line 283
    :cond_39
    :goto_39
    return v2
.end method


# virtual methods
.method public whitelist extendSelection(I)V
    .registers 3

    .line 212
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 213
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 236
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getDefaultEditable()Z
    .registers 2

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .line 165
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFreezesText()Z
    .registers 2

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getText()Landroid/text/Editable;
    .registers 3

    .line 170
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    if-nez v0, :cond_8

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_8
    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_f

    .line 176
    check-cast v0, Landroid/text/Editable;

    return-object v0

    .line 178
    :cond_f
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 179
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 85
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isStyleShortcutEnabled()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 247
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 249
    sparse-switch p1, :sswitch_data_48

    goto :goto_42

    .line 261
    :sswitch_c
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 262
    const p1, 0x102005d

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 256
    :sswitch_1e
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 257
    const p1, 0x102005c

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 251
    :sswitch_30
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 252
    const p1, 0x102005b

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 267
    :cond_42
    :goto_42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_48
    .sparse-switch
        0x1e -> :sswitch_30
        0x25 -> :sswitch_1e
        0x31 -> :sswitch_c
    .end sparse-switch
.end method

.method public whitelist onTextContextMenuItem(I)Z
    .registers 3

    .line 273
    const v0, 0x102005b

    if-eq p1, v0, :cond_15

    const v0, 0x102005c

    if-eq p1, v0, :cond_15

    const v0, 0x102005d

    if-ne p1, v0, :cond_10

    goto :goto_15

    .line 276
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 274
    :cond_15
    :goto_15
    invoke-direct {p0, p1}, Landroid/widget/EditText;->performStylingAction(I)Z

    move-result p1

    return p1
.end method

.method public whitelist selectAll()V
    .registers 2

    .line 205
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 206
    return-void
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3

    .line 227
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_8

    .line 231
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 232
    return-void

    .line 228
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSelection(I)V
    .registers 3

    .line 198
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 199
    return-void
.end method

.method public whitelist setSelection(II)V
    .registers 4

    .line 191
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 192
    return-void
.end method

.method public whitelist setStyleShortcutsEnabled(Z)V
    .registers 2

    .line 307
    iput-boolean p1, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    .line 308
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3

    .line 184
    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 185
    return-void
.end method

.method protected greylist-max-o supportsAutoSizeText()Z
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method
