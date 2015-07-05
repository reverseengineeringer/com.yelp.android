.class public Lcom/path/android/jobqueue/a;
.super Ljava/lang/Object;
.source "CopyOnWriteGroupSet.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/a;->b:Ljava/util/TreeSet;

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/path/android/jobqueue/a;->b:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/util/ArrayList;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
