.class public Lcom/bumptech/glide/request/e;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/a;
.implements Lcom/bumptech/glide/request/b;


# instance fields
.field private a:Lcom/bumptech/glide/request/a;

.field private b:Lcom/bumptech/glide/request/a;

.field private c:Lcom/bumptech/glide/request/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/e;-><init>(Lcom/bumptech/glide/request/b;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    .line 18
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->a(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->b(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->c()Z

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
.method public a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->a()V

    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->a()V

    .line 139
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    .line 23
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->b()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->b()V

    .line 76
    :cond_1
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/a;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->d()V

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->d()V

    .line 91
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()V

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()V

    .line 82
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->i()Z

    move-result v0

    return v0
.end method
