.class public Lcom/kahuna/sdk/location/m;
.super Ljava/lang/Object;
.source "KahunaRegionManager.java"


# static fields
.field private static final a:Lcom/kahuna/sdk/location/m;


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
    new-instance v0, Lcom/kahuna/sdk/location/m;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/m;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/m;->d:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/m;->f:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public static a(Lcom/kahuna/sdk/h;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/h;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "You cannot request to obtain Kahuna monitoring specs externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 212
    :goto_0
    return-object v0

    .line 202
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 204
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v2, v0, Lcom/kahuna/sdk/location/m;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

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

    .line 207
    const-string/jumbo v4, "KahunaEngineRegion_"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
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

    .line 212
    goto :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/h;Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 73
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 74
    :cond_0
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "You cannot init the Region Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iput-object p1, v0, Lcom/kahuna/sdk/location/m;->g:Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    invoke-static {p1}, Lcom/kahuna/sdk/location/m;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/kahuna/sdk/location/m;->d:Z

    .line 81
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/m;->d:Z

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    new-instance v1, Lcom/kahuna/sdk/location/f;

    invoke-direct {v1, p1}, Lcom/kahuna/sdk/location/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kahuna/sdk/location/m;->b:Lcom/kahuna/sdk/location/f;

    .line 83
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    new-instance v1, Lcom/kahuna/sdk/location/e;

    invoke-direct {v1, p1}, Lcom/kahuna/sdk/location/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kahuna/sdk/location/m;->c:Lcom/kahuna/sdk/location/e;

    .line 85
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v2, v0, Lcom/kahuna/sdk/location/m;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    invoke-static {p0, p1}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 91
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

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

    .line 92
    sget-object v1, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v1, v1, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_3

    .line 93
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kahuna/sdk/location/m;->d:Z

    .line 123
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string/jumbo v1, "KahunaEngine"

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

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 97
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

    .line 98
    sget-object v3, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v3, v3, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    :cond_5
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-static {p0, v0, p1}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Ljava/util/Map;Landroid/content/Context;)V

    .line 102
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    invoke-static {p0, p1}, Lcom/kahuna/sdk/ag;->b(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
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

    .line 110
    sget-object v3, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v3, v3, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 111
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 114
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    invoke-static {p0, v1, p1}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;Ljava/util/List;Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 294
    :cond_0
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "You cannot set last entered region externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->g:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string/jumbo v0, "KahunaEngine"

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

.method public static a(Lcom/kahuna/sdk/h;Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/h;",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/location/d;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 143
    :cond_0
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "You cannot request to add geofences to the Region Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/m;->d:Z

    if-eqz v0, :cond_8

    .line 149
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v2, v0, Lcom/kahuna/sdk/location/m;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    sget-object v1, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v1, v1, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v1, v1, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
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

    .line 156
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const-string/jumbo v1, "KahunaEngine"

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

    .line 161
    :cond_5
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 162
    sget-object v1, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v1, v1, Lcom/kahuna/sdk/location/m;->c:Lcom/kahuna/sdk/location/e;

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/location/e;->a(Ljava/util/List;)V

    .line 166
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 168
    if-eqz p1, :cond_7

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/d;

    .line 171
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->f()Lcom/google/android/gms/location/Geofence;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
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

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 176
    :cond_7
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->b:Lcom/kahuna/sdk/location/f;

    invoke-virtual {v0, v3}, Lcom/kahuna/sdk/location/f;->a(Ljava/util/List;)V

    .line 177
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iput-object v4, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    .line 178
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->e:Ljava/util/Map;

    invoke-static {p0, v0, p2}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Ljava/util/Map;Landroid/content/Context;)V

    .line 179
    invoke-static {p0, p1, p2}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Ljava/util/List;Landroid/content/Context;)V

    .line 180
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 183
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Attempted to register geofences but device is not properly setup."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/h;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 22

    .prologue
    .line 234
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/kahuna/sdk/h;

    if-nez v2, :cond_2

    .line 235
    :cond_0
    const-string/jumbo v2, "KahunaEngine"

    const-string/jumbo v3, "You cannot request to process regions externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-boolean v2, v2, Lcom/kahuna/sdk/location/m;->d:Z

    if-eqz v2, :cond_6

    .line 241
    const-string/jumbo v2, "circle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 242
    if-eqz v13, :cond_1

    .line 243
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 244
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v14, :cond_5

    .line 248
    :try_start_1
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_4

    .line 250
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    const-string/jumbo v4, "lat"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 252
    const-string/jumbo v6, "long"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 253
    const-string/jumbo v8, "radius"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 254
    const-string/jumbo v9, "expiry"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 256
    const-wide/16 v9, 0x0

    .line 257
    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_3

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    sub-long v16, v16, v18

    .line 259
    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_3

    .line 260
    const-wide/16 v10, 0x3e8

    mul-long v9, v16, v10

    .line 264
    :cond_3
    new-instance v2, Lcom/kahuna/sdk/location/d;

    int-to-float v8, v8

    const/4 v11, 0x3

    invoke-direct/range {v2 .. v11}, Lcom/kahuna/sdk/location/d;-><init>(Ljava/lang/String;DDFJI)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_4
    :goto_2
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    .line 268
    :catch_0
    move-exception v2

    .line 269
    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 270
    const-string/jumbo v3, "KahunaEngine"

    const-string/jumbo v4, "Encountered error processing geofence regions from Kahuna servers."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 285
    :catch_1
    move-exception v2

    .line 286
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const-string/jumbo v3, "KahunaEngine"

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

    .line 275
    :cond_5
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/location/m;->c(Lcom/kahuna/sdk/h;)V

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 280
    :cond_6
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    const-string/jumbo v2, "KahunaEngine"

    const-string/jumbo v3, "Server responded with available geofence regions but device is not setup properly."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/m;->d:Z

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 331
    .line 333
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/location/l;->a(Landroid/content/Context;)Z

    move-result v0

    .line 334
    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/kahuna/sdk/location/l;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string/jumbo v1, "KahunaEngine"

    const-string/jumbo v2, "Caught error when checking for play services. If you are NOT using Geofencing please ignore this error: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v1, "KahunaEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_1

    .line 306
    :cond_0
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "You cannot get last entered region externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->g:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/kahuna/sdk/ag;->c(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/kahuna/sdk/h;)V
    .locals 2

    .prologue
    .line 314
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 315
    :cond_0
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "You cannot clear entered region externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/m;->a:Lcom/kahuna/sdk/location/m;

    iget-object v0, v0, Lcom/kahuna/sdk/location/m;->g:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Cleared last entered regionId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
