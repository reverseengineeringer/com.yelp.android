.class Lrx/internal/operators/c$1$1;
.super Lrx/e;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/internal/operators/c$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/c$1;Lrx/e;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iput-object p3, p0, Lrx/internal/operators/c$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/e;-><init>(Lrx/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->unsubscribe()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v1, v1, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->unsubscribe()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v1, v1, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    throw v0
.end method

.method public a(Lrx/c;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    new-instance v1, Lrx/internal/operators/c$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/c$1$1$1;-><init>(Lrx/internal/operators/c$1$1;Lrx/c;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/c;)V

    .line 91
    return-void
.end method
