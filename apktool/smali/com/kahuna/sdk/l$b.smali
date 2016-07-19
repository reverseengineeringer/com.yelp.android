.class Lcom/kahuna/sdk/l$b;
.super Ljava/util/TimerTask;
.source "KahunaCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/l$b;->b:Lorg/json/JSONObject;

    .line 1681
    iput-object p2, p0, Lcom/kahuna/sdk/l$b;->b:Lorg/json/JSONObject;

    .line 1682
    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/l$b;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->b:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1687
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->p(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1688
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Z)Z

    .line 1689
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    :try_start_2
    new-instance v4, Lcom/kahuna/sdk/RequestParams;

    invoke-direct {v4}, Lcom/kahuna/sdk/RequestParams;-><init>()V

    .line 1692
    const-string/jumbo v0, "key"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->h(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v0, "dev_id"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->i(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string/jumbo v0, "app_name"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->q(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v0, "app_ver"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->r(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v0, "os_version"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->s(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string/jumbo v0, "os_name"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->t(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string/jumbo v0, "dev_name"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->u(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string/jumbo v0, "client_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string/jumbo v0, "sdk_version"

    const-string/jumbo v1, "2.4.1"

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    const-string/jumbo v0, "flush_reason"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->v(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1705
    const-string/jumbo v0, "push_token"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->v(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1707
    const-string/jumbo v0, "invalid_push_token"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_2
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->w(Lcom/kahuna/sdk/l;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 1709
    const-string/jumbo v0, "last_flush_time"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->w(Lcom/kahuna/sdk/l;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_3
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->x(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->y(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1713
    const-string/jumbo v0, "sdk_wrapper"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->x(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const-string/jumbo v0, "sdk_wrapper_version"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->y(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    :cond_4
    const-string/jumbo v1, "env"

    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->j(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "s"

    :goto_0
    invoke-virtual {v4, v1, v0}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string/jumbo v0, "c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v3}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kahuna/sdk/t;->a()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1721
    invoke-static {}, Lcom/kahuna/sdk/l;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1722
    const-string/jumbo v0, "iam"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1724
    :cond_5
    invoke-static {}, Lcom/kahuna/sdk/l;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1725
    const-string/jumbo v0, "sdk_iam"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1729
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/kahuna/sdk/l;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/kahuna/sdk/location/i;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1730
    const-string/jumbo v0, "rm"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1731
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/location/i;->b(Lcom/kahuna/sdk/l;)Ljava/util/Set;

    move-result-object v0

    .line 1732
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 1733
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1734
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1735
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1754
    :catch_0
    move-exception v0

    .line 1758
    :cond_7
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1759
    const-string/jumbo v0, "fsupported"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_8
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1763
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;

    .line 1764
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->d(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1766
    :try_start_5
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->A(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_9

    .line 1767
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->A(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1770
    :cond_9
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->q()I

    move-result v0

    .line 1771
    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    move v1, v0

    :goto_3
    move v3, v2

    .line 1772
    :goto_4
    if-ge v3, v1, :cond_12

    .line 1773
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 1774
    iget-object v7, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v7}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 1777
    if-eqz v0, :cond_a

    .line 1778
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1772
    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1689
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 2030
    :catch_1
    move-exception v0

    .line 2031
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_b

    .line 2032
    const-string/jumbo v1, "Kahuna"

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

    .line 2033
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2036
    :cond_b
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->C(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2037
    :try_start_8
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2038
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->cancel()V

    .line 2039
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;

    .line 2041
    :cond_c
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2043
    :goto_5
    return-void

    .line 1717
    :cond_d
    :try_start_9
    const-string/jumbo v0, "p"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 1737
    :cond_e
    :try_start_a
    const-string/jumbo v0, "rm"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_7

    invoke-static {}, Lcom/kahuna/sdk/l;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/kahuna/sdk/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1743
    const-string/jumbo v0, "bm"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1744
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b(Lcom/kahuna/sdk/l;)Ljava/util/Set;

    move-result-object v0

    .line 1745
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1746
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1747
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1748
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 1750
    :cond_10
    const-string/jumbo v0, "bm"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 1771
    :cond_11
    :try_start_b
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_3

    .line 1781
    :cond_12
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1784
    :try_start_c
    invoke-static {}, Lcom/kahuna/sdk/c;->a()V

    .line 1786
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 1788
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->p(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1789
    :try_start_d
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Z)Z

    .line 1790
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1791
    :try_start_e
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->C(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 1792
    :try_start_f
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1793
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->cancel()V

    .line 1794
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;

    .line 1796
    :cond_13
    monitor-exit v1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 1781
    :catchall_2
    move-exception v0

    :try_start_11
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 1790
    :catchall_3
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v0

    .line 1800
    :cond_14
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1803
    const-string/jumbo v1, "MD5"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1804
    const-string/jumbo v3, "events_cksum"

    invoke-virtual {v4, v3, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string/jumbo v1, "events"

    invoke-virtual {v4, v1, v0}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->E(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1809
    const-string/jumbo v0, "archive_corrupt_raw_data"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->E(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :cond_15
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->F(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1812
    const-string/jumbo v0, "archive_corrupt_event_names"

    iget-object v1, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->F(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    :cond_16
    invoke-virtual {v4}, Lcom/kahuna/sdk/RequestParams;->getUrlParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/m;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    const-string/jumbo v1, "MD5"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1817
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_17

    .line 1818
    const-string/jumbo v1, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Top Level Checksum was: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_17
    const/4 v1, 0x1

    new-array v3, v1, [Lcom/kahuna/sdk/g;

    const/4 v1, 0x0

    new-instance v5, Lcom/kahuna/sdk/b;

    const-string/jumbo v6, "top_level_checksum"

    invoke-direct {v5, v6, v0}, Lcom/kahuna/sdk/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 1823
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1d

    .line 1824
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1827
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "filtering some parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-virtual {v4}, Lcom/kahuna/sdk/RequestParams;->getUrlParams()Ljava/util/Map;

    move-result-object v5

    .line 1829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1830
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1831
    const-string/jumbo v1, "key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1835
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 1836
    const-string/jumbo v1, "&"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    :cond_19
    const-string/jumbo v1, "events"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    .line 1841
    :goto_8
    if-ge v1, v8, :cond_1a

    .line 1842
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->B(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 1843
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 1844
    const-string/jumbo v9, "credentials"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1845
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1847
    :cond_1a
    const-string/jumbo v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1850
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1854
    :cond_1c
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_1d
    :goto_9
    iget-object v0, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->I(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/m;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kahuna/sdk/l$b;->a:Lcom/kahuna/sdk/l;

    invoke-static {v2}, Lcom/kahuna/sdk/l;->G(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "application/x-www-form-urlencoded"

    new-instance v6, Lcom/kahuna/sdk/l$b$1;

    invoke-direct {v6, p0}, Lcom/kahuna/sdk/l$b$1;-><init>(Lcom/kahuna/sdk/l$b;)V

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;[Lcom/kahuna/sdk/g;Lcom/kahuna/sdk/RequestParams;Ljava/lang/String;Lcom/kahuna/sdk/n;)V

    goto/16 :goto_5

    .line 1857
    :cond_1e
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_9

    .line 2041
    :catchall_4
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v0
.end method
