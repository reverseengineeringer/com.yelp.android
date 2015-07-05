.class public Lcom/yelp/android/services/w;
.super Lcom/yelp/android/services/j;
.source "YelpQuery.java"


# static fields
.field private static final d:Ljava/security/SecureRandom;

.field private static final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/n;

.field private final i:Lcom/yelp/android/appdata/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/yelp/android/services/w;->d:Ljava/security/SecureRandom;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "asid"

    aput-object v2, v1, v4

    const-string/jumbo v2, "aidx"

    aput-object v2, v1, v5

    const-string/jumbo v2, "ref"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v3, "ap"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "location_lat"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "location_long"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "location_acc"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "mode"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "nonce"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "time"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yelp/android/services/w;->e:Ljava/util/HashSet;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "device"

    aput-object v2, v1, v4

    const-string/jumbo v2, "y_device"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yelp/android/services/w;->f:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->x()Lcom/yelp/android/appdata/j;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/services/w;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/n;Lcom/yelp/android/appdata/j;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/n;Lcom/yelp/android/appdata/j;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/yelp/android/services/x;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/services/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/w;->g:Ljava/util/LinkedHashMap;

    .line 61
    iput-object p2, p0, Lcom/yelp/android/services/w;->h:Lcom/yelp/android/appdata/n;

    .line 62
    iput-object p3, p0, Lcom/yelp/android/services/w;->i:Lcom/yelp/android/appdata/j;

    .line 63
    return-void
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/services/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 223
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p2, v0

    .line 224
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 236
    :cond_2
    return-void
.end method

.method private b(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    sget-object v2, Lcom/yelp/android/services/w;->f:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p2}, Lcom/yelp/android/util/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/services/w;->h:Lcom/yelp/android/appdata/n;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->g()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yelp/android/services/w;->g:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/services/w;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    .line 197
    :try_start_0
    invoke-static {p1, p0}, Lcom/yelp/android/services/w;->d(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yelp/android/services/a;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const/4 v1, 0x0

    const-string/jumbo v2, "Can\'t sign URLs with HMAC-SHA1. The universe is broken."

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const-string/jumbo v0, "BROKEN_SIGNATURE"

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 8

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/services/w;->h:Lcom/yelp/android/appdata/n;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->g()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x1f4

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    const-string/jumbo v3, "xref"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yelp/android/services/w;->i:Lcom/yelp/android/appdata/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->aa()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    const-string/jumbo v4, "xref"

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    const-string/jumbo v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 149
    sget-object v3, Lcom/yelp/android/services/w;->d:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    iget-object v3, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    const-string/jumbo v4, "nonce"

    invoke-static {v0}, Lcom/yelp/android/services/a;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 152
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 154
    iget-object v0, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has null value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 166
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 168
    iget-object v4, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/yelp/android/services/w;->f:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_4
    const-string/jumbo v0, "efs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/yelp/android/services/w;->g:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/services/w;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v0, "&signature="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {p0}, Lcom/yelp/android/services/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/services/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/services/w;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 241
    const-string/jumbo v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 242
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v3, "HmacSHA1"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 243
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 245
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/services/w;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/w;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/services/w;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "efs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/services/w;->f:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 100
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 103
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    const-string/jumbo v6, "%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 106
    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 107
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    iget-object v1, p0, Lcom/yelp/android/services/w;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    array-length v1, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v4, v2

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;D)Lcom/yelp/android/services/w;
    .locals 2

    .prologue
    .line 72
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/w;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/w;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/w;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/services/w;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    iget-object v1, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    new-array v2, v5, [Ljava/util/Set;

    sget-object v3, Lcom/yelp/android/services/w;->e:Ljava/util/HashSet;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/yelp/android/services/w;->a(Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/util/Set;)V

    .line 214
    iget-object v1, p0, Lcom/yelp/android/services/w;->g:Ljava/util/LinkedHashMap;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Set;

    sget-object v3, Lcom/yelp/android/services/w;->e:Ljava/util/HashSet;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/yelp/android/services/w;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/yelp/android/services/w;->a(Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/util/Set;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
