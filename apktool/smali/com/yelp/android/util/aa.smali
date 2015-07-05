.class public abstract Lcom/yelp/android/util/aa;
.super Landroid/os/AsyncTask;
.source "SmartAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/aa;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/yelp/android/util/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/yelp/android/util/aa",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lcom/yelp/android/util/aa;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/util/aa;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yelp/android/util/aa",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/util/aa;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 17
    return-object p0
.end method

.method public varargs c([Ljava/lang/Object;)Lcom/yelp/android/util/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yelp/android/util/aa",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/util/aa;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/util/aa;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 22
    return-object p0
.end method
