.class final Lrx/internal/operators/b$a;
.super Lrx/e;
.source "OperatorObserveOn.java"

# interfaces
.implements Lcom/yelp/android/dg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;",
        "Lcom/yelp/android/dg/a;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/d$a;

.field final c:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:I

.field volatile g:Z

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field j:Ljava/lang/Throwable;

.field k:J


# direct methods
.method public constructor <init>(Lrx/d;Lrx/e;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            "Lrx/e",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lrx/e;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/b$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/b$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    iput-object p2, p0, Lrx/internal/operators/b$a;->a:Lrx/e;

    .line 109
    invoke-virtual {p1}, Lrx/d;->a()Lrx/d$a;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    .line 110
    iput-boolean p3, p0, Lrx/internal/operators/b$a;->d:Z

    .line 111
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/b$a;->c:Lrx/internal/operators/NotificationLite;

    .line 112
    if-lez p4, :cond_0

    .line 114
    :goto_0
    shr-int/lit8 v0, p4, 0x2

    sub-int v0, p4, v0

    iput v0, p0, Lrx/internal/operators/b$a;->f:I

    .line 115
    invoke-static {}, Lcom/yelp/android/di/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lcom/yelp/android/di/r;

    invoke-direct {v0, p4}, Lcom/yelp/android/di/r;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/b$a;->e:Ljava/util/Queue;

    .line 121
    :goto_1
    int-to-long v0, p4

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/b$a;->a(J)V

    .line 122
    return-void

    .line 112
    :cond_0
    sget p4, Lrx/internal/util/d;->b:I

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lcom/yelp/android/dh/b;

    invoke-direct {v0, p4}, Lcom/yelp/android/dh/b;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/b$a;->e:Ljava/util/Queue;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/b$a;->g:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/b$a;->g:Z

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/b$a;->g:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/b$a;->e:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/b$a;->c:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/b$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/b$a;->g:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    invoke-static {}, Lcom/yelp/android/dk/d;->a()Lcom/yelp/android/dk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/d;->b()Lcom/yelp/android/dk/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/dk/a;->a(Ljava/lang/Throwable;)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/b$a;->j:Ljava/lang/Throwable;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/b$a;->g:Z

    .line 173
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->d()V

    goto :goto_0
.end method

.method a(ZZLrx/e;Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/e",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p3}, Lrx/e;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 282
    :goto_0
    return v0

    .line 245
    :cond_0
    if-eqz p1, :cond_1

    .line 246
    iget-boolean v1, p0, Lrx/internal/operators/b$a;->d:Z

    if-eqz v1, :cond_3

    .line 247
    if-eqz p2, :cond_1

    .line 248
    iget-object v0, p0, Lrx/internal/operators/b$a;->j:Ljava/lang/Throwable;

    .line 250
    if-eqz v0, :cond_2

    .line 251
    :try_start_0
    invoke-virtual {p3, v0}, Lrx/e;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_1
    iget-object v0, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->unsubscribe()V

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lrx/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    throw v0

    .line 260
    :cond_3
    iget-object v1, p0, Lrx/internal/operators/b$a;->j:Ljava/lang/Throwable;

    .line 261
    if-eqz v1, :cond_4

    .line 262
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 264
    :try_start_2
    invoke-virtual {p3, v1}, Lrx/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    throw v0

    .line 270
    :cond_4
    if-eqz p2, :cond_1

    .line 272
    :try_start_3
    invoke-virtual {p3}, Lrx/e;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 274
    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    throw v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lrx/internal/operators/b$a;->a:Lrx/e;

    .line 129
    new-instance v1, Lrx/internal/operators/b$a$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/b$a$1;-><init>(Lrx/internal/operators/b$a;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/c;)V

    .line 140
    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/f;)V

    .line 141
    invoke-virtual {v0, p0}, Lrx/e;->a(Lrx/f;)V

    .line 142
    return-void
.end method

.method public call()V
    .locals 12

    .prologue
    .line 185
    const-wide/16 v2, 0x1

    .line 186
    iget-wide v0, p0, Lrx/internal/operators/b$a;->k:J

    .line 191
    iget-object v8, p0, Lrx/internal/operators/b$a;->e:Ljava/util/Queue;

    .line 192
    iget-object v9, p0, Lrx/internal/operators/b$a;->a:Lrx/e;

    .line 193
    iget-object v10, p0, Lrx/internal/operators/b$a;->c:Lrx/internal/operators/NotificationLite;

    .line 200
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/b$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 202
    :goto_0
    cmp-long v4, v6, v0

    if-eqz v4, :cond_4

    .line 203
    iget-boolean v5, p0, Lrx/internal/operators/b$a;->g:Z

    .line 204
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 205
    if-nez v11, :cond_2

    const/4 v4, 0x1

    .line 207
    :goto_1
    invoke-virtual {p0, v5, v4, v9, v8}, Lrx/internal/operators/b$a;->a(ZZLrx/e;Ljava/util/Queue;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    :cond_1
    :goto_2
    return-void

    .line 205
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 211
    :cond_3
    if-eqz v4, :cond_6

    .line 225
    :cond_4
    cmp-long v4, v6, v0

    if-nez v4, :cond_5

    .line 226
    iget-boolean v4, p0, Lrx/internal/operators/b$a;->g:Z

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v9, v8}, Lrx/internal/operators/b$a;->a(ZZLrx/e;Ljava/util/Queue;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 231
    :cond_5
    iput-wide v0, p0, Lrx/internal/operators/b$a;->k:J

    .line 232
    iget-object v4, p0, Lrx/internal/operators/b$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 233
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 215
    :cond_6
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Lrx/e;->a(Ljava/lang/Object;)V

    .line 217
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 218
    iget v0, p0, Lrx/internal/operators/b$a;->f:I

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_7

    .line 219
    iget-object v0, p0, Lrx/internal/operators/b$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v4, v5}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 220
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/b$a;->a(J)V

    .line 221
    const-wide/16 v4, 0x0

    :goto_3
    move-wide v6, v0

    move-wide v0, v4

    .line 223
    goto :goto_0

    :cond_7
    move-wide v0, v6

    goto :goto_3
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lrx/internal/operators/b$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lrx/internal/operators/b$a;->b:Lrx/d$a;

    invoke-virtual {v0, p0}, Lrx/d$a;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    .line 180
    :cond_0
    return-void
.end method
