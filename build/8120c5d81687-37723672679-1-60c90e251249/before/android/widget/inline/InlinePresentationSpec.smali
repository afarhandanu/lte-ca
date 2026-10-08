.class public final Landroid/widget/inline/InlinePresentationSpec;
.super Ljava/lang/Object;
.source "InlinePresentationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/inline/InlinePresentationSpec$Builder;,
        Landroid/widget/inline/InlinePresentationSpec$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaxSize:Landroid/util/Size;

.field private final blacklist mMinSize:Landroid/util/Size;

.field private final blacklist mStyle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultStyle()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/widget/inline/InlinePresentationSpec;->defaultStyle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 231
    new-instance v0, Landroid/widget/inline/InlinePresentationSpec$1;

    invoke-direct {v0}, Landroid/widget/inline/InlinePresentationSpec$1;-><init>()V

    sput-object v0, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 217
    iput-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    .line 218
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 220
    iput-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    .line 221
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    .line 224
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method constructor blacklist <init>(Landroid/util/Size;Landroid/util/Size;Landroid/os/Bundle;)V
    .registers 6

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    .line 102
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 104
    iput-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    .line 105
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 107
    iput-object p3, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    .line 108
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    return-void
.end method

.method private static blacklist defaultStyle()Landroid/os/Bundle;
    .registers 1

    .line 61
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private blacklist styleEquals(Landroid/os/Bundle;)Z
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 168
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 170
    :cond_12
    check-cast p1, Landroid/widget/inline/InlinePresentationSpec;

    .line 172
    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    .line 173
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    .line 174
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object p1, p1, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    .line 175
    invoke-direct {p0, p1}, Landroid/widget/inline/InlinePresentationSpec;->styleEquals(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    .line 172
    :goto_32
    return v0

    .line 168
    :cond_33
    :goto_33
    return v1
.end method

.method public blacklist filterContentTypes()V
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public whitelist getMaxSize()Landroid/util/Size;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getMinSize()Landroid/util/Size;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getStyle()Landroid/os/Bundle;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 184
    nop

    .line 185
    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 186
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 187
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlinePresentationSpec { minSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 197
    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 198
    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 199
    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method
