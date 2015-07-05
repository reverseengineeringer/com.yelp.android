.class public Lcom/bumptech/glide/load/engine/d;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/m;
.implements Lcom/bumptech/glide/load/engine/q;
.implements Lcom/yelp/android/s/g;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/o;

.field private final c:Lcom/yelp/android/s/f;

.field private final d:Lcom/yelp/android/s/a;

.field private final e:Lcom/bumptech/glide/load/engine/e;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/engine/u;


# direct methods
.method public constructor <init>(Lcom/yelp/android/s/f;Lcom/yelp/android/s/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/yelp/android/s/f;Lcom/yelp/android/s/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/o;Ljava/util/Map;Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/u;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/yelp/android/s/f;Lcom/yelp/android/s/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/o;Ljava/util/Map;Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/s/f;",
            "Lcom/yelp/android/s/a;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/i;",
            ">;",
            "Lcom/bumptech/glide/load/engine/o;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;>;",
            "Lcom/bumptech/glide/load/engine/e;",
            "Lcom/bumptech/glide/load/engine/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d;->c:Lcom/yelp/android/s/f;

    .line 67
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/d;->d:Lcom/yelp/android/s/a;

    .line 69
    if-nez p7, :cond_0

    .line 70
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 72
    :cond_0
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/d;->f:Ljava/util/Map;

    .line 74
    if-nez p6, :cond_1

    .line 75
    new-instance p6, Lcom/bumptech/glide/load/engine/o;

    invoke-direct {p6}, Lcom/bumptech/glide/load/engine/o;-><init>()V

    .line 77
    :cond_1
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/d;->b:Lcom/bumptech/glide/load/engine/o;

    .line 79
    if-nez p5, :cond_2

    .line 80
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 82
    :cond_2
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/d;->a:Ljava/util/Map;

    .line 84
    if-nez p8, :cond_3

    .line 85
    new-instance p8, Lcom/bumptech/glide/load/engine/e;

    invoke-direct {p8, p3, p4, p0}, Lcom/bumptech/glide/load/engine/e;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/m;)V

    .line 87
    :cond_3
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/d;->e:Lcom/bumptech/glide/load/engine/e;

    .line 89
    if-nez p9, :cond_4

    .line 90
    new-instance p9, Lcom/bumptech/glide/load/engine/u;

    invoke-direct {p9}, Lcom/bumptech/glide/load/engine/u;-><init>()V

    .line 92
    :cond_4
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/d;->h:Lcom/bumptech/glide/load/engine/u;

    .line 94
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/d;->g:Ljava/lang/ref/ReferenceQueue;

    .line 95
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/bumptech/glide/load/engine/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p7, v2}, Lcom/bumptech/glide/load/engine/g;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 97
    invoke-interface {p1, p0}, Lcom/yelp/android/s/f;->a(Lcom/yelp/android/s/g;)V

    .line 98
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->c:Lcom/yelp/android/s/f;

    invoke-interface {v0, p1}, Lcom/yelp/android/s/f;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 211
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/p;

    if-eqz v1, :cond_1

    .line 213
    check-cast v0, Lcom/bumptech/glide/load/engine/p;

    goto :goto_0

    .line 215
    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/p;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/engine/p;-><init>(Lcom/bumptech/glide/load/engine/t;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V
    .locals 5

    .prologue
    .line 201
    const-string/jumbo v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;IILcom/yelp/android/r/c;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/f;Lcom/yelp/android/ad/c;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/load/engine/f;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b;",
            "II",
            "Lcom/yelp/android/r/c",
            "<TT;>;",
            "Lcom/yelp/android/ae/b",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/f",
            "<TZ;>;",
            "Lcom/yelp/android/ad/c",
            "<TZ;TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Z",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/request/d;",
            ")",
            "Lcom/bumptech/glide/load/engine/f;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 144
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v14

    .line 146
    invoke-interface/range {p4 .. p4}, Lcom/yelp/android/r/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/d;->b:Lcom/bumptech/glide/load/engine/o;

    invoke-interface/range {p5 .. p5}, Lcom/yelp/android/ae/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lcom/yelp/android/ae/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v8

    invoke-interface/range {p5 .. p5}, Lcom/yelp/android/ae/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/yelp/android/ae/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/o;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/yelp/android/ad/c;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/n;

    move-result-object v3

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/p;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/p;->e()V

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/d;->f:Ljava/util/Map;

    new-instance v5, Lcom/bumptech/glide/load/engine/h;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/d;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, v3, v2, v6}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 156
    const-string/jumbo v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string/jumbo v2, "Loaded resource from cache"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/d;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 197
    :goto_0
    return-object v2

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/d;->f:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 163
    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/p;

    .line 165
    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/p;->e()V

    .line 167
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 168
    const-string/jumbo v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    const-string/jumbo v2, "Loaded resource from active resources"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/d;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 171
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/d;->f:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/d;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/i;

    .line 178
    if-eqz v2, :cond_6

    .line 179
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/request/d;)V

    .line 180
    const-string/jumbo v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    const-string/jumbo v4, "Added to existing load"

    invoke-static {v4, v14, v15, v3}, Lcom/bumptech/glide/load/engine/d;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 183
    :cond_5
    new-instance v3, Lcom/bumptech/glide/load/engine/f;

    move-object/from16 v0, p11

    invoke-direct {v3, v0, v2}, Lcom/bumptech/glide/load/engine/f;-><init>(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/i;)V

    move-object v2, v3

    goto :goto_0

    .line 186
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/d;->e:Lcom/bumptech/glide/load/engine/e;

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/load/engine/e;->a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/i;

    move-result-object v13

    .line 187
    new-instance v2, Lcom/bumptech/glide/load/engine/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/load/engine/d;->d:Lcom/yelp/android/s/a;

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/a;-><init>(Lcom/bumptech/glide/load/engine/n;IILcom/yelp/android/r/c;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/f;Lcom/yelp/android/ad/c;Lcom/yelp/android/s/a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 189
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v0, p8

    invoke-direct {v4, v13, v2, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/r;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/Priority;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/d;->a:Ljava/util/Map;

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-object/from16 v0, p11

    invoke-virtual {v13, v0}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/request/d;)V

    .line 192
    invoke-virtual {v13, v4}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 194
    const-string/jumbo v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    const-string/jumbo v2, "Started new load"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/d;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 197
    :cond_7
    new-instance v2, Lcom/bumptech/glide/load/engine/f;

    move-object/from16 v0, p11

    invoke-direct {v2, v0, v13}, Lcom/bumptech/glide/load/engine/f;-><init>(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/i;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 232
    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/p;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/q;)V

    .line 234
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->f:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/h;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/b;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/i;

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;)V
    .locals 2

    .prologue
    .line 221
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/p;

    if-eqz v0, :cond_0

    .line 222
    check-cast p1, Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/p;->f()V

    .line 226
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->c:Lcom/yelp/android/s/f;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/s/f;->b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->h:Lcom/bumptech/glide/load/engine/u;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/u;->a(Lcom/bumptech/glide/load/engine/t;)V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->h:Lcom/bumptech/glide/load/engine/u;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/u;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 251
    return-void
.end method
