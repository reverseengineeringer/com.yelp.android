.class Lcom/bumptech/glide/load/engine/w;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/v;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/w;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    .line 36
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->d()V

    move v0, v1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
