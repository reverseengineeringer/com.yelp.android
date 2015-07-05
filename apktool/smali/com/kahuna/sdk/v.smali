.class Lcom/kahuna/sdk/v;
.super Ljava/util/TimerTask;
.source "KahunaAnalytics.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/h;


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/h;)V
    .locals 0

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V
    .locals 0

    .prologue
    .line 1740
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/v;-><init>(Lcom/kahuna/sdk/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1745
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->t(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1746
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Z)Z

    .line 1747
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1749
    :try_start_2
    new-instance v9, Lcom/yelp/android/ao/i;

    invoke-direct {v9}, Lcom/yelp/android/ao/i;-><init>()V

    .line 1750
    const-string/jumbo v0, "key"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->i(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string/jumbo v0, "dev_id"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->j(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string/jumbo v0, "app_name"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->u(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string/jumbo v0, "app_ver"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->v(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string/jumbo v0, "os_version"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->w(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string/jumbo v0, "os_name"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->x(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string/jumbo v0, "dev_name"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->y(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string/jumbo v0, "client_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string/jumbo v0, "sdk_version"

    const-string/jumbo v1, "556"

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->z(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    const-string/jumbo v0, "push_token"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->z(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->A(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->B(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1763
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->A(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->B(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :cond_1
    const-string/jumbo v1, "env"

    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->k(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "s"

    :goto_0
    invoke-virtual {v9, v1, v0}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string/jumbo v0, "c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1770
    invoke-static {}, Lcom/kahuna/sdk/h;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
    const-string/jumbo v0, "iam"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1775
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/kahuna/sdk/h;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/kahuna/sdk/location/m;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1776
    const-string/jumbo v0, "rm"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1777
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v0

    .line 1778
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 1779
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1780
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1781
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1800
    :catch_0
    move-exception v0

    .line 1804
    :cond_3
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1805
    const-string/jumbo v0, "fsupported"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :cond_4
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1809
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Ljava/util/List;)Ljava/util/List;

    .line 1811
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->f(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1812
    :try_start_5
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->g(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1813
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->s(Lcom/kahuna/sdk/h;)Ljava/util/Map;

    move-result-object v2

    .line 1814
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1816
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->g(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1817
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1818
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2078
    :catch_1
    move-exception v0

    .line 2079
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_6

    .line 2080
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception in Send Events Task handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2084
    :cond_6
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->p(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2085
    :try_start_7
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2086
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/u;->cancel()V

    .line 2087
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/u;)Lcom/kahuna/sdk/u;

    .line 2089
    :cond_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2091
    :cond_8
    :goto_4
    return-void

    .line 1747
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    .line 1766
    :cond_9
    const-string/jumbo v0, "p"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 1783
    :cond_a
    :try_start_a
    const-string/jumbo v0, "rm"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/kahuna/sdk/h;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/kahuna/sdk/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1789
    const-string/jumbo v0, "bm"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1790
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v0

    .line 1791
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1792
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1793
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1794
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 1796
    :cond_c
    const-string/jumbo v0, "bm"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 1821
    :cond_d
    :try_start_b
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->g(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1822
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->g(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Set;Landroid/content/Context;)V

    .line 1824
    :cond_e
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1825
    :try_start_c
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->d(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1827
    if-eqz v5, :cond_f

    .line 1828
    :try_start_d
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

    .line 1829
    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1833
    :cond_f
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->D(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_10

    .line 1834
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->D(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1837
    :cond_10
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->n()I

    move-result v0

    .line 1838
    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    move v1, v0

    :goto_6
    move v2, v8

    .line 1839
    :goto_7
    if-ge v2, v1, :cond_13

    .line 1840
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 1841
    iget-object v3, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v3}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 1844
    if-eqz v0, :cond_11

    .line 1845
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1839
    :cond_11
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1838
    :cond_12
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_6

    .line 1848
    :cond_13
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1851
    :try_start_e
    invoke-static {}, Lcom/kahuna/sdk/b;->a()V

    .line 1853
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 1855
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->t(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 1856
    :try_start_f
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Z)Z

    .line 1857
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1858
    :try_start_10
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->p(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 1859
    :try_start_11
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1860
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/u;->cancel()V

    .line 1861
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/u;)Lcom/kahuna/sdk/u;

    .line 1863
    :cond_14
    monitor-exit v1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 1848
    :catchall_3
    move-exception v0

    :try_start_13
    monitor-exit v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 1857
    :catchall_4
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v0

    .line 1867
    :cond_15
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1870
    const-string/jumbo v1, "MD5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1871
    const-string/jumbo v2, "events_cksum"

    invoke-virtual {v9, v2, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string/jumbo v1, "events"

    invoke-virtual {v9, v1, v0}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->F(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1876
    const-string/jumbo v0, "archive_corrupt_raw_data"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->F(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :cond_16
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->G(Lcom/kahuna/sdk/h;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1879
    const-string/jumbo v0, "archive_corrupt_event_names"

    iget-object v1, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->G(Lcom/kahuna/sdk/h;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    :cond_17
    invoke-virtual {v9}, Lcom/yelp/android/ao/i;->b()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1883
    const-string/jumbo v1, "MD5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1884
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_18

    .line 1885
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Top Level Checksum was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_18
    const/4 v1, 0x1

    new-array v3, v1, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v4, "top_level_checksum"

    invoke-direct {v2, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v3, v1

    .line 1889
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->K(Lcom/kahuna/sdk/h;)Lcom/yelp/android/ao/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "https://tap-nexus.appspot.com/log"

    const-string/jumbo v5, "application/x-www-form-urlencoded"

    new-instance v6, Lcom/kahuna/sdk/w;

    invoke-direct {v6, p0}, Lcom/kahuna/sdk/w;-><init>(Lcom/kahuna/sdk/v;)V

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ao/a;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/yelp/android/ao/i;Ljava/lang/String;Lcom/yelp/android/ao/f;)V

    .line 2039
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_8

    .line 2040
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aa;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2043
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "filtering some parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-virtual {v9}, Lcom/yelp/android/ao/i;->a()Ljava/util/Map;

    move-result-object v2

    .line 2045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2046
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2047
    const-string/jumbo v1, "key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2051
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 2052
    const-string/jumbo v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    :cond_1a
    const-string/jumbo v1, "events"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v8

    .line 2057
    :goto_9
    if-ge v1, v5, :cond_1b

    .line 2058
    iget-object v0, p0, Lcom/kahuna/sdk/v;->a:Lcom/kahuna/sdk/h;

    invoke-static {v0}, Lcom/kahuna/sdk/h;->E(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 2059
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 2060
    const-string/jumbo v6, "credentials"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2061
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 2063
    :cond_1b
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 2066
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 2070
    :cond_1d
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2073
    :cond_1e
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_4

    .line 2089
    :catchall_5
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    throw v0
.end method
