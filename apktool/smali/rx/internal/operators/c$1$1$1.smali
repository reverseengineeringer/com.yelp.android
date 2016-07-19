.class Lrx/internal/operators/c$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c$1$1;->a(Lrx/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c;

.field final synthetic b:Lrx/internal/operators/c$1$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/c$1$1;Lrx/c;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iput-object p2, p0, Lrx/internal/operators/c$1$1$1;->a:Lrx/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iget-object v0, v0, Lrx/internal/operators/c$1$1;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->a:Lrx/c;

    invoke-interface {v0, p1, p2}, Lrx/c;->request(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iget-object v0, v0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    new-instance v1, Lrx/internal/operators/c$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/c$1$1$1$1;-><init>(Lrx/internal/operators/c$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/d$a;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    goto :goto_0
.end method
