.class public Landroid/text/method/CharacterPickerDialog;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
    }
.end annotation


# instance fields
.field private greylist-max-o mCancelButton:Landroid/widget/Button;

.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mInsert:Z

.field private greylist-max-o mOptions:Ljava/lang/String;

.field private greylist-max-o mText:Landroid/text/Editable;

.field private greylist-max-o mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInflater(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;
    .registers 1

    iget-object p0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOptions(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .registers 7

    .line 59
    const v0, 0x1030059

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 61
    iput-object p2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    .line 62
    iput-object p3, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    .line 63
    iput-object p4, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    .line 64
    iput-boolean p5, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    return-void
.end method

.method private greylist-max-o replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .registers 5

    .line 96
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 97
    iget-boolean v1, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    if-nez v1, :cond_15

    if-nez v0, :cond_d

    goto :goto_15

    .line 100
    :cond_d
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1a

    .line 98
    :cond_15
    :goto_15
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 103
    :goto_1a
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 111
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    goto :goto_15

    .line 112
    :cond_8
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_15

    .line 113
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 116
    :cond_15
    :goto_15
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 73
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 74
    const/16 v0, 0x3eb

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 75
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 77
    const p1, 0x1090057

    invoke-virtual {p0, p1}, Landroid/text/method/CharacterPickerDialog;->setContentView(I)V

    .line 79
    const p1, 0x102026e

    invoke-virtual {p0, p1}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 80
    new-instance v0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    const p1, 0x1020266

    invoke-virtual {p0, p1}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 84
    iget-object p1, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 91
    iget-object p1, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
