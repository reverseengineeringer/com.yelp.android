.class public Lcom/path/android/jobqueue/nonPersistentQueue/h;
.super Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;
.source "TimeAwarePriorityQueue.java"


# direct methods
.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/g;

    invoke-direct {v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/g;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;-><init>(ILjava/util/Comparator;Ljava/util/Comparator;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-super {p0, v0, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;Ljava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-super {p0, v1, p1, p2, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a(Lcom/path/android/jobqueue/nonPersistentQueue/b;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;ILjava/util/Comparator;)Lcom/path/android/jobqueue/nonPersistentQueue/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/c;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-ne p1, v0, :cond_0

    .line 40
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/e;

    invoke-direct {v0, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/e;-><init>(Ljava/util/Comparator;)V

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/e;

    new-instance v1, Lcom/path/android/jobqueue/nonPersistentQueue/a;

    invoke-direct {v1, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/a;-><init>(Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "cannot call time aware priority queue\'s count ready jobs w/o providing a time"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Lcom/path/android/jobqueue/a;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    goto :goto_0
.end method
