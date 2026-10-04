.class public final Landroid/view/inputmethod/EditorBoundsInfo;
.super Ljava/lang/Object;
.source "EditorBoundsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/EditorBoundsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEditorBounds:Landroid/graphics/RectF;

.field private final blacklist mHandwritingBounds:Landroid/graphics/RectF;

.field private final blacklist mHashCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/view/inputmethod/EditorBoundsInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorBoundsInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/EditorBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    .line 47
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    .line 48
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iput-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)V
    .registers 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->-$$Nest$fgetmEditorBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    .line 170
    invoke-static {p1}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->-$$Nest$fgetmHandwritingBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    .line 172
    iget-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    .line 173
    mul-int/lit8 p1, p1, 0x1f

    .line 174
    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr p1, v0

    .line 175
    iput p1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    .line 176
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 89
    return v0

    .line 92
    :cond_4
    instance-of v1, p1, Landroid/view/inputmethod/EditorBoundsInfo;

    if-eqz v1, :cond_22

    .line 93
    check-cast p1, Landroid/view/inputmethod/EditorBoundsInfo;

    .line 97
    iget-object v1, p1, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object p1, p1, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    .line 98
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    nop

    .line 97
    :goto_21
    return v0

    .line 95
    :cond_22
    return v0
.end method

.method public whitelist getEditorBounds()Landroid/graphics/RectF;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist getHandwritingBounds()Landroid/graphics/RectF;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditorBoundsInfo{mEditorBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHandwritingBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 108
    iget v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mEditorBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo;->mHandwritingBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 111
    return-void
.end method
