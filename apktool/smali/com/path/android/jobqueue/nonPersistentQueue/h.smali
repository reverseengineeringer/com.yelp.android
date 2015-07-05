.class public Lcom/path/android/jobqueue/nonPersistentQueue/h;
.super Ljava/lang/Object;
.source "TimeAwareComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/path/android/jobqueue/b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/h;->a:Ljava/util/Comparator;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/b;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 21
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    move v0, v1

    .line 22
    :goto_0
    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 23
    :cond_0
    if-eqz v0, :cond_4

    .line 24
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/h;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_1
    move v1, v0

    .line 36
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v2

    .line 21
    goto :goto_0

    :cond_3
    move v0, v3

    .line 24
    goto :goto_1

    .line 26
    :cond_4
    if-eqz v2, :cond_5

    .line 27
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/h;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_2

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    move v1, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_6
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/h;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/path/android/jobqueue/b;

    check-cast p2, Lcom/path/android/jobqueue/b;

    invoke-virtual {p0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/h;->a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/b;)I

    move-result v0

    return v0
.end method
