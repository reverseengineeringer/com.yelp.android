.class public Lcom/kahuna/sdk/location/i;
.super Ljava/lang/Object;
.source "KahunaRegionManager.java"


# static fields
.field private static final a:Lcom/kahuna/sdk/location/i;


# instance fields
.field private b:Lcom/kahuna/sdk/location/f;

.field private c:Lcom/kahuna/sdk/location/e;

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/kahuna/sdk/location/i;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/i;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/i;->d:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/i;->f:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iput-object p0, v0, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static a(Lcom/kahuna/sdk/l;)V
    .locals 10

    .prologue
    .line 77
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_2

    .line 78
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot init the Region Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/kahuna/sdk/location/i;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/kahuna/sdk/location/i;->d:Z

    .line 84
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/i;->d:Z

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    new-instance v1, Lcom/kahuna/sdk/location/f;

    sget-object v2, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v2, v2, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/location/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kahuna/sdk/location/i;->b:Lcom/kahuna/sdk/location/f;

    .line 86
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    new-instance v1, Lcom/kahuna/sdk/location/e;

    sget-object v2, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v2, v2, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/location/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kahuna/sdk/location/i;->c:Lcom/kahuna/sdk/location/e;

    .line 88
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v2, v0, Lcom/kahuna/sdk/location/i;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 93
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 94
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_3

    .line 96
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kahuna/sdk/location/i;->d:Z

    .line 126
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught error in Region Manager init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 100
    :cond_4
    :try_start_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    sget-object v3, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v3, v3, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 104
    :cond_5
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Ljava/util/Map;Landroid/content/Context;)V

    .line 105
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :try_start_4
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/kahuna/sdk/s;->b(Lcom/kahuna/sdk/l;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/d;

    .line 113
    sget-object v3, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v3, v3, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 117
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/kahuna/sdk/location/i;->a(Lcom/kahuna/sdk/l;Ljava/util/List;Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/l;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_2

    .line 297
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot set last entered region externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving last entered regionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/l;Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/l;",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/location/d;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_2

    .line 146
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot request to add geofences to the Region Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/i;->d:Z

    if-eqz v0, :cond_8

    .line 152
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v2, v0, Lcom/kahuna/sdk/location/i;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/d;

    .line 159
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception in Region Manager add geofences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 164
    :cond_5
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 165
    sget-object v1, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v1, v1, Lcom/kahuna/sdk/location/i;->c:Lcom/kahuna/sdk/location/e;

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/location/e;->a(Ljava/util/List;)V

    .line 169
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 171
    if-eqz p1, :cond_7

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/d;

    .line 174
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->f()Lcom/google/android/gms/location/f;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->e()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 179
    :cond_7
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->b:Lcom/kahuna/sdk/location/f;

    invoke-virtual {v0, v3}, Lcom/kahuna/sdk/location/f;->a(Ljava/util/List;)V

    .line 180
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iput-object v4, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    .line 181
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-static {p0, v0, p2}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Ljava/util/Map;Landroid/content/Context;)V

    .line 182
    invoke-static {p0, p1, p2}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Ljava/util/List;Landroid/content/Context;)V

    .line 183
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 186
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Attempted to register geofences but device is not properly setup."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 22

    .prologue
    .line 237
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/kahuna/sdk/l;

    if-nez v2, :cond_2

    .line 238
    :cond_0
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "You cannot request to process regions externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-boolean v2, v2, Lcom/kahuna/sdk/location/i;->d:Z

    if-eqz v2, :cond_6

    .line 244
    const-string/jumbo v2, "circle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 245
    if-eqz v13, :cond_1

    .line 246
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 247
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v14, :cond_5

    .line 251
    :try_start_1
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_4

    .line 253
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    const-string/jumbo v4, "lat"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 255
    const-string/jumbo v6, "long"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 256
    const-string/jumbo v8, "radius"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 257
    const-string/jumbo v9, "expiry"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 259
    const-wide/16 v9, 0x0

    .line 260
    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_3

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    sub-long v16, v16, v18

    .line 262
    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_3

    .line 263
    const-wide/16 v10, 0x3e8

    mul-long v9, v16, v10

    .line 267
    :cond_3
    new-instance v2, Lcom/kahuna/sdk/location/d;

    int-to-float v8, v8

    const/4 v11, 0x3

    invoke-direct/range {v2 .. v11}, Lcom/kahuna/sdk/location/d;-><init>(Ljava/lang/String;DDFJI)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :cond_4
    :goto_2
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    .line 271
    :catch_0
    move-exception v2

    .line 272
    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    const-string/jumbo v3, "Kahuna"

    const-string/jumbo v4, "Encountered error processing geofence regions from Kahuna servers."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 288
    :catch_1
    move-exception v2

    .line 289
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    const-string/jumbo v3, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caught exception in Region Manager process server regions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    :cond_5
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/location/i;->d(Lcom/kahuna/sdk/l;)V

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/kahuna/sdk/location/i;->a(Lcom/kahuna/sdk/l;Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 283
    :cond_6
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "Server responded with available geofence regions but device is not setup properly."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/i;->d:Z

    return v0
.end method

.method public static b(Lcom/kahuna/sdk/l;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/l;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_1

    .line 201
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot request to obtain Kahuna monitoring specs externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 215
    :goto_0
    return-object v0

    .line 205
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 207
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v2, v0, Lcom/kahuna/sdk/location/i;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 208
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    const-string/jumbo v4, "KahunaEngineRegion_"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 215
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 334
    .line 336
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/location/h;->a(Landroid/content/Context;)Z

    move-result v0

    .line 337
    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/kahuna/sdk/location/h;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Caught error when checking for play services. If you are NOT using Geofencing please ignore this error: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string/jumbo v1, "Kahuna"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_1

    .line 309
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot get last entered region externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/kahuna/sdk/s;->c(Lcom/kahuna/sdk/l;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Lcom/kahuna/sdk/l;)V
    .locals 2

    .prologue
    .line 317
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_2

    .line 318
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot clear entered region externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/i;->a:Lcom/kahuna/sdk/location/i;

    iget-object v0, v0, Lcom/kahuna/sdk/location/i;->g:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Cleared last entered regionId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
