.class Landroid/webkit/FindAddress;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final blacklist HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final blacklist HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final blacklist HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist MAX_ADDRESS_LINES:I = 0x5

.field private static final blacklist MAX_ADDRESS_WORDS:I = 0xe

.field private static final blacklist MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final blacklist MIN_ADDRESS_WORDS:I = 0x4

.field private static final blacklist NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final blacklist WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final blacklist WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist kMaxAddressNameWordLength:I = 0x19

.field private static final blacklist sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final blacklist sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final blacklist sStateRe:Ljava/util/regex/Pattern;

.field private static final blacklist sStateZipCodeRanges:[Landroid/webkit/FindAddress$ZipRange;

.field private static final blacklist sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final blacklist sWordRe:Ljava/util/regex/Pattern;

.field private static final blacklist sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 63
    const/16 v0, 0x3b

    new-array v0, v0, [Landroid/webkit/FindAddress$ZipRange;

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x63

    const/4 v3, -0x1

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x23

    const/16 v6, 0x24

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v6, 0x47

    const/16 v7, 0x48

    invoke-direct {v1, v6, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v7, 0x60

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v8, 0x3

    aput-object v1, v0, v8

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v9, 0x55

    const/16 v10, 0x56

    invoke-direct {v1, v9, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v9, 0x4

    aput-object v1, v0, v9

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v10, 0x5a

    invoke-direct {v1, v10, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v10, 0x5

    aput-object v1, v0, v10

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v11, 0x50

    const/16 v12, 0x51

    invoke-direct {v1, v11, v12, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v11, 0x6

    aput-object v1, v0, v11

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v11, v11, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v12, 0x7

    aput-object v1, v0, v12

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v12, 0x14

    invoke-direct {v1, v12, v12, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v13, 0x8

    aput-object v1, v0, v13

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v13, 0x13

    invoke-direct {v1, v13, v13, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v14, 0x9

    aput-object v1, v0, v14

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x20

    const/16 v2, 0x22

    invoke-direct {v1, v15, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x1e

    const/16 v15, 0x1f

    invoke-direct {v1, v2, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x32

    const/16 v15, 0x34

    invoke-direct {v1, v2, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x53

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x10

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x3c

    const/16 v2, 0x3e

    invoke-direct {v1, v15, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x2e

    const/16 v15, 0x2f

    invoke-direct {v1, v2, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x43

    const/16 v15, 0x49

    const/16 v10, 0x42

    invoke-direct {v1, v10, v2, v15, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v13

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x28

    const/16 v10, 0x2a

    invoke-direct {v1, v2, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v12

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x46

    const/16 v10, 0x47

    invoke-direct {v1, v2, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x15

    invoke-direct {v1, v12, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v8, v9, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x30

    const/16 v10, 0x31

    invoke-direct {v1, v5, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x37

    const/16 v10, 0x38

    invoke-direct {v1, v5, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x1b

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x3f

    const/16 v2, 0x41

    invoke-direct {v1, v15, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x27

    const/16 v12, 0x26

    invoke-direct {v1, v12, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x1e

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v5, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x1f

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x1b

    move/from16 v16, v5

    const/16 v5, 0x1c

    invoke-direct {v1, v15, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x20

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x3a

    invoke-direct {v1, v5, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x21

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x44

    move/from16 v17, v5

    const/16 v5, 0x45

    invoke-direct {v1, v15, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x22

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v8, v9, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x23

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/4 v5, 0x7

    const/16 v8, 0x8

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x24

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x56

    const/16 v8, 0x57

    const/16 v9, 0x58

    invoke-direct {v1, v8, v9, v5, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x25

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x59

    invoke-direct {v1, v9, v5, v7, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v12

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0xa

    const/16 v8, 0xe

    invoke-direct {v1, v5, v8, v4, v11}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x27

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x2b

    const/16 v8, 0x2d

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x28

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x49

    const/16 v8, 0x4a

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x29

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x61

    const/16 v8, 0x61

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x2a

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0xf

    invoke-direct {v1, v5, v13, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v11, v11, v4, v14}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v6, v6, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x39

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x30

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x25

    invoke-direct {v1, v4, v12, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x31

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x4f

    const/16 v5, 0x57

    const/16 v7, 0x4b

    invoke-direct {v1, v7, v4, v5, v9}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x32

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x54

    const/16 v5, 0x54

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x33

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x16

    const/16 v5, 0x14

    const/16 v7, 0x18

    invoke-direct {v1, v4, v7, v5, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x34

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v11, v14, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x35

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/4 v4, 0x5

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x36

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x62

    const/16 v5, 0x63

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v16

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x35

    const/16 v5, 0x36

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v10

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x1a

    const/16 v7, 0x18

    invoke-direct {v1, v7, v4, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x52

    const/16 v4, 0x53

    invoke-direct {v1, v2, v4, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v17

    sput-object v0, Landroid/webkit/FindAddress;->sStateZipCodeRanges:[Landroid/webkit/FindAddress$ZipRange;

    .line 143
    nop

    .line 144
    const-string v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 161
    nop

    .line 162
    const-string v0, "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 166
    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 229
    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 255
    nop

    .line 256
    const-string v0, "([0-9]+)(st|nd|rd|th)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 258
    nop

    .line 259
    const-string v0, "(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    .line 258
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .registers 15

    .line 364
    nop

    .line 365
    nop

    .line 366
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result p1

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 373
    sget-object v0, Landroid/webkit/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    move v9, v1

    move v10, v9

    move v5, v2

    move v6, v5

    move v7, v6

    move v8, v3

    .line 375
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge p1, v11, :cond_e1

    .line 376
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-nez v11, :cond_2e

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    neg-int p0, p0

    return p0

    .line 380
    :cond_2e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    sub-int/2addr v11, v12

    const/16 v12, 0x19

    if-le v11, v12, :cond_41

    .line 382
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    neg-int p0, p0

    return p0

    .line 386
    :cond_41
    :goto_41
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    if-ge p1, v11, :cond_59

    .line 387
    add-int/lit8 v11, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const-string v12, "\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v12, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v1, :cond_57

    add-int/lit8 v5, v5, 0x1

    :cond_57
    move p1, v11

    goto :goto_41

    .line 391
    :cond_59
    const/4 v11, 0x5

    if-le v5, v11, :cond_5e

    goto/16 :goto_e1

    .line 394
    :cond_5e
    add-int/2addr v6, v2

    const/16 v12, 0xe

    if-le v6, v12, :cond_65

    goto/16 :goto_e1

    .line 396
    :cond_65
    invoke-static {p0, p1}, Landroid/webkit/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v12

    if-eqz v12, :cond_75

    .line 397
    if-eqz v7, :cond_71

    if-le v5, v2, :cond_71

    .line 400
    neg-int p0, p1

    return p0

    .line 403
    :cond_71
    if-ne v9, v1, :cond_d7

    move v9, p1

    goto :goto_d7

    .line 407
    :cond_75
    nop

    .line 409
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 410
    nop

    .line 411
    move v8, v2

    move v7, v3

    goto :goto_d7

    .line 414
    :cond_84
    if-ne v6, v11, :cond_8d

    if-nez v8, :cond_8d

    .line 416
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 417
    goto :goto_e1

    .line 420
    :cond_8d
    if-eqz v8, :cond_d6

    const/4 v7, 0x4

    if-le v6, v7, :cond_d6

    .line 422
    invoke-static {p0, p1}, Landroid/webkit/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object p1

    .line 423
    if-eqz p1, :cond_d6

    .line 424
    const-string v7, "et"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {p1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "al"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 426
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result p1

    .line 427
    goto :goto_e1

    .line 431
    :cond_b1
    sget-object v4, Landroid/webkit/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 432
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 433
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/webkit/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 434
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    return p0

    .line 445
    :cond_d0
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v10

    move v7, v3

    goto :goto_d7

    .line 375
    :cond_d6
    move v7, v3

    :cond_d7
    :goto_d7
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    goto/16 :goto_1c

    .line 451
    :cond_e1
    :goto_e1
    if-lez v10, :cond_e4

    return v10

    .line 453
    :cond_e4
    if-lez v9, :cond_e7

    goto :goto_e8

    :cond_e7
    move v9, p1

    :goto_e8
    neg-int p0, v9

    return p0
.end method

.method private static blacklist checkHouseNumber(Ljava/lang/String;)Z
    .registers 5

    .line 263
    nop

    .line 264
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    .line 264
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 267
    :cond_19
    const/4 v1, 0x5

    if-le v2, v1, :cond_1d

    return v0

    .line 270
    :cond_1d
    sget-object v1, Landroid/webkit/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7c

    .line 272
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 273
    if-nez v1, :cond_35

    .line 274
    return v0

    .line 276
    :cond_35
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 277
    rem-int/lit8 v0, v1, 0xa

    const-string/jumbo v2, "th"

    packed-switch v0, :pswitch_data_7e

    .line 285
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 283
    :pswitch_4f
    rem-int/lit8 v1, v1, 0x64

    const/16 v0, 0xd

    if-ne v1, v0, :cond_56

    goto :goto_59

    :cond_56
    const-string/jumbo v2, "rd"

    :goto_59
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 281
    :pswitch_5e
    rem-int/lit8 v1, v1, 0x64

    const/16 v0, 0xc

    if-ne v1, v0, :cond_65

    goto :goto_68

    :cond_65
    const-string/jumbo v2, "nd"

    :goto_68
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 279
    :pswitch_6d
    rem-int/lit8 v1, v1, 0x64

    const/16 v0, 0xb

    if-ne v1, v0, :cond_74

    goto :goto_77

    :cond_74
    const-string/jumbo v2, "st"

    :goto_77
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 288
    :cond_7c
    return v2

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_5e
        :pswitch_4f
    .end packed-switch
.end method

.method static blacklist findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 463
    sget-object v0, Landroid/webkit/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 464
    const/4 v1, 0x0

    move v2, v1

    .line 465
    :goto_8
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 466
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 467
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 468
    invoke-static {p0, v0}, Landroid/webkit/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    move-result v3

    .line 469
    if-lez v3, :cond_27

    .line 470
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 472
    :cond_27
    neg-int v2, v3

    .line 473
    goto :goto_8

    .line 474
    :cond_29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_8

    .line 477
    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist isValidLocationName(Ljava/lang/String;)Z
    .registers 2

    .line 351
    sget-object v0, Landroid/webkit/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static blacklist isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .registers 5

    .line 334
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 336
    :cond_4
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    .line 337
    :goto_8
    if-lez v1, :cond_16

    .line 338
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_8

    .line 340
    :cond_16
    :goto_16
    sget-object p1, Landroid/webkit/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2e

    sget-object p1, Landroid/webkit/FindAddress;->sStateZipCodeRanges:[Landroid/webkit/FindAddress$ZipRange;

    aget-object p1, p1, v1

    .line 341
    invoke-virtual {p1, p0}, Landroid/webkit/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 340
    :goto_2f
    return v0
.end method

.method private static blacklist matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    .line 300
    const/4 v0, 0x0

    if-lez p1, :cond_13

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    .line 301
    :cond_13
    sget-object v1, Landroid/webkit/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 303
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object p0

    .line 304
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    return-object p0

    .line 306
    :cond_37
    return-object v0
.end method

.method private static blacklist matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    .line 319
    const/4 v0, 0x0

    if-lez p1, :cond_13

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    .line 320
    :cond_13
    sget-object v1, Landroid/webkit/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    :cond_2b
    return-object v0
.end method
