.class public final Landroid/widget/RemoteViews$ColorResources;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorResources"
.end annotation


# static fields
.field private static final blacklist ARSC_ENTRY_SIZE:I = 0x10

.field private static final blacklist FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final blacklist LAST_RESOURCE_COLOR_ID:I = 0x10600d1

.field private static final blacklist OVERLAY_NAME:Ljava/lang/String; = "remote_views_color_resources"

.field private static final blacklist OVERLAY_TARGET_PACKAGE_NAME:Ljava/lang/String; = "android"


# instance fields
.field private final blacklist mColorMapping:Landroid/util/SparseIntArray;

.field private final blacklist mLoader:Landroid/content/res/loader/ResourcesLoader;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/loader/ResourcesLoader;Landroid/util/SparseIntArray;)V
    .registers 3

    .line 8945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8946
    iput-object p1, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    .line 8947
    iput-object p2, p0, Landroid/widget/RemoteViews$ColorResources;->mColorMapping:Landroid/util/SparseIntArray;

    .line 8948
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;
    .registers 7

    .line 9026
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_61

    .line 9027
    if-nez p0, :cond_8

    .line 9028
    return-object v0

    .line 9030
    :cond_8
    nop

    .line 9032
    :try_start_9
    const-string/jumbo v1, "remote_views_theme_colors.arsc"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_59

    .line 9034
    :try_start_11
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_57

    .line 9035
    :try_start_16
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 9037
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_4d

    .line 9038
    :try_start_1d
    new-instance v3, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v3}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 9039
    nop

    .line 9040
    invoke-static {p0, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v4

    .line 9039
    invoke-virtual {v3, v4}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 9041
    new-instance v4, Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-direct {v4, v3, p1}, Landroid/widget/RemoteViews$ColorResources;-><init>(Landroid/content/res/loader/ResourcesLoader;Landroid/util/SparseIntArray;)V
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_41

    .line 9042
    if-eqz p0, :cond_38

    :try_start_35
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4d

    .line 9043
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_57

    .line 9045
    if-eqz v1, :cond_40

    .line 9046
    :try_start_3d
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_61

    .line 9041
    :cond_40
    return-object v4

    .line 9037
    :catchall_41
    move-exception p1

    if-eqz p0, :cond_4c

    :try_start_44
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p0

    :try_start_49
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    throw p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 9034
    :catchall_4d
    move-exception p0

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p1

    :try_start_53
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw p0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 9045
    :catchall_57
    move-exception p0

    goto :goto_5b

    :catchall_59
    move-exception p0

    move-object v1, v0

    :goto_5b
    if-eqz v1, :cond_60

    .line 9046
    :try_start_5d
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 9048
    :cond_60
    throw p0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_61

    .line 9049
    :catch_61
    move-exception p0

    .line 9050
    const-string p1, "RemoteViews"

    const-string v1, "Failed to setup the context for theme colors"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9052
    return-object v0
.end method

.method private static blacklist createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8985
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 8987
    :try_start_b
    invoke-static {v0}, Landroid/widget/RemoteViews$ColorResources;->readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 8988
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_52

    .line 8989
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8990
    :cond_18
    array-length v0, v1

    add-int/lit16 v0, v0, -0xd10

    const/4 v2, 0x4

    sub-int/2addr v0, v2

    .line 8992
    if-gez v0, :cond_28

    .line 8993
    const-string p0, "RemoteViews"

    const-string p1, "ARSC file for theme colors is invalid."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8994
    const/4 p0, 0x0

    return-object p0

    .line 8996
    :cond_28
    const v3, 0x106001d

    :goto_2b
    const v4, 0x10600d1

    if-gt v3, v4, :cond_51

    .line 8999
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 9000
    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v0

    .line 9001
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 9003
    const/4 v6, 0x0

    :goto_40
    if-ge v6, v2, :cond_4e

    .line 9004
    add-int v7, v4, v6

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 9005
    shr-int/lit8 v5, v5, 0x8

    .line 9003
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 8997
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 9008
    :cond_51
    return-object v1

    .line 8985
    :catchall_52
    move-exception p0

    if-eqz v0, :cond_5d

    :try_start_55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    throw p0
.end method

.method public static blacklist createWithOverlay(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;
    .registers 11

    .line 9071
    const-string v0, "android"

    const-string v1, "RemoteViews"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9072
    new-instance v4, Landroid/content/om/FabricatedOverlay$Builder;

    const-string/jumbo v5, "remote_views_color_resources"

    invoke-direct {v4, v3, v5, v0}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9073
    invoke-virtual {v4}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v4

    .line 9075
    const/4 v5, 0x0

    :goto_16
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_35

    .line 9076
    nop

    .line 9077
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 9078
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 9076
    const/16 v8, 0x1c

    invoke-virtual {v4, v6, v8, v7, v2}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 9075
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 9080
    :cond_35
    const-class v5, Landroid/content/om/OverlayManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/om/OverlayManager;

    .line 9081
    new-instance v5, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v5}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 9083
    invoke-virtual {v5, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v4

    .line 9084
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/om/OverlayManagerTransaction$Builder;->setSelfTargeting(Z)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v4

    .line 9085
    invoke-virtual {v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/om/OverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 9087
    nop

    .line 9088
    invoke-virtual {p0, v0}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 9089
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/widget/RemoteViews$ColorResources$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Landroid/widget/RemoteViews$ColorResources$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 9090
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 9092
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 9093
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/om/OverlayInfo;

    .line 9094
    if-nez p0, :cond_7b

    .line 9095
    const-string p0, "Failed to get overlay info "

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9096
    return-object v2

    .line 9098
    :cond_7b
    new-instance v0, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v0}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 9099
    invoke-static {p0}, Landroid/content/res/loader/ResourcesProvider;->loadOverlay(Landroid/content/om/OverlayInfo;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 9100
    new-instance p0, Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/widget/RemoteViews$ColorResources;-><init>(Landroid/content/res/loader/ResourcesLoader;Landroid/util/SparseIntArray;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_90} :catch_91

    return-object p0

    .line 9101
    :catch_91
    move-exception p0

    .line 9102
    const-string p1, "Failed to add theme color overlay into loader"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9104
    return-object v2
.end method

.method static synthetic blacklist lambda$createWithOverlay$0(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 4

    .line 9090
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    const-string/jumbo v1, "remote_views_color_resources"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 9091
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 9090
    :goto_16
    return p0
.end method

.method private static blacklist readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8964
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 8965
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 8966
    :goto_b
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1a

    .line 8967
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 8968
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8969
    goto :goto_b

    .line 8970
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public blacklist apply(Landroid/content/Context;)V
    .registers 5

    .line 8956
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/res/loader/ResourcesLoader;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 8957
    return-void
.end method

.method public blacklist getColorMapping()Landroid/util/SparseIntArray;
    .registers 2

    .line 8960
    iget-object v0, p0, Landroid/widget/RemoteViews$ColorResources;->mColorMapping:Landroid/util/SparseIntArray;

    return-object v0
.end method
