.class public Lcom/yelp/android/an/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/comscore/analytics/a;

.field private b:Lcom/yelp/android/an/b;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yelp/android/an/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/an/a;->a:Lcom/comscore/analytics/a;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/yelp/android/an/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/an/b;-><init>(Lcom/yelp/android/an/a;)V

    iput-object v0, p0, Lcom/yelp/android/an/a;->b:Lcom/yelp/android/an/b;

    iget-object v0, p0, Lcom/yelp/android/an/a;->b:Lcom/yelp/android/an/b;

    invoke-virtual {v0}, Lcom/yelp/android/an/b;->start()V

    return-void
.end method


# virtual methods
.method a()J
    .locals 5

    const-wide/32 v0, 0xc350

    iget-object v2, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/an/c;

    invoke-virtual {v0}, Lcom/yelp/android/an/c;->a()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method a(Lcom/yelp/android/an/c;)V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/an/c;

    invoke-virtual {v0}, Lcom/yelp/android/an/c;->e()Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p1, :cond_1

    instance-of v2, p1, Lcom/yelp/android/an/c;

    if-eqz v2, :cond_0

    if-ne v0, p1, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;JZJ)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Runnable;JZJ)Z
    .locals 9

    iget-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/an/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/an/c;->e()Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v8, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/yelp/android/an/c;

    iget-object v2, p0, Lcom/yelp/android/an/a;->a:Lcom/comscore/analytics/a;

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/an/c;-><init>(Ljava/lang/Runnable;Lcom/comscore/analytics/a;JZJ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/yelp/android/an/a;->b:Lcom/yelp/android/an/b;

    invoke-virtual {v0}, Lcom/yelp/android/an/b;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;Z)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yelp/android/an/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->ao()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "Unexpected error: "

    invoke-static {v2, v3}, Lcom/comscore/utils/c;->b(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method b()Lcom/yelp/android/an/c;
    .locals 6

    iget-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/an/c;

    invoke-virtual {v0}, Lcom/yelp/android/an/c;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/an/c;

    invoke-virtual {v0}, Lcom/yelp/android/an/c;->e()Ljava/lang/Runnable;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/an/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method
