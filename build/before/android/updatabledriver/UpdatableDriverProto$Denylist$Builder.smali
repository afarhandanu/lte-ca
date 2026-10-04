.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 285
    # getter for: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$000()Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 286
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .registers 2

    .line 278
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllPackageNames(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 393
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addAllPackageNames(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$500(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/Iterable;)V

    .line 394
    return-object p0
.end method

.method public blacklist addPackageNames(Ljava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3

    .line 381
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNames(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$400(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/String;)V

    .line 383
    return-object p0
.end method

.method public blacklist addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3

    .line 412
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 413
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$700(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Lcom/android/framework/protobuf/ByteString;)V

    .line 414
    return-object p0
.end method

.method public blacklist clearPackageNames()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 401
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearPackageNames()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$600(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 403
    return-object p0
.end method

.method public blacklist clearVersionCode()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 320
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 321
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearVersionCode()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$200(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 322
    return-object p0
.end method

.method public blacklist getPackageNames(I)Ljava/lang/String;
    .registers 3

    .line 350
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNames(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    .line 360
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPackageNamesCount()I
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesCount()I

    move-result v0

    return v0
.end method

.method public blacklist getPackageNamesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 333
    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesList()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hasVersionCode()Z
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->hasVersionCode()Z

    move-result v0

    return v0
.end method

.method public blacklist setPackageNames(ILjava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 4

    .line 370
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setPackageNames(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$300(Landroid/updatabledriver/UpdatableDriverProto$Denylist;ILjava/lang/String;)V

    .line 372
    return-object p0
.end method

.method public blacklist setVersionCode(J)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 4

    .line 311
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 312
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setVersionCode(J)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$100(Landroid/updatabledriver/UpdatableDriverProto$Denylist;J)V

    .line 313
    return-object p0
.end method
