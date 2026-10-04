.class public Landroid/view/selectiontoolbar/ToolbarMenuItem;
.super Ljava/lang/Object;
.source "ToolbarMenuItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PRIORITY_OVERFLOW:I = 0x2

.field public static final blacklist PRIORITY_PRIMARY:I = 0x1

.field public static final blacklist PRIORITY_UNKNOWN:I


# instance fields
.field public blacklist contentDescription:Ljava/lang/CharSequence;

.field public blacklist groupId:I

.field public blacklist icon:Landroid/graphics/drawable/Icon;

.field public blacklist itemId:I

.field public blacklist itemIndex:I

.field public blacklist priority:I

.field public blacklist title:Ljava/lang/CharSequence;

.field public blacklist tooltipText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/view/selectiontoolbar/ToolbarMenuItem$1;

    invoke-direct {v0}, Landroid/view/selectiontoolbar/ToolbarMenuItem$1;-><init>()V

    sput-object v0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    .line 24
    iput v0, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    .line 42
    iput v0, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    .line 56
    iput v0, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 146
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 148
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 150
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 141
    nop

    .line 142
    iget-object v0, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->icon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v0}, Landroid/view/selectiontoolbar/ToolbarMenuItem;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 143
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_109

    .line 110
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 128
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 128
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 128
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_5b
    :try_start_5b
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 128
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_7a
    :try_start_7a
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void

    .line 128
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 128
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_b4
    :try_start_b4
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->icon:Landroid/graphics/drawable/Icon;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c2
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d3

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cd

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 128
    :cond_cd
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_d3
    :try_start_d3
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->tooltipText:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e1
    .catchall {:try_start_d3 .. :try_end_e1} :catchall_107

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f2

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ec

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 128
    :cond_ec
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_f2
    :try_start_f2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_107

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_101

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    nop

    .line 132
    return-void

    .line 128
    :cond_101
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :catchall_107
    move-exception v2

    goto :goto_111

    .line 109
    :cond_109
    :try_start_109
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_111
    .catchall {:try_start_109 .. :try_end_111} :catchall_107

    .line 127
    :goto_111
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_11a

    .line 128
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_11a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->itemIndex:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    .line 76
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->title:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_23

    .line 80
    :cond_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :goto_23
    iget-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_30

    .line 83
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_33

    .line 87
    :cond_30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    :goto_33
    iget v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->tooltipText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4a

    .line 92
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v1, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->tooltipText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_4d

    .line 96
    :cond_4a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_4d
    iget p2, p0, Landroid/view/selectiontoolbar/ToolbarMenuItem;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void
.end method
