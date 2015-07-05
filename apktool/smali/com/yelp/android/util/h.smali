.class public Lcom/yelp/android/util/h;
.super Ljava/lang/Object;
.source "DnsCacheUtils.java"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd-yyyy HH:mm:ss:SSS z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/yelp/android/util/h;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 12

    .prologue
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string/jumbo v1, "addressCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "cache"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 35
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "map"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 38
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v5, "mHostname"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 50
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    const-string/jumbo v0, "expiryNanos"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 56
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 65
    sget-object v5, Lcom/yelp/android/util/h;->a:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v0, "value"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 70
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    check-cast v0, [Ljava/net/InetAddress;

    .line 74
    new-instance v6, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    array-length v7, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v8, v0, v1

    .line 76
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", printing raw cache entry: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
