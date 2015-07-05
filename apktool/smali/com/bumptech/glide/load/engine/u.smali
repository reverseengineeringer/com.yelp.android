.class Lcom/bumptech/glide/load/engine/u;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/load/engine/w;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/w;-><init>(Lcom/bumptech/glide/load/engine/v;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
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
    const/4 v1, 0x1

    .line 16
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 18
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/u;->a:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/u;->a:Z

    .line 24
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->d()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/u;->a:Z

    goto :goto_0
.end method
