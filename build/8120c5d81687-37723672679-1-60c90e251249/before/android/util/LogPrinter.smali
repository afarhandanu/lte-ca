.class public Landroid/util/LogPrinter;
.super Ljava/lang/Object;
.source "LogPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final greylist-max-o mBuffer:I

.field private final greylist-max-o mPriority:I

.field private final greylist-max-o mTag:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/util/LogPrinter;->mPriority:I

    .line 43
    iput-object p2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/LogPrinter;->mBuffer:I

    .line 45
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;I)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/util/LogPrinter;->mPriority:I

    .line 53
    iput-object p2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    .line 54
    iput p3, p0, Landroid/util/LogPrinter;->mBuffer:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .registers 5

    .line 58
    iget v0, p0, Landroid/util/LogPrinter;->mBuffer:I

    iget v1, p0, Landroid/util/LogPrinter;->mPriority:I

    iget-object v2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
