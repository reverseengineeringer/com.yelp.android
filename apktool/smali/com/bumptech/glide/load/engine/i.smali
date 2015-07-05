.class Lcom/bumptech/glide/load/engine/i;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/r;


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/k;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/engine/k;

.field private final e:Lcom/bumptech/glide/load/engine/m;

.field private final f:Lcom/bumptech/glide/load/b;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Z

.field private j:Z

.field private k:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/lang/Exception;

.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bumptech/glide/load/engine/EngineRunnable;

.field private q:Lcom/bumptech/glide/load/engine/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/k;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/k;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/k;

    .line 23
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/load/engine/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/l;-><init>(Lcom/bumptech/glide/load/engine/j;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/i;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/m;)V
    .locals 7

    .prologue
    .line 52
    sget-object v6, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/k;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/k;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/b;

    .line 58
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i;->g:Ljava/util/concurrent/ExecutorService;

    .line 59
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i;->h:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/i;->i:Z

    .line 61
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/m;

    .line 62
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/k;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/i;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/i;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->j:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->d()V

    .line 162
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/t;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/i;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/t;Z)Lcom/bumptech/glide/load/engine/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->l:Z

    .line 151
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->e()V

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;)V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/d;

    .line 155
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/i;->d(Lcom/bumptech/glide/request/d;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/p;->e()V

    .line 157
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/engine/t;)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->f()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/bumptech/glide/load/engine/i;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/i;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->j:Z

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->n:Z

    .line 178
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;)V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/d;

    .line 181
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/i;->d(Lcom/bumptech/glide/request/d;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->m:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/request/d;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->o:Ljava/util/Set;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/d;)Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->o:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->j:Z

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->p:Lcom/bumptech/glide/load/engine/EngineRunnable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->a()V

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Ljava/util/concurrent/Future;

    .line 121
    if-eqz v0, :cond_2

    .line 122
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 124
    :cond_2
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/i;->j:Z

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/b;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/b;)V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->p:Lcom/bumptech/glide/load/engine/EngineRunnable;

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Ljava/util/concurrent/Future;

    .line 68
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/t;

    .line 136
    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/d;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 77
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->l:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/p;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->n:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->m:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->m:Ljava/lang/Exception;

    .line 167
    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Ljava/util/concurrent/Future;

    .line 73
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/d;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 88
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->n:Z

    if-eqz v0, :cond_2

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/i;->c(Lcom/bumptech/glide/request/d;)V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/i;->a()V

    goto :goto_0
.end method
