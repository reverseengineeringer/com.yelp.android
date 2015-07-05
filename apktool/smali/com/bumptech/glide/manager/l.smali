.class public Lcom/bumptech/glide/manager/l;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/l;->b:Z

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 57
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()V

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/l;->b:Z

    if-nez v0, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/request/a;->b()V

    .line 30
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/l;->b:Z

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 69
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->b()V

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/a;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 80
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->d()V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 89
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()V

    .line 92
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/l;->b:Z

    if-nez v2, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->b()V

    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method
