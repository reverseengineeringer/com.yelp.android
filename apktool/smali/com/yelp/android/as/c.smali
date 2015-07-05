.class Lcom/yelp/android/as/c;
.super Ljava/lang/Object;
.source "JobConsumerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/yelp/android/as/b;

.field private final b:Lcom/yelp/android/as/a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/as/b;Lcom/yelp/android/as/a;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/as/c;->c:Z

    .line 179
    iput-object p2, p0, Lcom/yelp/android/as/c;->b:Lcom/yelp/android/as/a;

    .line 180
    iput-object p1, p0, Lcom/yelp/android/as/c;->a:Lcom/yelp/android/as/b;

    .line 181
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-boolean v0, p0, Lcom/yelp/android/as/c;->c:Z

    if-nez v0, :cond_4

    .line 190
    const-string/jumbo v0, "starting consumer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/as/c;->c:Z

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/as/c;->a:Lcom/yelp/android/as/b;

    invoke-interface {v0}, Lcom/yelp/android/as/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/as/c;->a:Lcom/yelp/android/as/b;

    iget-object v1, p0, Lcom/yelp/android/as/c;->b:Lcom/yelp/android/as/a;

    invoke-static {v1}, Lcom/yelp/android/as/a;->a(Lcom/yelp/android/as/a;)I

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/as/b;->a(ILjava/util/concurrent/TimeUnit;)Lcom/path/android/jobqueue/b;

    move-result-object v0

    .line 199
    :goto_1
    if-eqz v0, :cond_2

    .line 200
    iget-object v1, p0, Lcom/yelp/android/as/c;->b:Lcom/yelp/android/as/a;

    invoke-static {v1, v0}, Lcom/yelp/android/as/a;->a(Lcom/yelp/android/as/a;Lcom/path/android/jobqueue/b;)V

    .line 201
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 202
    iget-object v1, p0, Lcom/yelp/android/as/c;->a:Lcom/yelp/android/as/b;

    invoke-interface {v1, v0}, Lcom/yelp/android/as/b;->b(Lcom/path/android/jobqueue/b;)V

    .line 206
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/as/c;->b:Lcom/yelp/android/as/a;

    invoke-static {v1, v0}, Lcom/yelp/android/as/a;->b(Lcom/yelp/android/as/a;Lcom/path/android/jobqueue/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_2
    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/yelp/android/as/c;->b:Lcom/yelp/android/as/a;

    invoke-static {v0}, Lcom/yelp/android/as/a;->b(Lcom/yelp/android/as/a;)Z

    move-result v0

    .line 212
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    if-eqz v0, :cond_8

    .line 214
    const-string/jumbo v1, "finishing consumer %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 193
    :cond_4
    :try_start_1
    const-string/jumbo v0, "re-running consumer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/as/c;->b:Lcom/yelp/android/as/a;

    invoke-static {v1}, Lcom/yelp/android/as/a;->b(Lcom/yelp/android/as/a;)Z

    move-result v1

    .line 212
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 213
    if-eqz v1, :cond_9

    .line 214
    const-string/jumbo v1, "finishing consumer %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_5
    :goto_4
    throw v0

    .line 198
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 204
    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/yelp/android/as/c;->a:Lcom/yelp/android/as/b;

    invoke-interface {v1, v0}, Lcom/yelp/android/as/b;->a(Lcom/path/android/jobqueue/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 216
    :cond_8
    const-string/jumbo v1, "didn\'t allow me to die, re-running %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    const-string/jumbo v1, "didn\'t allow me to die, re-running %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method
