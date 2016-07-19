.class Lcom/yelp/android/bo/a$b;
.super Ljava/lang/Object;
.source "JobConsumerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/bo/a$a;

.field private final b:Lcom/yelp/android/bo/a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/bo/a$a;Lcom/yelp/android/bo/a;)V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/bo/a$b;->c:Z

    .line 284
    iput-object p2, p0, Lcom/yelp/android/bo/a$b;->b:Lcom/yelp/android/bo/a;

    .line 285
    iput-object p1, p0, Lcom/yelp/android/bo/a$b;->a:Lcom/yelp/android/bo/a$a;

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-boolean v0, p0, Lcom/yelp/android/bo/a$b;->c:Z

    if-nez v0, :cond_4

    .line 295
    const-string/jumbo v0, "starting consumer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/bo/a$b;->c:Z

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/bo/a$b;->a:Lcom/yelp/android/bo/a$a;

    invoke-interface {v0}, Lcom/yelp/android/bo/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/bo/a$b;->a:Lcom/yelp/android/bo/a$a;

    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->b:Lcom/yelp/android/bo/a;

    invoke-static {v1}, Lcom/yelp/android/bo/a;->a(Lcom/yelp/android/bo/a;)I

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/bo/a$a;->a(ILjava/util/concurrent/TimeUnit;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 304
    :goto_1
    if-eqz v0, :cond_2

    .line 305
    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->b:Lcom/yelp/android/bo/a;

    invoke-static {v1, v0}, Lcom/yelp/android/bo/a;->a(Lcom/yelp/android/bo/a;Lcom/path/android/jobqueue/a;)V

    .line 306
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/a;->a(I)I

    move-result v1

    .line 307
    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->b:Lcom/yelp/android/bo/a;

    invoke-static {v1, v0}, Lcom/yelp/android/bo/a;->b(Lcom/yelp/android/bo/a;Lcom/path/android/jobqueue/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_2
    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/yelp/android/bo/a$b;->b:Lcom/yelp/android/bo/a;

    invoke-static {v0}, Lcom/yelp/android/bo/a;->b(Lcom/yelp/android/bo/a;)Z

    move-result v0

    .line 330
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    if-eqz v0, :cond_7

    .line 332
    const-string/jumbo v1, "finishing consumer %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    .line 339
    return-void

    .line 298
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

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->b:Lcom/yelp/android/bo/a;

    invoke-static {v1}, Lcom/yelp/android/bo/a;->b(Lcom/yelp/android/bo/a;)Z

    move-result v1

    .line 330
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 331
    if-eqz v1, :cond_8

    .line 332
    const-string/jumbo v1, "finishing consumer %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_5
    :goto_4
    throw v0

    .line 303
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    :pswitch_0
    :try_start_2
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->m()V

    .line 310
    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->a:Lcom/yelp/android/bo/a$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/bo/a$a;->b(Lcom/path/android/jobqueue/a;)V

    goto :goto_2

    .line 313
    :pswitch_1
    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->a:Lcom/yelp/android/bo/a$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/bo/a$a;->b(Lcom/path/android/jobqueue/a;)V

    goto :goto_2

    .line 316
    :pswitch_2
    iget-object v1, p0, Lcom/yelp/android/bo/a$b;->a:Lcom/yelp/android/bo/a$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/bo/a$a;->a(Lcom/path/android/jobqueue/a;)V

    goto :goto_2

    .line 319
    :pswitch_3
    const-string/jumbo v1, "running job failed and cancelled, doing nothing. Will be removed after it\'s onCancel is called by the JobManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 334
    :cond_7
    const-string/jumbo v1, "didn\'t allow me to die, re-running %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "didn\'t allow me to die, re-running %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
