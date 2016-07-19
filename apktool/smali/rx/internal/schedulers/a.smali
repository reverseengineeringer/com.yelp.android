.class public Lrx/internal/schedulers/a;
.super Lrx/d;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/a$c;,
        Lrx/internal/schedulers/a$a;,
        Lrx/internal/schedulers/a$b;
    }
.end annotation


# static fields
.field static final b:Lrx/internal/util/RxThreadFactory;

.field static final c:I

.field static final d:Lrx/internal/schedulers/a$c;

.field static final e:Lrx/internal/schedulers/a$b;


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxComputationThreadPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/a;->b:Lrx/internal/util/RxThreadFactory;

    .line 38
    const-string/jumbo v0, "rx.scheduler.max-computation-threads"

    invoke-static {v0, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 41
    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 46
    :cond_1
    sput v0, Lrx/internal/schedulers/a;->c:I

    .line 51
    new-instance v0, Lrx/internal/schedulers/a$c;

    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v2, "RxComputationShutdown-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lrx/internal/schedulers/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/internal/schedulers/a;->d:Lrx/internal/schedulers/a$c;

    .line 52
    sget-object v0, Lrx/internal/schedulers/a;->d:Lrx/internal/schedulers/a$c;

    invoke-virtual {v0}, Lrx/internal/schedulers/a$c;->unsubscribe()V

    .line 86
    new-instance v0, Lrx/internal/schedulers/a$b;

    invoke-direct {v0, v3}, Lrx/internal/schedulers/a$b;-><init>(I)V

    sput-object v0, Lrx/internal/schedulers/a;->e:Lrx/internal/schedulers/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lrx/d;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/a;->e:Lrx/internal/schedulers/a$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    invoke-virtual {p0}, Lrx/internal/schedulers/a;->c()V

    .line 97
    return-void
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    .prologue
    .line 101
    new-instance v1, Lrx/internal/schedulers/a$a;

    iget-object v0, p0, Lrx/internal/schedulers/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/a$b;

    invoke-virtual {v0}, Lrx/internal/schedulers/a$b;->a()Lrx/internal/schedulers/a$c;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/internal/schedulers/a$a;-><init>(Lrx/internal/schedulers/a$c;)V

    return-object v1
.end method

.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lrx/internal/schedulers/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/a$b;

    invoke-virtual {v0}, Lrx/internal/schedulers/a$b;->a()Lrx/internal/schedulers/a$c;

    move-result-object v0

    .line 134
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/internal/schedulers/a$c;->b(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lrx/internal/schedulers/a$b;

    sget v1, Lrx/internal/schedulers/a;->c:I

    invoke-direct {v0, v1}, Lrx/internal/schedulers/a$b;-><init>(I)V

    .line 107
    iget-object v1, p0, Lrx/internal/schedulers/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/a;->e:Lrx/internal/schedulers/a$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lrx/internal/schedulers/a$b;->b()V

    .line 110
    :cond_0
    return-void
.end method
