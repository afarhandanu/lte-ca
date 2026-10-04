.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Denylist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

.field public static final blacklist PACKAGE_NAMES_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist PARSER:Lcom/android/framework/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VERSION_CODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private blacklist bitField0_:I

.field private blacklist packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist versionCode_:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 475
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;-><init>()V

    .line 478
    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 479
    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 481
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 62
    return-void
.end method

.method static synthetic blacklist access$000()Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 1

    .line 55
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/updatabledriver/UpdatableDriverProto$Denylist;J)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setVersionCode(J)V

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearVersionCode()V

    return-void
.end method

.method static synthetic blacklist access$300(Landroid/updatabledriver/UpdatableDriverProto$Denylist;ILjava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setPackageNames(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNames(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/Iterable;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addAllPackageNames(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic blacklist access$600(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearPackageNames()V

    return-void
.end method

.method static synthetic blacklist access$700(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Lcom/android/framework/protobuf/ByteString;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist addAllPackageNames(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    .line 173
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 175
    return-void
.end method

.method private blacklist addPackageNames(Ljava/lang/String;)V
    .registers 3

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    .line 164
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private blacklist addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3

    .line 188
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    .line 189
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method private blacklist clearPackageNames()V
    .registers 2

    .line 180
    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 181
    return-void
.end method

.method private blacklist clearVersionCode()V
    .registers 3

    .line 94
    iget v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->versionCode_:J

    .line 96
    return-void
.end method

.method private blacklist ensurePackageNamesIsMutable()V
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 138
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_f

    .line 139
    nop

    .line 140
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 142
    :cond_f
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 1

    .line 484
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 1

    .line 269
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 272
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    return-object p0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 215
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 227
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p0
.end method

.method public static blacklist parser()Lcom/android/framework/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    .line 490
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setPackageNames(ILjava/lang/String;)V
    .registers 4

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    .line 153
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private blacklist setVersionCode(J)V
    .registers 4

    .line 87
    iget v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    .line 88
    iput-wide p1, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->versionCode_:J

    .line 89
    return-void
.end method


# virtual methods
.method protected final blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 424
    sget-object p2, Landroid/updatabledriver/UpdatableDriverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_58

    .line 468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 465
    :pswitch_12
    return-object p2

    .line 462
    :pswitch_13
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 447
    :pswitch_19
    sget-object p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->PARSER:Lcom/android/framework/protobuf/Parser;

    .line 448
    if-nez p1, :cond_32

    .line 449
    const-class p2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    monitor-enter p2

    .line 450
    :try_start_20
    sget-object p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->PARSER:Lcom/android/framework/protobuf/Parser;

    .line 451
    if-nez p1, :cond_2d

    .line 452
    new-instance p1, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-direct {p1, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 455
    sput-object p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->PARSER:Lcom/android/framework/protobuf/Parser;

    .line 457
    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    .line 459
    :cond_32
    :goto_32
    return-object p1

    .line 444
    :pswitch_33
    sget-object p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object p1

    .line 432
    :pswitch_36
    const-string p1, "bitField0_"

    const-string/jumbo p2, "versionCode_"

    const-string/jumbo p3, "packageNames_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 437
    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u001a"

    .line 440
    sget-object p3, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {p3, p2, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 429
    :pswitch_4b
    new-instance p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    invoke-direct {p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;-><init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V

    return-object p1

    .line 426
    :pswitch_51
    new-instance p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-direct {p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;-><init>()V

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getPackageNames(I)Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public blacklist getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 134
    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPackageNamesCount()I
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

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

    .line 106
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .registers 3

    .line 80
    iget-wide v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->versionCode_:J

    return-wide v0
.end method

.method public blacklist hasVersionCode()Z
    .registers 3

    .line 72
    iget v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
