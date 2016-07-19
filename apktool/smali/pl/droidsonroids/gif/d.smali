.class final Lpl/droidsonroids/gif/d;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "GifRenderingExecutor.java"


# static fields
.field private static volatile a:Lpl/droidsonroids/gif/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lpl/droidsonroids/gif/d;->a:Lpl/droidsonroids/gif/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x1

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    .line 13
    return-void
.end method

.method public static a()Lpl/droidsonroids/gif/d;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lpl/droidsonroids/gif/d;->a:Lpl/droidsonroids/gif/d;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lpl/droidsonroids/gif/d;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lpl/droidsonroids/gif/d;->a:Lpl/droidsonroids/gif/d;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lpl/droidsonroids/gif/d;

    invoke-direct {v0}, Lpl/droidsonroids/gif/d;-><init>()V

    sput-object v0, Lpl/droidsonroids/gif/d;->a:Lpl/droidsonroids/gif/d;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lpl/droidsonroids/gif/d;->a:Lpl/droidsonroids/gif/d;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
