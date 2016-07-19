.class public Lcom/path/android/jobqueue/nonPersistentQueue/d;
.super Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;
.source "NetworkAwarePriorityQueue.java"


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
    .line 20
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/g;

    invoke-direct {v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/g;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;-><init>(ILjava/util/Comparator;Ljava/util/Comparator;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 1
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
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-super {p0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-super {p0, v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;Ljava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 2
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
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "cannot call network aware priority queue count w/o providing network status"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;ILjava/util/Comparator;)Lcom/path/android/jobqueue/nonPersistentQueue/c;
    .locals 1
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
    .line 65
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/h;

    invoke-direct {v0, p2, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/h;-><init>(ILjava/util/Comparator;)V

    return-object v0
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
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "cannot call network aware priority queue count w/o providing network status"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 71
    if-eqz p1, :cond_0

    .line 72
    sget-object v2, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-super {p0, v2, v0, v1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v2

    sget-object v3, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-super {p0, v3, v0, v1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a(Lcom/path/android/jobqueue/nonPersistentQueue/b;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-super {p0, v2, v0, v1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(Lcom/path/android/jobqueue/a;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    goto :goto_0
.end method
