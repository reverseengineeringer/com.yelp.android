.class public Lcom/kahuna/sdk/d;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/kahuna/sdk/d;->b:I

    .line 44
    iput v0, p0, Lcom/kahuna/sdk/d;->c:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/d;->d:Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You must specify a valid name for the event builder. Ignoring event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/kahuna/sdk/d;->a:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public a()Lcom/kahuna/sdk/Event;
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 129
    iget-object v0, p0, Lcom/kahuna/sdk/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v2, Lcom/kahuna/sdk/Event;

    iget-object v0, p0, Lcom/kahuna/sdk/d;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/kahuna/sdk/d;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/kahuna/sdk/d;->c:I

    if-eq v0, v1, :cond_1

    .line 137
    iget v0, p0, Lcom/kahuna/sdk/d;->b:I

    invoke-virtual {v2, v0}, Lcom/kahuna/sdk/Event;->a(I)V

    .line 138
    iget v0, p0, Lcom/kahuna/sdk/d;->c:I

    invoke-virtual {v2, v0}, Lcom/kahuna/sdk/Event;->b(I)V

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/kahuna/sdk/d;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 143
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 148
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 150
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 154
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_2

    .line 155
    const-string/jumbo v1, "Kahuna"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when building event from event builder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 159
    :cond_3
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;)V

    .line 161
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 163
    goto :goto_0
.end method

.method public a(II)Lcom/kahuna/sdk/d;
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/kahuna/sdk/d;->b:I

    .line 76
    iput p2, p0, Lcom/kahuna/sdk/d;->c:I

    .line 77
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;
    .locals 3

    .prologue
    .line 92
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    :cond_0
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You must specify a valid Event property key and value.  They cannot be null or empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return-object p0

    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "k_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1

    .line 100
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Property keys cannot begin with \'k_\' those are reserved by Kahuna."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/kahuna/sdk/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 113
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/kahuna/sdk/d;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
