.class Lcom/kahuna/sdk/l$b$1;
.super Lcom/kahuna/sdk/n;
.source "KahunaCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l$b;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l$b;)V
    .locals 0

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    invoke-direct {p0}, Lcom/kahuna/sdk/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1880
    .line 1883
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1884
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "onSuccess returned with empty string"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v4

    move v0, v2

    .line 1890
    :goto_0
    if-eqz v0, :cond_2

    .line 1892
    :try_start_1
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->d(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1893
    :try_start_2
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1895
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/kahuna/sdk/s;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 1896
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1897
    :try_start_3
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->f(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v6, v7, v1}, Lcom/kahuna/sdk/s;->b(JLandroid/content/Context;)V

    .line 1899
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 1900
    const-string/jumbo v1, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number events submitted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->A(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget-object v5, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v5, v5, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v5}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1904
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1905
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;

    .line 1907
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_1

    .line 1908
    const-string/jumbo v1, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Events let in Queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_1
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;J)J

    .line 1912
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->w(Lcom/kahuna/sdk/l;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v6, v7, v1}, Lcom/kahuna/sdk/s;->a(JLandroid/content/Context;)V

    .line 1915
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/lang/String;)Ljava/lang/String;

    .line 1916
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1919
    :cond_2
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_3

    .line 1920
    const-string/jumbo v1, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "server reply: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_3
    if-eqz v3, :cond_6

    .line 1924
    const-string/jumbo v1, "s"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1925
    if-eqz v5, :cond_c

    .line 1926
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v1, v2

    .line 1927
    :goto_1
    if-ge v1, v6, :cond_c

    .line 1928
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 1929
    invoke-static {v7}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1930
    const-string/jumbo v8, "a"

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1931
    iget-object v7, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v7, v7, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v7}, Lcom/kahuna/sdk/l;->o(Lcom/kahuna/sdk/l;)Ljava/util/Map;

    move-result-object v7

    .line 1932
    new-instance v8, Lcom/kahuna/sdk/Event;

    const-string/jumbo v9, "k_server_request"

    invoke-direct {v8, v9}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v8, v7}, Lcom/kahuna/sdk/Event;->b(Ljava/util/Map;)V

    .line 1934
    iget-object v7, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v7, v7, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-virtual {v7, v8}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/Event;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1927
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1886
    :cond_5
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1887
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    move-object v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 1896
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1993
    :catch_0
    move-exception v1

    .line 1994
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1995
    sget-boolean v3, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v3, :cond_6

    .line 1996
    const-string/jumbo v3, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Caught exception in http response handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 2001
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->p(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2002
    :try_start_7
    iget-object v3, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v3, v3, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Z)Z

    .line 2003
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2005
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2006
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2007
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1, v4}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;

    .line 2010
    :cond_7
    if-eqz v0, :cond_10

    .line 2012
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->C(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2013
    :try_start_8
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2014
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->cancel()V

    .line 2015
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;

    .line 2017
    :cond_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2018
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->A(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->H(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2019
    :cond_9
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const-string/jumbo v1, "flushing"

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2020
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const-wide/16 v4, 0x7d0

    invoke-static {v1, v4, v5, v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;JLorg/json/JSONObject;Z)V

    .line 2026
    :cond_a
    :goto_5
    return-void

    .line 1935
    :cond_b
    :try_start_9
    const-string/jumbo v8, "c"

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1936
    iget-object v7, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v7, v7, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v7}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/kahuna/sdk/s;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 1937
    new-instance v8, Lcom/kahuna/sdk/Event;

    const-string/jumbo v9, "k_server_request"

    invoke-direct {v8, v9}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v8, v7}, Lcom/kahuna/sdk/Event;->a(Ljava/util/Map;)V

    .line 1939
    iget-object v7, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v7, v7, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-virtual {v7, v8}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/Event;)V

    goto/16 :goto_2

    .line 1946
    :cond_c
    const-string/jumbo v1, "c"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1947
    if-eqz v1, :cond_d

    .line 1948
    iget-object v5, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v5, v5, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/t;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/t;)Lcom/kahuna/sdk/t;

    .line 1949
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kahuna/sdk/t;->p()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/c;->a(Lorg/json/JSONObject;)V

    .line 1950
    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v1, v1, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v5, v5, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v5}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;Lcom/kahuna/sdk/t;)V

    .line 1952
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_d

    .line 1953
    const-string/jumbo v1, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Updated SDK Config Version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " flushInterval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->b()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " flushEventCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->d()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " events:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->e()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " flushWithDelayTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->g()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " delayEvents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->i()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bucketConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->p()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " eventMapping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->j()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " include: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->l()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exclude: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->k()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " eventPropertiesMaxCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->m()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " eventPropertiesIncludeMap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->n()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " eventPropertiesExcludeMap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kahuna/sdk/t;->o()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_d
    const-string/jumbo v1, "iam"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1966
    if-eqz v1, :cond_e

    .line 1967
    invoke-static {v1}, Lcom/kahuna/sdk/o;->a(Lorg/json/JSONObject;)V

    .line 1971
    :cond_e
    const-string/jumbo v1, "location"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v1

    .line 1972
    if-eqz v1, :cond_f

    .line 1974
    :try_start_a
    iget-object v5, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v5, v5, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/kahuna/sdk/location/i;->a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 1975
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_f

    .line 1976
    iget-object v5, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v5, v5, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    iget-object v6, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v6, v6, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v6}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1987
    :cond_f
    :goto_6
    :try_start_b
    const-string/jumbo v1, "sdk_iam"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1988
    if-eqz v1, :cond_6

    .line 1989
    invoke-static {v1}, Lcom/kahuna/sdk/inapp/c;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 1978
    :catch_1
    move-exception v1

    .line 1979
    sget-boolean v5, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v5, :cond_f

    .line 1980
    const-string/jumbo v5, "Kahuna"

    const-string/jumbo v6, "Caught error when attepmting to to parse server location services command. If you are NOT using location services please ignore this error: "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const-string/jumbo v5, "Kahuna"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    .line 2003
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    .line 2017
    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    .line 2024
    :cond_10
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    invoke-static {v1}, Lcom/kahuna/sdk/l$b;->a(Lcom/kahuna/sdk/l$b;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 1993
    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1866
    invoke-super {p0, p1, p2}, Lcom/kahuna/sdk/n;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1867
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 1868
    const-string/jumbo v0, "Kahuna"

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

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->p(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1871
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Z)Z

    .line 1872
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    iget-object v0, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    iget-object v0, v0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    iget-object v1, p0, Lcom/kahuna/sdk/l$b$1;->a:Lcom/kahuna/sdk/l$b;

    invoke-static {v1}, Lcom/kahuna/sdk/l$b;->a(Lcom/kahuna/sdk/l$b;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;)V

    .line 1875
    return-void

    .line 1872
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
