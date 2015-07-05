.class Lcom/comscore/analytics/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/d;->a:Lcom/comscore/analytics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/d;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/d;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/d;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iget-object v0, p0, Lcom/comscore/analytics/d;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->x()V

    goto :goto_0
.end method
