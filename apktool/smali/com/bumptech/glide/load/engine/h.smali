.class Lcom/bumptech/glide/load/engine/h;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/bumptech/glide/load/engine/p",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/p;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/bumptech/glide/load/engine/p",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 268
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/b;

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/load/b;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/b;

    return-object v0
.end method
