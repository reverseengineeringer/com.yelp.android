.class Lcom/yelp/android/an/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/Runnable;

.field private d:Lcom/comscore/analytics/a;

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/comscore/analytics/a;JZJ)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/an/c;->c:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/yelp/android/an/c;->d:Lcom/comscore/analytics/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    move-wide v0, p3

    :goto_0
    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/yelp/android/an/c;->e:J

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/an/c;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/an/c;->f:J

    iput-boolean p5, p0, Lcom/yelp/android/an/c;->h:Z

    iput-wide p6, p0, Lcom/yelp/android/an/c;->g:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/an/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/an/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/yelp/android/an/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/yelp/android/an/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method a()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/yelp/android/an/c;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lcom/yelp/android/an/c;->e:J

    return-wide v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/an/c;->h:Z

    return v0
.end method

.method d()J
    .locals 2

    iget-wide v0, p0, Lcom/yelp/android/an/c;->g:J

    return-wide v0
.end method

.method e()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/an/c;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yelp/android/an/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/an/c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/an/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/yelp/android/an/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "Unexpected error running asynchronous task: "

    invoke-static {v1, v2}, Lcom/comscore/utils/c;->b(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/yelp/android/an/c;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v0

    const-string/jumbo v1, "exception_ocurrences"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/yelp/android/an/c;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0, v4}, Lcom/comscore/analytics/a;->t(Z)V

    goto :goto_0
.end method
