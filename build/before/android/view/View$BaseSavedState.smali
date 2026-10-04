.class public Landroid/view/View$BaseSavedState;
.super Landroid/view/AbsSavedState;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSavedState"
.end annotation


# static fields
.field static final greylist-max-o AUTOFILL_ID:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/View$BaseSavedState;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o IS_AUTOFILLED:I = 0x2

.field static final greylist-max-o START_ACTIVITY_REQUESTED_WHO_SAVED:I = 0x1


# instance fields
.field greylist-max-o mAutofillViewId:I

.field blacklist mHideHighlight:Z

.field greylist-max-o mIsAutofilled:Z

.field greylist-max-o mSavedData:I

.field greylist-max-o mStartActivityRequestWhoSaved:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32341
    new-instance v0, Landroid/view/View$BaseSavedState$1;

    invoke-direct {v0}, Landroid/view/View$BaseSavedState$1;-><init>()V

    sput-object v0, Landroid/view/View$BaseSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 32302
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 32303
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 32313
    invoke-direct {p0, p1, p2}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 32314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/view/View$BaseSavedState;->mSavedData:I

    .line 32315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/view/View$BaseSavedState;->mStartActivityRequestWhoSaved:Ljava/lang/String;

    .line 32316
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    iput-boolean p2, p0, Landroid/view/View$BaseSavedState;->mIsAutofilled:Z

    .line 32317
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    iput-boolean p2, p0, Landroid/view/View$BaseSavedState;->mHideHighlight:Z

    .line 32318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/View$BaseSavedState;->mAutofillViewId:I

    .line 32319
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 32327
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 32328
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 32332
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32334
    iget p2, p0, Landroid/view/View$BaseSavedState;->mSavedData:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32335
    iget-object p2, p0, Landroid/view/View$BaseSavedState;->mStartActivityRequestWhoSaved:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32336
    iget-boolean p2, p0, Landroid/view/View$BaseSavedState;->mIsAutofilled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32337
    iget-boolean p2, p0, Landroid/view/View$BaseSavedState;->mHideHighlight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32338
    iget p2, p0, Landroid/view/View$BaseSavedState;->mAutofillViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32339
    return-void
.end method
