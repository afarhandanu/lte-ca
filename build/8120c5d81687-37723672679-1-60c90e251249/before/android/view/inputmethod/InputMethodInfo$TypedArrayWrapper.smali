.class public final Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypedArrayWrapper"
.end annotation


# instance fields
.field private final blacklist mIsReadingSubtype:Z

.field private final blacklist mReadTracker:Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

.field private final blacklist mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;Z)V
    .registers 4

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    .line 1203
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mReadTracker:Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

    .line 1204
    iput-boolean p3, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mIsReadingSubtype:Z

    .line 1205
    return-void
.end method

.method public static blacklist createForMethod(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;)Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;
    .registers 4

    .line 1180
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;-><init>(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;Z)V

    return-object v0
.end method

.method public static blacklist createForSubtype(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;)Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;
    .registers 4

    .line 1194
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;-><init>(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;Z)V

    return-object v0
.end method

.method private blacklist getMaxLength(I)I
    .registers 4

    .line 1261
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mIsReadingSubtype:Z

    const v1, 0x7fffffff

    if-eqz v0, :cond_8

    .line 1263
    return v1

    .line 1265
    :cond_8
    sparse-switch p1, :sswitch_data_10

    .line 1273
    goto :goto_e

    .line 1270
    :sswitch_c
    const/16 v1, 0x3e8

    .line 1265
    :goto_e
    return v1

    nop

    :sswitch_data_10
    .sparse-switch
        0x2 -> :sswitch_c
        0xd -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 1256
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1257
    return-void
.end method

.method public blacklist getBoolean(IZ)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1236
    return p2

    .line 1238
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 1239
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mReadTracker:Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->-$$Nest$monReadBytes(Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;I)V

    .line 1240
    return p1
.end method

.method public blacklist getInt(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1211
    return p2

    .line 1213
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1214
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mReadTracker:Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->-$$Nest$monReadBytes(Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;I)V

    .line 1215
    return p1
.end method

.method public blacklist getResourceId(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1247
    return p2

    .line 1249
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 1250
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mReadTracker:Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->-$$Nest$monReadBytes(Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;I)V

    .line 1251
    return p1
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getMaxLength(I)I

    move-result p1

    .line 1223
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_13

    goto :goto_32

    .line 1224
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String resources in input method exceed the length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " characters"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_32
    :goto_32
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->mReadTracker:Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

    if-nez v0, :cond_38

    const/4 v1, 0x0

    goto :goto_3e

    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_3e
    invoke-static {p1, v1}, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->-$$Nest$monReadBytes(Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;I)V

    .line 1229
    return-object v0
.end method
