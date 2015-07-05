.class Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final a:Ljava/util/Map;
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

.field private final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->a:Ljava/util/Map;

    .line 280
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->b:Ljava/lang/ref/ReferenceQueue;

    .line 281
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/h;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/load/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
