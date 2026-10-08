.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final greylist-max-o MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final greylist-max-o MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final greylist-max-o mEditor:Landroid/widget/Editor;

.field private greylist-max-o mExpanding:Z

.field private greylist-max-o mHasComposition:Z

.field private greylist-max-o mIsUserEdit:Z

.field private greylist-max-o mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/Editor;)V
    .registers 2

    .line 7552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7553
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 7554
    return-void
.end method

.method private greylist-max-o canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .registers 9

    .line 7704
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 7706
    return v1

    .line 7709
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7711
    return v1

    .line 7717
    :cond_15
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_29

    .line 7724
    :cond_22
    if-ne p2, p3, :cond_27

    if-ne p5, p6, :cond_27

    .line 7726
    return v1

    .line 7729
    :cond_27
    const/4 p1, 0x1

    return p1

    .line 7719
    :cond_29
    :goto_29
    return v1
.end method

.method private greylist-max-o getLastEdit()Landroid/widget/Editor$EditOperation;
    .registers 5

    .line 7661
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 7662
    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$EditOperation;

    return-object v0
.end method

.method private greylist-max-o handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .registers 9

    .line 7642
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 7644
    :cond_b
    if-eqz p7, :cond_f

    .line 7645
    const/4 p7, 0x1

    goto :goto_12

    .line 7647
    :cond_f
    const/4 p7, 0x2

    goto :goto_12

    .line 7643
    :cond_11
    :goto_11
    const/4 p7, 0x0

    .line 7650
    :goto_12
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    .line 7651
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p3

    .line 7652
    move p4, p5

    move-object p5, p1

    new-instance p1, Landroid/widget/Editor$EditOperation;

    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean p6, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-direct/range {p1 .. p6}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 7654
    iget-boolean p2, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz p2, :cond_38

    invoke-static {p1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmNewText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmOldText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 7655
    return-void

    .line 7657
    :cond_38
    invoke-direct {p0, p1, p7}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    .line 7658
    return-void
.end method

.method private static greylist-max-o isComposition(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 7733
    instance-of v0, p0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 7734
    return v1

    .line 7737
    :cond_6
    check-cast p0, Landroid/text/Spannable;

    .line 7738
    invoke-static {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 7739
    invoke-static {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result p0

    .line 7740
    if-ge v0, p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private greylist-max-o isInTextWatcher()Z
    .registers 3

    .line 7744
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7745
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 7746
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 7745
    :goto_19
    return v0
.end method

.method private greylist-max-o recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .registers 7

    .line 7671
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 7672
    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 7673
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v1

    .line 7674
    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 7677
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_43

    .line 7678
    :cond_16
    if-nez p2, :cond_1c

    .line 7682
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_43

    .line 7683
    :cond_1c
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v3, :cond_2d

    .line 7687
    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 7688
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_43

    .line 7689
    :cond_2d
    const/4 v3, 0x2

    if-ne p2, v3, :cond_37

    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->-$$Nest$mmergeWith(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result p2

    if-eqz p2, :cond_37

    goto :goto_43

    .line 7695
    :cond_37
    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 7696
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 7698
    :goto_43
    iget-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7699
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 7700
    return-void
.end method


# virtual methods
.method public greylist-max-o beginBatchEdit()V
    .registers 2

    .line 7575
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7576
    return-void
.end method

.method public greylist-max-o endBatchEdit()V
    .registers 2

    .line 7580
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7581
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7582
    return-void
.end method

.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 16

    .line 7593
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    move-object v1, p1

    move-object p1, p0

    const/4 v8, 0x0

    if-nez v0, :cond_a

    .line 7594
    return-object v8

    .line 7597
    :cond_a
    iget-boolean v0, p1, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7598
    invoke-static {v1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p1, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7599
    iget-boolean v2, p1, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7600
    nop

    .line 7601
    sub-int v3, p3, p2

    sub-int v4, p6, p5

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2c

    .line 7602
    const/4 v6, 0x1

    if-le v3, v4, :cond_21

    move v3, v6

    goto :goto_22

    :cond_21
    move v3, v5

    :goto_22
    iput-boolean v3, p1, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7603
    if-eqz v0, :cond_2c

    iget-boolean v0, p1, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eq v0, v2, :cond_2c

    .line 7604
    move v7, v6

    goto :goto_2d

    .line 7609
    :cond_2c
    move v7, v5

    :goto_2d
    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    .line 7610
    return-object v8
.end method

.method greylist-max-o freezeLastEdit()V
    .registers 3

    .line 7614
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 7615
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    .line 7616
    if-eqz v0, :cond_15

    .line 7617
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fputmFrozen(Landroid/widget/Editor$EditOperation;Z)V

    .line 7619
    :cond_15
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 7620
    return-void
.end method

.method public greylist-max-o restoreInstanceState(Landroid/os/Parcel;)V
    .registers 5

    .line 7564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7568
    return-void
.end method

.method public greylist-max-o saveInstanceState(Landroid/os/Parcel;)V
    .registers 3

    .line 7557
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7558
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7559
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7560
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7561
    return-void
.end method
