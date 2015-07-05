.class public Lcom/path/android/jobqueue/nonPersistentQueue/f;
.super Ljava/lang/Object;
.source "NonPersistentPriorityQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/g;


# instance fields
.field public final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    .line 110
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/g;

    invoke-direct {v0, p0}, Lcom/path/android/jobqueue/nonPersistentQueue/g;-><init>(Lcom/path/android/jobqueue/nonPersistentQueue/f;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a:Ljava/util/Comparator;

    .line 17
    iput-object p3, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->d:Ljava/lang/String;

    .line 18
    iput-wide p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->e:J

    .line 19
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/d;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    .line 20
    return-void
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(JJ)I
    .locals 2

    .prologue
    .line 9
    invoke-static {p0, p1, p2, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b(JJ)I

    move-result v0

    return v0
.end method

.method private static b(II)I
    .locals 1

    .prologue
    .line 132
    if-le p0, p1, :cond_0

    .line 133
    const/4 v0, -0x1

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    if-le p1, p0, :cond_1

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(JJ)I
    .locals 2

    .prologue
    .line 142
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 143
    const/4 v0, -0x1

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a()I

    move-result v0

    return v0
.end method

.method public a(ZLjava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a()I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Lcom/path/android/jobqueue/b;)J
    .locals 4

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    .line 28
    iget-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/b;->a(Ljava/lang/Long;)V

    .line 29
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(Lcom/path/android/jobqueue/b;)Z

    .line 30
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)Ljava/lang/Long;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v1, p1, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;

    move-result-object v1

    .line 91
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/b;)J
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c(Lcom/path/android/jobqueue/b;)V

    .line 39
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p1, v0, v1}, Lcom/path/android/jobqueue/b;->a(J)V

    .line 40
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(Lcom/path/android/jobqueue/b;)Z

    .line 41
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/b;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-wide v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/path/android/jobqueue/b;->a(J)V

    .line 78
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/b;->b(I)V

    .line 79
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v1, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->b(Lcom/path/android/jobqueue/b;)Z

    goto :goto_0
.end method

.method public c(Lcom/path/android/jobqueue/b;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->b(Lcom/path/android/jobqueue/b;)Z

    .line 50
    return-void
.end method
