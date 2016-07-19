.class public Lcom/kahuna/sdk/u;
.super Ljava/lang/Object;
.source "KahunaSDKUpgradeManager.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kahuna/sdk/u;->a:J

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 323
    :try_start_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 325
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x186a0

    mul-long/2addr v4, v6

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v4

    .line 349
    :goto_0
    return-wide v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_0

    .line 333
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Version code was not a well formated versioning string + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    .line 343
    :goto_1
    if-ge v0, v3, :cond_2

    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 345
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected static a(Lcom/kahuna/sdk/l;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/s;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/kahuna/sdk/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/kahuna/sdk/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/kahuna/sdk/u;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/kahuna/sdk/l;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kahuna/sdk/s;->d(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception checking SDK upgrade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lcom/kahuna/sdk/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 89
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/kahuna/sdk/u;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 90
    const-wide/16 v2, 0x1cb

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    .line 91
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_0

    .line 92
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " deleting old SDK Config."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v2, Lcom/kahuna/sdk/t;

    invoke-direct {v2}, Lcom/kahuna/sdk/t;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;Lcom/kahuna/sdk/t;)V

    .line 96
    :cond_1
    const-wide/16 v2, 0x202

    cmp-long v2, v8, v2

    if-gez v2, :cond_3

    .line 97
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_2

    .line 98
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Setting old config version to 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;)Lcom/kahuna/sdk/t;

    move-result-object v2

    .line 101
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/kahuna/sdk/t;->a(J)V

    .line 102
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;Lcom/kahuna/sdk/t;)V

    .line 106
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x204

    cmp-long v2, v8, v2

    if-gez v2, :cond_5

    .line 107
    invoke-static/range {p0 .. p1}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 109
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_4

    .line 110
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with actively monitored regions. Wiping out regions, and setting delay to ignore first enter geofence."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Ljava/util/Map;Landroid/content/Context;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    add-long/2addr v2, v4

    sput-wide v2, Lcom/kahuna/sdk/u;->a:J

    .line 118
    :cond_5
    const-wide/16 v2, 0x226

    cmp-long v2, v8, v2

    if-gez v2, :cond_7

    .line 119
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_6

    .line 120
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Migrating user credentials and attributes to new storage format."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_6
    const-string/jumbo v2, "user_credentials"

    const-class v3, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "user_attributes"

    const-class v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    .line 126
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 127
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/kahuna/sdk/s;->c(Ljava/util/Map;Landroid/content/Context;)V

    .line 129
    :cond_7
    const-wide/16 v2, 0x22c

    cmp-long v2, v8, v2

    if-gez v2, :cond_9

    .line 130
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_8

    .line 131
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " re-calculating the event object checksums."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v2

    .line 137
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 139
    :cond_9
    const-string/jumbo v2, "2.0.0"

    invoke-static {v2}, Lcom/kahuna/sdk/u;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_16

    .line 140
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_a

    .line 141
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " migrating credentials to new storage."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/s;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 147
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/s;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 148
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    .line 299
    sget-boolean v3, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v3, :cond_c

    .line 300
    const-string/jumbo v3, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception performing upgrade script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_c
    :goto_1
    return-void

    .line 154
    :cond_d
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 155
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/kahuna/sdk/s;->b(Ljava/util/Map;Landroid/content/Context;)V

    .line 159
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v6

    .line 161
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 162
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_f

    .line 163
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "Adding event numbers to all previous events."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_f
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_15

    .line 167
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kahuna/sdk/Event;

    .line 168
    add-int/lit8 v3, v5, 0x1

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Lcom/kahuna/sdk/Event;->a(J)V

    .line 171
    invoke-virtual {v2}, Lcom/kahuna/sdk/Event;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_13

    .line 173
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 174
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/kahuna/sdk/Event;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 176
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 177
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 178
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 180
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 181
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 182
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v14, :cond_12

    .line 183
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    .line 184
    invoke-static {v15}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_10

    .line 185
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 190
    :cond_11
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_12
    invoke-interface {v7, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 196
    :catch_1
    move-exception v2

    .line 197
    :try_start_3
    const-string/jumbo v3, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Caught exception migrating old event credentials from Archive: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    :cond_13
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_2

    .line 194
    :cond_14
    :try_start_4
    invoke-virtual {v2, v7}, Lcom/kahuna/sdk/Event;->a(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 202
    :cond_15
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 205
    :cond_16
    const-string/jumbo v2, "2.0.2"

    invoke-static {v2}, Lcom/kahuna/sdk/u;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_1b

    .line 206
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_17

    .line 207
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " k_user_attributes event reording."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/s;->h(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 212
    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 213
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/s;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 215
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 217
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    if-eqz v3, :cond_18

    .line 221
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 225
    :cond_19
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 226
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v3

    .line 229
    new-instance v4, Lcom/kahuna/sdk/Event;

    const-string/jumbo v2, "k_user_attributes"

    invoke-direct {v4, v2}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4, v5}, Lcom/kahuna/sdk/Event;->b(Ljava/util/Map;)V

    .line 232
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kahuna/sdk/Event;

    .line 233
    :goto_7
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/kahuna/sdk/Event;->k()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_20

    .line 234
    invoke-virtual {v2}, Lcom/kahuna/sdk/Event;->k()J

    move-result-wide v6

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Lcom/kahuna/sdk/Event;->a(J)V

    .line 240
    :goto_8
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 246
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/Set;Landroid/content/Context;)V

    .line 248
    :cond_1b
    const-string/jumbo v2, "2.0.3"

    invoke-static {v2}, Lcom/kahuna/sdk/u;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_25

    .line 249
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_1c

    .line 250
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " remove k_auto_logout."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1c
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v7

    .line 256
    invoke-static {v7}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 257
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_1d

    .line 258
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "Migrating k_auto_logout events and re-adding event numbers."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1d
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kahuna/sdk/Event;

    invoke-virtual {v2}, Lcom/kahuna/sdk/Event;->k()J

    move-result-wide v4

    .line 262
    const-wide/16 v2, 0x1

    cmp-long v2, v4, v2

    if-gez v2, :cond_1e

    .line 263
    const-wide/16 v4, 0x1

    .line 264
    :cond_1e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 265
    const/4 v2, 0x0

    move v6, v2

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_24

    .line 266
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kahuna/sdk/Event;

    .line 267
    const-string/jumbo v3, "k_auto_logout"

    invoke-virtual {v2}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 269
    add-int/lit8 v3, v6, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_21

    add-int/lit8 v3, v6, 0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kahuna/sdk/Event;

    .line 270
    :goto_a
    if-eqz v3, :cond_22

    const-string/jumbo v11, "k_user_login"

    invoke-virtual {v3}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-wide v2, v4

    .line 265
    :goto_b
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_9

    .line 232
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 237
    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/s;->n(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/kahuna/sdk/Event;->a(J)V

    goto/16 :goto_8

    .line 269
    :cond_21
    const/4 v3, 0x0

    goto :goto_a

    .line 276
    :cond_22
    const-string/jumbo v3, "k_user_login"

    invoke-virtual {v2, v3}, Lcom/kahuna/sdk/Event;->a(Ljava/lang/String;)V

    .line 279
    :cond_23
    invoke-virtual {v2, v4, v5}, Lcom/kahuna/sdk/Event;->a(J)V

    .line 280
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    goto :goto_b

    .line 283
    :cond_24
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/kahuna/sdk/s;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 284
    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Lcom/kahuna/sdk/s;->b(JLandroid/content/Context;)V

    .line 288
    :cond_25
    const-string/jumbo v2, "2.2.0"

    invoke-static {v2}, Lcom/kahuna/sdk/u;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_c

    .line 289
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_26

    .line 290
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Setting old config version to 0 and"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "updating event object checksums."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;)Lcom/kahuna/sdk/t;

    move-result-object v2

    .line 294
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/kahuna/sdk/t;->a(J)V

    .line 295
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;Lcom/kahuna/sdk/t;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method protected static a(Z)Z
    .locals 8

    .prologue
    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 307
    const/4 v0, 0x0

    .line 308
    sget-wide v4, Lcom/kahuna/sdk/u;->a:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 309
    sget-wide v4, Lcom/kahuna/sdk/u;->a:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 313
    :cond_0
    if-eqz p0, :cond_1

    .line 314
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/kahuna/sdk/u;->a:J

    .line 317
    :cond_1
    return v0
.end method
