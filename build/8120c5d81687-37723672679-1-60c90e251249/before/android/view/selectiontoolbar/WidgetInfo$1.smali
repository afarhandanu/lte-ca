.class Landroid/view/selectiontoolbar/WidgetInfo$1;
.super Ljava/lang/Object;
.source "WidgetInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/WidgetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/selectiontoolbar/WidgetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/selectiontoolbar/WidgetInfo;
    .registers 3

    .line 25
    new-instance v0, Landroid/view/selectiontoolbar/WidgetInfo;

    invoke-direct {v0}, Landroid/view/selectiontoolbar/WidgetInfo;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/selectiontoolbar/WidgetInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/WidgetInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/selectiontoolbar/WidgetInfo;
    .registers 2

    .line 31
    new-array p1, p1, [Landroid/view/selectiontoolbar/WidgetInfo;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/WidgetInfo$1;->newArray(I)[Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object p1

    return-object p1
.end method
