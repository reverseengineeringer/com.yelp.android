.class Lcom/bumptech/glide/load/engine/e;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/bumptech/glide/load/engine/m;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/m;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->a:Ljava/util/concurrent/ExecutorService;

    .line 303
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/e;->b:Ljava/util/concurrent/ExecutorService;

    .line 304
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/e;->c:Lcom/bumptech/glide/load/engine/m;

    .line 305
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/i;
    .locals 6

    .prologue
    .line 308
    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/e;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/e;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/e;->c:Lcom/bumptech/glide/load/engine/m;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/m;)V

    return-object v0
.end method
