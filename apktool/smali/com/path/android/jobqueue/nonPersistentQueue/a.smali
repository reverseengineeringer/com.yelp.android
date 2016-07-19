.class public Lcom/path/android/jobqueue/nonPersistentQueue/a;
.super Ljava/lang/Object;
.source "ConsistentTimedComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/path/android/jobqueue/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
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
            "Lcom/path/android/jobqueue/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/a;->a:Ljava/util/Comparator;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/path/android/jobqueue/a;Lcom/path/android/jobqueue/a;)I
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 20
    const/4 v0, -0x1

    .line 24
    :goto_0
    return v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 22
    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/a;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/path/android/jobqueue/a;

    check-cast p2, Lcom/path/android/jobqueue/a;

    invoke-virtual {p0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/a;->a(Lcom/path/android/jobqueue/a;Lcom/path/android/jobqueue/a;)I

    move-result v0

    return v0
.end method
