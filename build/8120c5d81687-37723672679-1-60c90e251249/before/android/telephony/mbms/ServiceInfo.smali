.class public Landroid/telephony/mbms/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# static fields
.field static final greylist-max-o MAP_LIMIT:I = 0x3e8


# instance fields
.field private final greylist-max-o className:Ljava/lang/String;

.field private final greylist-max-o locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o serviceId:Ljava/lang/String;

.field private final greylist-max-o sessionEndTime:Ljava/util/Date;

.field private final greylist-max-o sessionStartTime:Ljava/util/Date;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_9f

    if-ltz v0, :cond_9f

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    .line 82
    :goto_14
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_31

    .line 83
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Ljava/util/Locale;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move v0, v2

    goto :goto_14

    .line 87
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    if-gt v0, v1, :cond_86

    if-ltz v0, :cond_86

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 93
    :goto_46
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5f

    .line 94
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v2, Ljava/util/Locale;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 95
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    move v0, v1

    goto :goto_46

    .line 97
    :cond_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 98
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 99
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 100
    return-void

    .line 90
    :cond_86
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad locale length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_9f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad map length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_83

    if-eqz p2, :cond_83

    if-eqz p3, :cond_83

    if-eqz p4, :cond_83

    if-eqz p5, :cond_83

    if-eqz p6, :cond_83

    .line 59
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_66

    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_49

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    .line 67
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    iput-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 70
    iput-object p4, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 71
    invoke-virtual {p5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 72
    invoke-virtual {p6}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 73
    return-void

    .line 63
    :cond_49
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad locales length "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_66
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad map length "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad ServiceInfo construction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 186
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 187
    return v1

    .line 189
    :cond_8
    instance-of v2, p1, Landroid/telephony/mbms/ServiceInfo;

    if-nez v2, :cond_d

    .line 190
    return v1

    .line 192
    :cond_d
    check-cast p1, Landroid/telephony/mbms/ServiceInfo;

    .line 193
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v3, p1, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 194
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 195
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 196
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    iget-object v3, p1, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 197
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    iget-object p1, p1, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 198
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 193
    :goto_4d
    return v0
.end method

.method public whitelist getLocales()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .registers 3

    .line 131
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 134
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 132
    :cond_11
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Locale not supported"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getNamedContentLocales()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceClassName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceId()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionEndTime()Ljava/util/Date;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist getSessionStartTime()Ljava/util/Date;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 203
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    iget-object v5, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 104
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 105
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    goto :goto_11

    .line 110
    :cond_2c
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 115
    goto :goto_40

    .line 116
    :cond_50
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 118
    iget-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 119
    return-void
.end method
