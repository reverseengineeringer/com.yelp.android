.class Lcom/bumptech/glide/load/engine/l;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/j;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 199
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/i;

    .line 200
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 201
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/load/engine/i;)V

    :goto_0
    move v0, v1

    .line 208
    :goto_1
    return v0

    .line 203
    :cond_1
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/i;->b(Lcom/bumptech/glide/load/engine/i;)V

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
