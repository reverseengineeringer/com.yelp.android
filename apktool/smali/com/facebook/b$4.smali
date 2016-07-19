.class Lcom/facebook/b$4;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/facebook/b$a;

.field final synthetic d:Ljava/util/Set;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Lcom/facebook/b;


# direct methods
.method constructor <init>(Lcom/facebook/b;Lcom/facebook/AccessToken;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/b$a;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/b$4;->f:Lcom/facebook/b;

    iput-object p2, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/b$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iput-object p5, p0, Lcom/facebook/b$4;->d:Ljava/util/Set;

    iput-object p6, p0, Lcom/facebook/b$4;->e:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/i;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 279
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iget-object v0, v0, Lcom/facebook/b$a;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iget v0, v0, Lcom/facebook/b$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/facebook/b$4;->f:Lcom/facebook/b;

    invoke-static {v0}, Lcom/facebook/b;->b(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 290
    :cond_2
    :try_start_1
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iget-object v1, v1, Lcom/facebook/b$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iget-object v1, v1, Lcom/facebook/b$a;->a:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/b$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/facebook/b$4;->d:Ljava/util/Set;

    :goto_2
    iget-object v5, p0, Lcom/facebook/b$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/facebook/b$4;->e:Ljava/util/Set;

    :goto_3
    iget-object v6, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v6}, Lcom/facebook/AccessToken;->f()Lcom/facebook/AccessTokenSource;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iget v7, v7, Lcom/facebook/b$a;->b:I

    if-eqz v7, :cond_6

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/facebook/b$4;->c:Lcom/facebook/b$a;

    iget v8, v8, Lcom/facebook/b$a;->b:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_4
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 305
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    iget-object v0, p0, Lcom/facebook/b$4;->f:Lcom/facebook/b;

    invoke-static {v0}, Lcom/facebook/b;->b(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 290
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v5}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v5

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v7}, Lcom/facebook/AccessToken;->c()Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_4

    .line 307
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/b$4;->f:Lcom/facebook/b;

    invoke-static {v1}, Lcom/facebook/b;->b(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
