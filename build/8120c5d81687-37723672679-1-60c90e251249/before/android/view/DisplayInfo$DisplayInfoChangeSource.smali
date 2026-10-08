.class public final enum Landroid/view/DisplayInfo$DisplayInfoChangeSource;
.super Ljava/lang/Enum;
.source "DisplayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayInfoChangeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/DisplayInfo$DisplayInfoChangeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/DisplayInfo$DisplayInfoChangeSource;

.field public static final enum blacklist DISPLAY_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

.field public static final enum blacklist DISPLAY_SWAP:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

.field public static final enum blacklist OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

.field public static final enum blacklist WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    .registers 4

    .line 934
    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_SWAP:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    sget-object v2, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    sget-object v3, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    filled-new-array {v0, v1, v2, v3}, [Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 935
    new-instance v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    const-string v1, "DISPLAY_SWAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_SWAP:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    .line 936
    new-instance v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    const-string v1, "DISPLAY_MANAGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    .line 937
    new-instance v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    const-string v1, "WINDOW_MANAGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    .line 938
    new-instance v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    const-string v1, "OTHER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    .line 934
    invoke-static {}, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->$values()[Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object v0

    sput-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->$VALUES:[Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 934
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 934
    const-class v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    return-object p0
.end method

.method public static blacklist values()[Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    .registers 1

    .line 934
    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->$VALUES:[Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v0}, [Landroid/view/DisplayInfo$DisplayInfoChangeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    return-object v0
.end method
