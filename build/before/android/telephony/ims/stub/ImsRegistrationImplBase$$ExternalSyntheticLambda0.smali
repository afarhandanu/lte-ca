.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsReasonInfo;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(ZLandroid/telephony/ims/ImsReasonInfo;III)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-boolean v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    check-cast v5, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-static/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onDeregistered$3(ZLandroid/telephony/ims/ImsReasonInfo;IIILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
