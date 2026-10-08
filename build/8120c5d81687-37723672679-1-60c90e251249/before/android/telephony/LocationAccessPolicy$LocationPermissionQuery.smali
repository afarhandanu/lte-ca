.class public Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationPermissionQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    }
.end annotation


# instance fields
.field public final blacklist callingFeatureId:Ljava/lang/String;

.field public final blacklist callingPackage:Ljava/lang/String;

.field public final blacklist callingPid:I

.field public final blacklist callingUid:I

.field public final blacklist logAsInfo:Z

.field public final blacklist method:Ljava/lang/String;

.field public final blacklist minSdkVersionForCoarse:I

.field public final blacklist minSdkVersionForFine:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;)V
    .registers 9

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingFeatureId:Ljava/lang/String;

    .line 76
    iput p3, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    .line 77
    iput p4, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    .line 78
    iput p5, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    .line 79
    iput p6, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    .line 80
    iput-boolean p7, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->logAsInfo:Z

    .line 81
    iput-object p8, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;Landroid/telephony/LocationAccessPolicy-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;)V

    return-void
.end method
