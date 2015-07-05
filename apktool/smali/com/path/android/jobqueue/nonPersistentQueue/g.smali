.class Lcom/path/android/jobqueue/nonPersistentQueue/g;
.super Ljava/lang/Object;
.source "NonPersistentPriorityQueue.java"

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
.field final synthetic a:Lcom/path/android/jobqueue/nonPersistentQueue/f;


# direct methods
.method constructor <init>(Lcom/path/android/jobqueue/nonPersistentQueue/f;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/g;->a:Lcom/path/android/jobqueue/nonPersistentQueue/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/b;)I
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a(II)I

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->e()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a(JJ)I

    move-result v0

    neg-int v0, v0

    .line 122
    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a(JJ)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 110
    check-cast p1, Lcom/path/android/jobqueue/b;

    check-cast p2, Lcom/path/android/jobqueue/b;

    invoke-virtual {p0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/g;->a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/b;)I

    move-result v0

    return v0
.end method
