.class Lcom/yelp/android/dl/f$a;
.super Lrx/d$a;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/dl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/yelp/android/dl/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yelp/android/dm/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lrx/d$a;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/f$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/f$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 51
    new-instance v0, Lcom/yelp/android/dm/a;

    invoke-direct {v0}, Lcom/yelp/android/dm/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/f$a;->c:Lcom/yelp/android/dm/a;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/f$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    return-void
.end method

.method private a(Lcom/yelp/android/dg/a;J)Lrx/f;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/dl/f$a;->c:Lcom/yelp/android/dm/a;

    invoke-virtual {v0}, Lcom/yelp/android/dm/a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/yelp/android/dl/f$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/dl/f$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/dl/f$b;-><init>(Lcom/yelp/android/dg/a;Ljava/lang/Long;I)V

    .line 74
    iget-object v1, p0, Lcom/yelp/android/dl/f$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/yelp/android/dl/f$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/dl/f$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dl/f$b;

    .line 79
    if-eqz v0, :cond_2

    .line 80
    iget-object v0, v0, Lcom/yelp/android/dl/f$b;->a:Lcom/yelp/android/dg/a;

    invoke-interface {v0}, Lcom/yelp/android/dg/a;->call()V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/dl/f$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_3
    new-instance v1, Lcom/yelp/android/dl/f$a$1;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/dl/f$a$1;-><init>(Lcom/yelp/android/dl/f$a;Lcom/yelp/android/dl/f$b;)V

    invoke-static {v1}, Lcom/yelp/android/dm/d;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/dl/f$a;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/dl/f$a;->a(Lcom/yelp/android/dg/a;J)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/dl/f$a;->a()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 66
    new-instance v2, Lcom/yelp/android/dl/e;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/yelp/android/dl/e;-><init>(Lcom/yelp/android/dg/a;Lrx/d$a;J)V

    invoke-direct {p0, v2, v0, v1}, Lcom/yelp/android/dl/f$a;->a(Lcom/yelp/android/dg/a;J)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/dl/f$a;->c:Lcom/yelp/android/dm/a;

    invoke-virtual {v0}, Lcom/yelp/android/dm/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/dl/f$a;->c:Lcom/yelp/android/dm/a;

    invoke-virtual {v0}, Lcom/yelp/android/dm/a;->unsubscribe()V

    .line 100
    return-void
.end method
