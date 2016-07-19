.class Lrx/internal/operators/c$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lcom/yelp/android/dg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c;->a(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lrx/d$a;

.field final synthetic c:Lrx/internal/operators/c;


# direct methods
.method constructor <init>(Lrx/internal/operators/c;Lrx/e;Lrx/d$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lrx/internal/operators/c$1;->c:Lrx/internal/operators/c;

    iput-object p2, p0, Lrx/internal/operators/c$1;->a:Lrx/e;

    iput-object p3, p0, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lrx/internal/operators/c$1$1;

    iget-object v2, p0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-direct {v1, p0, v2, v0}, Lrx/internal/operators/c$1$1;-><init>(Lrx/internal/operators/c$1;Lrx/e;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, Lrx/internal/operators/c$1;->c:Lrx/internal/operators/c;

    iget-object v0, v0, Lrx/internal/operators/c;->b:Lrx/a;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/e;)Lrx/f;

    .line 95
    return-void
.end method
