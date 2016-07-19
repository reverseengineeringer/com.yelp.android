.class public Lcom/path/android/jobqueue/nonPersistentQueue/f;
.super Ljava/lang/Object;
.source "NonPersistentPriorityQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/c;


# instance fields
.field public final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    .line 127
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/f$1;

    invoke-direct {v0, p0}, Lcom/path/android/jobqueue/nonPersistentQueue/f$1;-><init>(Lcom/path/android/jobqueue/nonPersistentQueue/f;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a:Ljava/util/Comparator;

    .line 18
    iput-object p3, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->d:Ljava/lang/String;

    .line 19
    iput-wide p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->e:J

    .line 20
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/d;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    .line 21
    return-void
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(JJ)I
    .locals 2

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b(JJ)I

    move-result v0

    return v0
.end method

.method private static b(II)I
    .locals 1

    .prologue
    .line 149
    if-le p0, p1, :cond_0

    .line 150
    const/4 v0, -0x1

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    if-le p1, p0, :cond_1

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(JJ)I
    .locals 2

    .prologue
    .line 159
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 160
    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0

    .line 162
    :cond_0
    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 58
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
    .line 63
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a()I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Lcom/path/android/jobqueue/a;)J
    .locals 4

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    .line 29
    iget-wide v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/a;->a(Ljava/lang/Long;)V

    .line 30
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(Lcom/path/android/jobqueue/a;)Z

    .line 31
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/path/android/jobqueue/a;)J
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c(Lcom/path/android/jobqueue/a;)V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p1, v0, v1}, Lcom/path/android/jobqueue/a;->b(J)V

    .line 41
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(Lcom/path/android/jobqueue/a;)Z

    .line 42
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/a;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-wide v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/path/android/jobqueue/a;->b(J)V

    .line 79
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/a;->c(I)V

    .line 80
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v1, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->b(Lcom/path/android/jobqueue/a;)Z

    goto :goto_0
.end method

.method public c(ZLjava/util/Collection;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->a(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/path/android/jobqueue/a;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f;->c:Lcom/path/android/jobqueue/nonPersistentQueue/d;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/d;->b(Lcom/path/android/jobqueue/a;)Z

    .line 51
    return-void
.end method
