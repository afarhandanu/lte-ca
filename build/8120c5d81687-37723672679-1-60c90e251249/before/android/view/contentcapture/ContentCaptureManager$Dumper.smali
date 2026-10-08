.class final Landroid/view/contentcapture/ContentCaptureManager$Dumper;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Dumper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/contentcapture/ContentCaptureManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1011
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1014
    const-string p2, ""

    .line 1015
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ContentCaptureManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1017
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1018
    :try_start_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "isContentCaptureEnabled(): "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1020
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Debug: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1021
    const-string v1, " Verbose: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1022
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Context: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1024
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1025
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Flags: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1026
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Options: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v1, p1}, Landroid/content/ContentCaptureOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1027
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_d3

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Main session:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    iget-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1031
    goto :goto_db

    .line 1032
    :cond_d3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "No sessions"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    :goto_db
    monitor-exit v0

    .line 1035
    return-void

    .line 1034
    :catchall_dd
    move-exception p1

    monitor-exit v0
    :try_end_df
    .catchall {:try_start_24 .. :try_end_df} :catchall_dd

    throw p1
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 1039
    const-string v0, "ContentCaptureManager"

    return-object v0
.end method
