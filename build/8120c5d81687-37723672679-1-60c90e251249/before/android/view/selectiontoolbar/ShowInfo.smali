.class public Landroid/view/selectiontoolbar/ShowInfo;
.super Ljava/lang/Object;
.source "ShowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/selectiontoolbar/ShowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist configuration:Landroid/content/res/Configuration;

.field public blacklist contentRect:Landroid/graphics/Rect;

.field public blacklist hostInputToken:Landroid/os/IBinder;

.field public blacklist isLightTheme:Z

.field public blacklist layoutRequired:Z

.field public blacklist menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sequenceNumber:I

.field public blacklist suggestedWidth:I

.field public blacklist viewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/view/selectiontoolbar/ShowInfo$1;

    invoke-direct {v0}, Landroid/view/selectiontoolbar/ShowInfo$1;-><init>()V

    sput-object v0, Landroid/view/selectiontoolbar/ShowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/selectiontoolbar/ShowInfo;->sequenceNumber:I

    .line 16
    iput-boolean v0, p0, Landroid/view/selectiontoolbar/ShowInfo;->layoutRequired:Z

    .line 22
    iput v0, p0, Landroid/view/selectiontoolbar/ShowInfo;->suggestedWidth:I

    .line 31
    iput-boolean v0, p0, Landroid/view/selectiontoolbar/ShowInfo;->isLightTheme:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 105
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 106
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_20

    .line 107
    nop

    .line 108
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    invoke-direct {p0, v1}, Landroid/view/selectiontoolbar/ShowInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 110
    goto :goto_f

    .line 111
    :cond_1f
    return v0

    .line 113
    :cond_20
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2b

    .line 114
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 116
    :cond_2b
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 97
    nop

    .line 98
    iget-object v0, p0, Landroid/view/selectiontoolbar/ShowInfo;->menuItems:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/view/selectiontoolbar/ShowInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 99
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/view/selectiontoolbar/ShowInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->viewPortOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/view/selectiontoolbar/ShowInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Landroid/view/selectiontoolbar/ShowInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 102
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_122

    .line 70
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 90
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->sequenceNumber:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 90
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->layoutRequired:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 90
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_5b
    :try_start_5b
    sget-object v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->menuItems:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_78

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 90
    :cond_72
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_78
    :try_start_78
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_97

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_91

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 90
    :cond_91
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_97
    :try_start_97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->suggestedWidth:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 90
    :cond_ac
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_b2
    :try_start_b2
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->viewPortOnScreen:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d1

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cb

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 90
    :cond_cb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_d1
    :try_start_d1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->hostInputToken:Landroid/os/IBinder;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_db
    .catchall {:try_start_d1 .. :try_end_db} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ec

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e6

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 90
    :cond_e6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_ec
    :try_start_ec
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->isLightTheme:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_107

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_101

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 90
    :cond_101
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_107
    :try_start_107
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ShowInfo;->configuration:Landroid/content/res/Configuration;
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_120

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11a

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :cond_11a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :catchall_120
    move-exception v2

    goto :goto_12a

    .line 69
    :cond_122
    :try_start_122
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_120

    .line 89
    :goto_12a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_133

    .line 90
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_133
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->sequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->layoutRequired:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->menuItems:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 53
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->contentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 54
    iget v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->suggestedWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->viewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->hostInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 57
    iget-boolean v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->isLightTheme:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 58
    iget-object v1, p0, Landroid/view/selectiontoolbar/ShowInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void
.end method
