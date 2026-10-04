.class public final Landroid/view/View$NoPreloadHolder;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static blacklist sFrameRateSysProp:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2484
    invoke-static {}, Landroid/sysprop/ViewProperties;->vrr_velocity_threshold()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Landroid/view/View$NoPreloadHolder;->sFrameRateSysProp:Ljava/lang/String;

    .line 2487
    sget-object v0, Landroid/view/View$NoPreloadHolder;->sFrameRateSysProp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2488
    sget-object v0, Landroid/view/View$NoPreloadHolder;->sFrameRateSysProp:Ljava/lang/String;

    invoke-static {v0}, Landroid/view/View$NoPreloadHolder;->parseFrameRateMapping(Ljava/lang/String;)[[I

    move-result-object v0

    invoke-static {v0}, Landroid/view/View;->-$$Nest$sfputsFrameRateMappings([[I)V

    .line 2490
    :cond_1f
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$parseFrameRateMapping$0([I)I
    .registers 2

    .line 2578
    const/4 v0, 0x0

    aget p0, p0, v0

    neg-int p0, p0

    return p0
.end method

.method public static blacklist parseFrameRateMapping(Ljava/lang/String;)[[I
    .registers 13

    .line 2499
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2500
    return-object v1

    .line 2503
    :cond_8
    nop

    .line 2504
    nop

    .line 2505
    nop

    .line 2506
    nop

    .line 2507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    .line 2510
    :goto_14
    const/16 v5, 0x3a

    if-gt v4, v0, :cond_21

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_21

    .line 2511
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2514
    :cond_21
    :goto_21
    if-gt v4, v0, :cond_2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2c

    .line 2515
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 2517
    :cond_2c
    if-lt v4, v0, :cond_2f

    .line 2518
    return-object v1

    .line 2522
    :cond_2f
    move v6, v3

    move v1, v4

    :goto_31
    if-gt v1, v0, :cond_49

    .line 2523
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_46

    .line 2524
    if-lez v1, :cond_44

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_44

    .line 2525
    goto :goto_46

    .line 2527
    :cond_44
    add-int/lit8 v6, v6, 0x1

    .line 2522
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2530
    :cond_49
    add-int/2addr v6, v2

    .line 2532
    const/4 v1, 0x2

    new-array v7, v1, [I

    aput v1, v7, v2

    aput v6, v7, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 2533
    nop

    .line 2535
    move v8, v3

    move v9, v8

    move v7, v4

    :goto_5d
    if-gt v4, v0, :cond_c8

    .line 2536
    :try_start_5f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_8f

    .line 2538
    if-lez v4, :cond_72

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_72

    .line 2539
    add-int/lit8 v7, v7, 0x1

    .line 2540
    goto :goto_c3

    .line 2543
    :cond_72
    aget-object v10, v1, v9

    .line 2544
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v10, v3

    .line 2545
    add-int/lit8 v9, v9, 0x1

    .line 2546
    if-ne v9, v8, :cond_89

    .line 2549
    add-int/lit8 v7, v4, 0x1

    goto :goto_c3

    .line 2547
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 2550
    :cond_8f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_c3

    .line 2552
    if-lez v4, :cond_a4

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_a4

    .line 2553
    add-int/lit8 v7, v7, 0x1

    .line 2554
    goto :goto_c3

    .line 2557
    :cond_a4
    aget-object v10, v1, v9

    .line 2558
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v10, v2

    .line 2559
    add-int/lit8 v8, v8, 0x1

    .line 2560
    add-int/lit8 v7, v9, 0x1

    if-ne v8, v7, :cond_bd

    .line 2563
    add-int/lit8 v7, v4, 0x1

    goto :goto_c3

    .line 2561
    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 2535
    :cond_c3
    :goto_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 2574
    :catch_c6
    move-exception p0

    goto :goto_ec

    .line 2567
    :cond_c8
    add-int/lit8 v4, v9, 0x1

    if-ne v8, v4, :cond_e6

    if-ne v8, v6, :cond_e6

    .line 2568
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v7, v4, :cond_e6

    .line 2572
    aget-object v4, v1, v9

    add-int/2addr v0, v2

    .line 2573
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v4, v3

    .line 2576
    goto :goto_f3

    .line 2569
    :cond_e6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_ec} :catch_c6

    .line 2575
    :goto_ec
    const-string p0, "View"

    const-string v0, "Format should be frameRate1@threshold1:frameRate2@threshold2"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    :goto_f3
    new-instance p0, Landroid/view/View$NoPreloadHolder$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/view/View$NoPreloadHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2579
    return-object v1
.end method
