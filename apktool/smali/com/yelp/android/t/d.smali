.class Lcom/yelp/android/t/d;
.super Ljava/util/concurrent/FutureTask;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/t/d",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 67
    instance-of v0, p1, Lcom/yelp/android/t/e;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    check-cast p1, Lcom/yelp/android/t/e;

    invoke-interface {p1}, Lcom/yelp/android/t/e;->b()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/t/d;->a:I

    .line 72
    iput p3, p0, Lcom/yelp/android/t/d;->b:I

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/t/d;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/t/d",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/yelp/android/t/d;->a:I

    iget v1, p1, Lcom/yelp/android/t/d;->a:I

    sub-int/2addr v0, v1

    .line 95
    if-nez v0, :cond_0

    .line 96
    iget v0, p0, Lcom/yelp/android/t/d;->b:I

    iget v1, p1, Lcom/yelp/android/t/d;->b:I

    sub-int/2addr v0, v1

    .line 98
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    check-cast p1, Lcom/yelp/android/t/d;

    invoke-virtual {p0, p1}, Lcom/yelp/android/t/d;->a(Lcom/yelp/android/t/d;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    instance-of v1, p1, Lcom/yelp/android/t/d;

    if-eqz v1, :cond_0

    .line 79
    check-cast p1, Lcom/yelp/android/t/d;

    .line 80
    iget v1, p0, Lcom/yelp/android/t/d;->b:I

    iget v2, p1, Lcom/yelp/android/t/d;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/yelp/android/t/d;->a:I

    iget v2, p1, Lcom/yelp/android/t/d;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/yelp/android/t/d;->a:I

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yelp/android/t/d;->b:I

    add-int/2addr v0, v1

    .line 89
    return v0
.end method
