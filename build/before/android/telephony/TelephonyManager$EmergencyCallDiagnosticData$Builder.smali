.class public final Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCollectTelecomDumpsys:Z

.field private blacklist mCollectTelephonyDumpsys:Z

.field private blacklist mLogcatStartTimeMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 18981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18988
    invoke-static {}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->-$$Nest$sfgetsUnsetLogcatStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mLogcatStartTimeMillis:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
    .registers 7

    .line 19028
    new-instance v0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelecomDumpsys:Z

    iget-boolean v2, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelephonyDumpsys:Z

    iget-wide v3, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mLogcatStartTimeMillis:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;-><init>(ZZJLandroid/telephony/TelephonyManager-IA;)V

    return-object v0
.end method

.method public whitelist setLogcatCollectionStartTimeMillis(J)Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    .registers 3

    .line 19019
    iput-wide p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mLogcatStartTimeMillis:J

    .line 19020
    return-object p0
.end method

.method public whitelist setTelecomDumpsysCollectionEnabled(Z)Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    .registers 2

    .line 18997
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelecomDumpsys:Z

    .line 18998
    return-object p0
.end method

.method public whitelist setTelephonyDumpsysCollectionEnabled(Z)Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    .registers 2

    .line 19008
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelephonyDumpsys:Z

    .line 19009
    return-object p0
.end method
