.class final Lcom/yelp/android/dl/a;
.super Lrx/d;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/dl/a$c;,
        Lcom/yelp/android/dl/a$b;,
        Lcom/yelp/android/dl/a$a;
    }
.end annotation


# static fields
.field static final b:Lrx/internal/util/RxThreadFactory;

.field static final c:Lrx/internal/util/RxThreadFactory;

.field static final d:Lcom/yelp/android/dl/a$c;

.field static final f:Lcom/yelp/android/dl/a$a;

.field private static final g:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/yelp/android/dl/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxCachedThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/dl/a;->b:Lrx/internal/util/RxThreadFactory;

    .line 33
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxCachedWorkerPoolEvictor-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/dl/a;->c:Lrx/internal/util/RxThreadFactory;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/yelp/android/dl/a;->g:Ljava/util/concurrent/TimeUnit;

    .line 41
    new-instance v0, Lcom/yelp/android/dl/a$c;

    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v2, "RxCachedThreadSchedulerShutdown-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yelp/android/dl/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/yelp/android/dl/a;->d:Lcom/yelp/android/dl/a$c;

    .line 42
    sget-object v0, Lcom/yelp/android/dl/a;->d:Lcom/yelp/android/dl/a$c;

    invoke-virtual {v0}, Lcom/yelp/android/dl/a$c;->unsubscribe()V

    .line 139
    new-instance v0, Lcom/yelp/android/dl/a$a;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/dl/a$a;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/yelp/android/dl/a;->f:Lcom/yelp/android/dl/a$a;

    .line 140
    sget-object v0, Lcom/yelp/android/dl/a;->f:Lcom/yelp/android/dl/a$a;

    invoke-virtual {v0}, Lcom/yelp/android/dl/a$a;->d()V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lrx/d;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/yelp/android/dl/a;->f:Lcom/yelp/android/dl/a$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/dl/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/dl/a;->c()V

    .line 146
    return-void
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    .prologue
    .line 171
    new-instance v1, Lcom/yelp/android/dl/a$b;

    iget-object v0, p0, Lcom/yelp/android/dl/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dl/a$a;

    invoke-direct {v1, v0}, Lcom/yelp/android/dl/a$b;-><init>(Lcom/yelp/android/dl/a$a;)V

    return-object v1
.end method

.method public c()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/yelp/android/dl/a$a;

    const-wide/16 v2, 0x3c

    sget-object v1, Lcom/yelp/android/dl/a;->g:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/dl/a$a;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 151
    iget-object v1, p0, Lcom/yelp/android/dl/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/yelp/android/dl/a;->f:Lcom/yelp/android/dl/a$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/yelp/android/dl/a$a;->d()V

    .line 154
    :cond_0
    return-void
.end method
