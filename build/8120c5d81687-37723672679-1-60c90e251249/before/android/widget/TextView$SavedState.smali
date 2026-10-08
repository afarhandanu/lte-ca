.class public Landroid/widget/TextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/TextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o editorState:Landroid/os/ParcelableParcel;

.field greylist-max-o error:Ljava/lang/CharSequence;

.field greylist-max-o frozenWithFocus:Z

.field greylist-max-o selEnd:I

.field greylist-max-o selStart:I

.field greylist text:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16323
    new-instance v0, Landroid/widget/TextView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TextView$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 16335
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 16276
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    .line 16277
    iput v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 16336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    .line 16337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 16338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 16339
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 16341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 16342
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 16345
    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    .line 16346
    sget-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableParcel;

    iput-object p1, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 16348
    :cond_49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/TextView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 16285
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 16276
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$SavedState;->selStart:I

    .line 16277
    iput p1, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 16286
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 16313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16314
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16316
    iget-object v1, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_50

    .line 16317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16319
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 16290
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 16291
    iget v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16292
    iget v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16293
    iget-boolean v0, p0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16294
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 16296
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 16297
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 16299
    :cond_21
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16300
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 16303
    :goto_29
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-nez v0, :cond_31

    .line 16304
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 16306
    :cond_31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16307
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelableParcel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 16309
    :goto_39
    return-void
.end method
