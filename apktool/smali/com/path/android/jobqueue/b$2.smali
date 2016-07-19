.class Lcom/path/android/jobqueue/b$2;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/yelp/android/bo/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/path/android/jobqueue/b;


# direct methods
.method constructor <init>(Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/concurrent/TimeUnit;)Lcom/path/android/jobqueue/a;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->d(Lcom/path/android/jobqueue/b;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_1

    .line 749
    :cond_0
    return-object v0

    .line 705
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 706
    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 707
    add-long/2addr v4, v6

    .line 709
    iget-object v1, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v1, v2}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/b;Ljava/lang/Boolean;)J

    move-result-wide v6

    .line 710
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v1}, Lcom/path/android/jobqueue/b;->b(Lcom/path/android/jobqueue/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->b(Lcom/path/android/jobqueue/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->d(Lcom/path/android/jobqueue/b;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    move-object v1, v0

    .line 713
    :goto_1
    if-nez v1, :cond_6

    .line 714
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v4, v8

    .line 715
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    .line 718
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 719
    const-wide/16 v10, 0x1

    cmp-long v0, v8, v10

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->b(Lcom/path/android/jobqueue/b;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 720
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 712
    goto :goto_1

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->e(Lcom/path/android/jobqueue/b;)Lcom/yelp/android/bq/b;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/bq/a;

    if-eqz v0, :cond_5

    .line 728
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->f(Lcom/path/android/jobqueue/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->f(Lcom/path/android/jobqueue/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :goto_2
    :try_start_1
    monitor-exit v3

    :cond_4
    :goto_3
    move-object v0, v1

    .line 747
    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    const-string/jumbo v8, "exception while waiting for a new job."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 738
    :cond_5
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->f(Lcom/path/android/jobqueue/b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 740
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->f(Lcom/path/android/jobqueue/b;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 744
    :goto_4
    :try_start_3
    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 741
    :catch_1
    move-exception v0

    .line 742
    :try_start_4
    const-string/jumbo v8, "exception while waiting for a new job."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/path/android/jobqueue/a;)V
    .locals 12

    .prologue
    const-wide/32 v10, 0xf4240

    .line 670
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v0

    iget-object v2, v0, Lcom/path/android/jobqueue/Job;->retryConstraint:Lcom/path/android/jobqueue/f;

    .line 671
    if-nez v2, :cond_0

    .line 672
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0, p1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/a;)V

    .line 691
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-virtual {v2}, Lcom/path/android/jobqueue/f;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v2}, Lcom/path/android/jobqueue/f;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/a;->b(I)V

    .line 678
    :cond_1
    const-wide/16 v0, -0x1

    .line 679
    invoke-virtual {v2}, Lcom/path/android/jobqueue/f;->b()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 680
    invoke-virtual {v2}, Lcom/path/android/jobqueue/f;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 681
    iget-object v3, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v3}, Lcom/path/android/jobqueue/b;->c(Lcom/path/android/jobqueue/b;)Lcom/path/android/jobqueue/g;

    move-result-object v3

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/path/android/jobqueue/f;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Lcom/path/android/jobqueue/g;->a(Ljava/lang/String;J)V

    .line 687
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long/2addr v0, v10

    add-long/2addr v0, v2

    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/path/android/jobqueue/a;->a(J)V

    .line 690
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0, p1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/a;)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {v2}, Lcom/path/android/jobqueue/f;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 687
    :cond_4
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->b(Lcom/path/android/jobqueue/b;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 756
    iget-object v1, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->e(Lcom/path/android/jobqueue/b;)Lcom/yelp/android/bq/b;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/bq/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->g(Lcom/path/android/jobqueue/b;)Z

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/b;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/a;)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/path/android/jobqueue/b$2;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0, p1}, Lcom/path/android/jobqueue/b;->b(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/a;)V

    .line 696
    return-void
.end method
