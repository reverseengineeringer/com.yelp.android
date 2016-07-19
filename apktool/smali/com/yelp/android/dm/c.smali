.class public final Lcom/yelp/android/dm/c;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/dm/c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/yelp/android/dm/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/yelp/android/dm/c$a;

    const/4 v2, 0x0

    invoke-static {}, Lcom/yelp/android/dm/d;->a()Lrx/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/dm/c$a;-><init>(ZLrx/f;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/dm/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lrx/f;)V
    .locals 3

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/dm/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dm/c$a;

    .line 86
    iget-boolean v2, v0, Lcom/yelp/android/dm/c$a;->a:Z

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {p1}, Lrx/f;->unsubscribe()V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-virtual {v0, p1}, Lcom/yelp/android/dm/c$a;->a(Lrx/f;)Lcom/yelp/android/dm/c$a;

    move-result-object v2

    .line 92
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/dm/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dm/c$a;

    iget-boolean v0, v0, Lcom/yelp/android/dm/c$a;->a:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/yelp/android/dm/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dm/c$a;

    .line 61
    iget-boolean v2, v0, Lcom/yelp/android/dm/c$a;->a:Z

    if-eqz v2, :cond_1

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/dm/c$a;->a()Lcom/yelp/android/dm/c$a;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v0, v0, Lcom/yelp/android/dm/c$a;->b:Lrx/f;

    invoke-interface {v0}, Lrx/f;->unsubscribe()V

    goto :goto_0
.end method
