.class Lrx/internal/operators/b$a$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/b$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/b$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/b$a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lrx/internal/operators/b$a$1;->a:Lrx/internal/operators/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lrx/internal/operators/b$a$1;->a:Lrx/internal/operators/b$a;

    iget-object v0, v0, Lrx/internal/operators/b$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 135
    iget-object v0, p0, Lrx/internal/operators/b$a$1;->a:Lrx/internal/operators/b$a;

    invoke-virtual {v0}, Lrx/internal/operators/b$a;->d()V

    .line 137
    :cond_0
    return-void
.end method
