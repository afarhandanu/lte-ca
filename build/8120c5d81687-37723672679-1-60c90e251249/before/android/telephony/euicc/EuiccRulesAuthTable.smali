.class public final Landroid/telephony/euicc/EuiccRulesAuthTable;
.super Ljava/lang/Object;
.source "EuiccRulesAuthTable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;,
        Landroid/telephony/euicc/EuiccRulesAuthTable$PolicyRuleFlag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POLICY_RULE_FLAG_CONSENT_REQUIRED:I = 0x1


# instance fields
.field private final greylist-max-o mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

.field private final greylist-max-o mPolicyRuleFlags:[I

.field private final greylist-max-o mPolicyRules:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 265
    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccRulesAuthTable$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccRulesAuthTable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    .line 257
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v0, v0

    .line 258
    new-array v1, v0, [[Landroid/service/carrier/CarrierIdentifier;

    iput-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    .line 259
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_22

    .line 260
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    sget-object v3, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/carrier/CarrierIdentifier;

    aput-object v3, v2, v1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 262
    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    .line 263
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccRulesAuthTable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>([I[[Landroid/service/carrier/CarrierIdentifier;[I)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    .line 138
    iput-object p2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    .line 139
    iput-object p3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>([I[[Landroid/service/carrier/CarrierIdentifier;[ILandroid/telephony/euicc/EuiccRulesAuthTable-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>([I[[Landroid/service/carrier/CarrierIdentifier;[I)V

    return-void
.end method

.method public static greylist-max-o match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    .line 122
    return v2

    .line 124
    :cond_c
    move v0, v2

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x45

    if-eq v1, v3, :cond_2d

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_2c

    .line 128
    goto :goto_2d

    .line 130
    :cond_2c
    return v2

    .line 124
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 132
    :cond_30
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10

    .line 211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 212
    return v0

    .line 214
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_67

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_67

    .line 218
    :cond_12
    check-cast p1, Landroid/telephony/euicc/EuiccRulesAuthTable;

    .line 219
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v2, v2

    iget-object v3, p1, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v3, v3

    if-eq v2, v3, :cond_1d

    .line 220
    return v1

    .line 222
    :cond_1d
    move v2, v1

    :goto_1e
    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v3, v3

    if-ge v2, v3, :cond_50

    .line 223
    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v3, v3, v2

    .line 224
    iget-object v4, p1, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v4, v4, v2

    .line 225
    if-eqz v3, :cond_47

    if-eqz v4, :cond_47

    .line 226
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_34

    .line 227
    return v1

    .line 229
    :cond_34
    move v5, v1

    :goto_35
    array-length v6, v3

    if-ge v5, v6, :cond_46

    .line 230
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/service/carrier/CarrierIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 231
    return v1

    .line 229
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 234
    :cond_46
    goto :goto_4c

    .line 235
    :cond_47
    if-nez v3, :cond_4f

    if-nez v4, :cond_4f

    .line 236
    nop

    .line 222
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 238
    :cond_4f
    return v1

    .line 241
    :cond_50
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    iget-object v3, p1, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    iget-object p1, p1, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    .line 242
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_66

    :cond_65
    move v0, v1

    .line 241
    :goto_66
    return v0

    .line 215
    :cond_67
    :goto_67
    return v1
.end method

.method public whitelist findIndex(ILandroid/service/carrier/CarrierIdentifier;)I
    .registers 10

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6d

    .line 153
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    aget v2, v2, v1

    and-int/2addr v2, p1

    if-nez v2, :cond_f

    .line 154
    goto :goto_6a

    .line 156
    :cond_f
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v2, v2, v1

    .line 157
    if-eqz v2, :cond_6a

    array-length v3, v2

    if-nez v3, :cond_19

    .line 158
    goto :goto_6a

    .line 160
    :cond_19
    move v3, v0

    :goto_1a
    array-length v4, v2

    if-ge v3, v4, :cond_6a

    .line 161
    aget-object v4, v2, v3

    .line 162
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/euicc/EuiccRulesAuthTable;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 163
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/euicc/EuiccRulesAuthTable;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 164
    goto :goto_67

    .line 166
    :cond_3c
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 168
    goto :goto_67

    .line 170
    :cond_51
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_66

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 172
    goto :goto_67

    .line 174
    :cond_66
    return v1

    .line 160
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 152
    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 177
    :cond_6d
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist hasPolicyRuleFlag(II)Z
    .registers 4

    .line 189
    if-ltz p1, :cond_12

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v0, v0

    if-ge p1, v0, :cond_12

    .line 192
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    aget p1, v0, p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1

    .line 190
    :cond_12
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 247
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    .line 248
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 250
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 252
    :cond_23
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 202
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 203
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 204
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 206
    :cond_13
    iget-object p2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 207
    return-void
.end method
