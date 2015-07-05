.class Lcom/kahuna/sdk/w;
.super Lcom/yelp/android/ao/f;
.source "KahunaAnalytics.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/v;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/v;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    invoke-direct {p0}, Lcom/yelp/android/ao/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1908
    const/4 v8, 0x0

    .line 1910
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1911
    const-string/jumbo v0, "success"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 1913
    if-eqz v8, :cond_2

    .line 1915
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->d(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1916
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1918
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kahuna/sdk/ag;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 1919
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1921
    :try_start_3
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 1922
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number events submitted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->D(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1926
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1927
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Ljava/util/List;)Ljava/util/List;

    .line 1929
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 1930
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Events let in Queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;J)J

    .line 1934
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->I(Lcom/kahuna/sdk/h;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/ag;->a(JLandroid/content/Context;)V

    .line 1937
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/lang/String;)Ljava/lang/String;

    .line 1938
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1941
    :cond_2
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_3

    .line 1942
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "server reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_3
    const-string/jumbo v0, "s"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1949
    if-eqz v11, :cond_a

    .line 1950
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 1951
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v12, :cond_a

    .line 1952
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1953
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1954
    const-string/jumbo v1, "a"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1955
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->s(Lcom/kahuna/sdk/h;)Ljava/util/Map;

    move-result-object v5

    .line 1956
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_user_attributes"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1957
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1951
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1919
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2003
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v8

    .line 2004
    :goto_1
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_5

    .line 2005
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caught exception in http response handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 2010
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->t(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2011
    :try_start_6
    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Z)Z

    .line 2012
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2014
    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2015
    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2016
    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Ljava/util/List;)Ljava/util/List;

    .line 2019
    :cond_6
    if-eqz v0, :cond_e

    .line 2021
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->p(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2022
    :try_start_7
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2023
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/u;->cancel()V

    .line 2024
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/u;)Lcom/kahuna/sdk/u;

    .line 2027
    :cond_7
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->D(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->J(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2028
    :cond_8
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    new-instance v2, Lcom/kahuna/sdk/u;

    iget-object v3, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v3, v3, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/kahuna/sdk/u;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/u;)Lcom/kahuna/sdk/u;

    .line 2029
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    new-instance v2, Lcom/kahuna/sdk/v;

    iget-object v3, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v3, v3, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/kahuna/sdk/v;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Lcom/kahuna/sdk/u;->schedule(Ljava/util/TimerTask;J)V

    .line 2031
    :cond_9
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2036
    :goto_3
    return-void

    .line 1964
    :cond_a
    :try_start_8
    const-string/jumbo v0, "c"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1965
    if-eqz v0, :cond_b

    .line 1966
    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/ah;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/ah;)Lcom/kahuna/sdk/ah;

    .line 1967
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/b;->a(Lorg/json/JSONObject;)V

    .line 1968
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v1, v1, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ah;->a(Landroid/content/Context;Lcom/kahuna/sdk/ah;)V

    .line 1970
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_b

    .line 1971
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updated SDK Config Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushEventCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " events:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->e()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushWithDelayTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->g()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " delayEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->i()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bucketConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eventMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->j()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " include: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->l()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exclude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v2, v2, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->k()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_b
    const-string/jumbo v0, "iam"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1981
    if-eqz v0, :cond_c

    .line 1982
    invoke-static {v0}, Lcom/kahuna/sdk/y;->a(Lorg/json/JSONObject;)V

    .line 1986
    :cond_c
    const-string/jumbo v0, "location"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 1987
    if-eqz v0, :cond_d

    .line 1989
    :try_start_9
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 1990
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_d

    .line 1991
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/h;Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_d
    :goto_4
    move v0, v8

    .line 2008
    goto/16 :goto_2

    .line 1994
    :catch_1
    move-exception v0

    .line 1995
    :try_start_a
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_d

    .line 1996
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Caught error when attepmting to to parse server location services command. If you are NOT using location services please ignore this error: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const-string/jumbo v1, "KahunaAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4

    .line 2012
    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    .line 2031
    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    .line 2034
    :cond_e
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->H(Lcom/kahuna/sdk/h;)V

    goto/16 :goto_3

    .line 2003
    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v8

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1894
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ao/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1895
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 1896
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to send request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->t(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1899
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Z)Z

    .line 1900
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    iget-object v0, p0, Lcom/kahuna/sdk/w;->a:Lcom/kahuna/sdk/v;

    iget-object v0, v0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->H(Lcom/kahuna/sdk/h;)V

    .line 1903
    return-void

    .line 1900
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
