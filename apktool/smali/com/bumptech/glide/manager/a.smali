.class Lcom/bumptech/glide/manager/a;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->b:Z

    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/i;

    .line 48
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->c()V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/manager/i;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/a;->c:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->e()V

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/a;->b:Z

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->c()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->d()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->b:Z

    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/i;

    .line 55
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->d()V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->c:Z

    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/i;

    .line 62
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->e()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
