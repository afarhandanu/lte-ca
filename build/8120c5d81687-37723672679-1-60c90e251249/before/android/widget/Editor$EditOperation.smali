.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TYPE_DELETE:I = 0x1

.field private static final greylist-max-o TYPE_INSERT:I = 0x0

.field private static final greylist-max-o TYPE_REPLACE:I = 0x2


# instance fields
.field private greylist-max-o mFrozen:Z

.field private greylist-max-o mIsComposition:Z

.field private greylist-max-o mNewCursorPos:I

.field private greylist-max-o mNewText:Ljava/lang/String;

.field private greylist-max-o mOldCursorPos:I

.field private greylist-max-o mOldText:Ljava/lang/String;

.field private greylist-max-o mStart:I

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNewText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOldText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrozen(Landroid/widget/Editor$EditOperation;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeWith(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8031
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 7795
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 7796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 7797
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 7798
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 7800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 7801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_31

    move p2, v1

    goto :goto_32

    :cond_31
    move p2, v0

    :goto_32
    iput-boolean p2, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 7803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_3b

    move v0, v1

    :cond_3b
    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7804
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 7

    .line 7774
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 7775
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 7776
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7779
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1f

    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1f

    .line 7780
    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_36

    .line 7781
    :cond_1f
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_33

    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_33

    .line 7782
    const/4 p2, 0x1

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_36

    .line 7784
    :cond_33
    const/4 p2, 0x2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 7787
    :goto_36
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 7789
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 7790
    iget-object p1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7791
    iput-boolean p5, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7792
    return-void
.end method

.method private greylist-max-o getNewTextEnd()I
    .registers 3

    .line 7819
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getOldTextEnd()I
    .registers 3

    .line 7823
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getTypeString()Ljava/lang/String;
    .registers 2

    .line 8007
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_12

    .line 8015
    const-string v0, ""

    return-object v0

    .line 8013
    :pswitch_8
    const-string/jumbo v0, "replace"

    return-object v0

    .line 8011
    :pswitch_c
    const-string v0, "delete"

    return-object v0

    .line 8009
    :pswitch_f
    const-string v0, "insert"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 6

    .line 7903
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 7904
    return v1

    .line 7907
    :cond_7
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-eq v0, v3, :cond_10

    .line 7908
    return v1

    .line 7910
    :cond_10
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 7911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 7912
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7913
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7914
    return v2
.end method

.method private greylist-max-o mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 8

    .line 7877
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_33

    .line 7879
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-eq v0, v3, :cond_f

    .line 7880
    return v2

    .line 7882
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7883
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7884
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 7885
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7886
    return v1

    .line 7888
    :cond_33
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    if-eqz v0, :cond_8c

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8c

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v3, :cond_8c

    .line 7889
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-lt v0, v3, :cond_8c

    .line 7891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7892
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7893
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7894
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7895
    return v1

    .line 7897
    :cond_8c
    return v2
.end method

.method private greylist-max-o mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 8

    .line 7918
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x1

    if-nez v0, :cond_29

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v2, :cond_29

    .line 7920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7921
    iget p1, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput p1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7922
    return v1

    .line 7924
    :cond_29
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    .line 7925
    return v2

    .line 7927
    :cond_2f
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-ne v0, v1, :cond_87

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v3, :cond_87

    .line 7928
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-lt v0, v3, :cond_87

    .line 7930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7931
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7932
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 7933
    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 7935
    :cond_7e
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7936
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7937
    return v1

    .line 7939
    :cond_87
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a9

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v3, :cond_a9

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 7940
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 7942
    iget-object v0, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7943
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7944
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7945
    return v1

    .line 7947
    :cond_a9
    return v2
.end method

.method private greylist-max-o mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 4

    .line 7860
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 7861
    return v1

    .line 7864
    :cond_6
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_1c

    .line 7872
    return v1

    .line 7870
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    move-result p1

    return p1

    .line 7868
    :pswitch_11
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    move-result p1

    return p1

    .line 7866
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method private static greylist-max-o modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .registers 8

    .line 7989
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7990
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1d

    .line 7991
    if-eq p1, p2, :cond_14

    .line 7992
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7994
    :cond_14
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1d

    .line 7995
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8001
    :cond_1d
    if-ltz p5, :cond_28

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p1

    if-gt p5, p1, :cond_28

    .line 8002
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8004
    :cond_28
    return-void
.end method


# virtual methods
.method public greylist-max-o commit()V
    .registers 1

    .line 7828
    return-void
.end method

.method public greylist-max-o forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .registers 10

    .line 7956
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7957
    return-void

    .line 7959
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 7965
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 7966
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7969
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 7972
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7973
    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v4

    iget-object v5, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v6, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v7, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 7977
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 7978
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 7979
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 7980
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 7981
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 7982
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 7984
    return-void
.end method

.method public greylist-max-o redo()V
    .registers 8

    .line 7843
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 7844
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    .line 7845
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 7846
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 8021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOldText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOldCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsComposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o undo()V
    .registers 8

    .line 7834
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 7835
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    .line 7836
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 7837
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 7808
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7809
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7810
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7811
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7812
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7813
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7814
    iget-boolean p2, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7815
    iget-boolean p2, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7816
    return-void
.end method
