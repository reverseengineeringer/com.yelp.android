.class Lcom/path/android/jobqueue/nonPersistentQueue/f$1;
.super Ljava/lang/Object;
.source "NonPersistentPriorityQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/nonPersistentQueue/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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
.field final synthetic a:Lcom/path/android/jobqueue/nonPersistentQueue/f;


# direct methods
.method constructor <init>(Lcom/path/android/jobqueue/nonPersistentQueue/f;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/f$1;->a:Lcom/path/android/jobqueue/nonPersistentQueue/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/path/android/jobqueue/a;Lcom/path/android/jobqueue/a;)I
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a(II)I

    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->e()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/path/android/jobqueue/nonPersistentQueue/f;->a(JJ)I

    move-result v0

    neg-int v0, v0

    .line 139
    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

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
    .line 127
    check-cast p1, Lcom/path/android/jobqueue/a;

    check-cast p2, Lcom/path/android/jobqueue/a;

    invoke-virtual {p0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/f$1;->a(Lcom/path/android/jobqueue/a;Lcom/path/android/jobqueue/a;)I

    move-result v0

    return v0
.end method
