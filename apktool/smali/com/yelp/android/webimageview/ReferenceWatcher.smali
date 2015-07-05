.class public Lcom/yelp/android/webimageview/ReferenceWatcher;
.super Ljava/lang/Object;
.source "ReferenceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private mRefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/yelp/android/webimageview/ReferenceWatcher;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mRefs:Ljava/util/HashSet;

    .line 40
    iput p1, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mThreshold:I

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    return-void
.end method

.method private final clean()V
    .locals 2

    .prologue
    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mRefs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public getSnapShotAndClean()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yelp/android/webimageview/ReferenceWatcher;->clean()V

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mRefs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 66
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mRefs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 73
    return-object v1
.end method

.method public watch(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mRefs:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/webimageview/ReferenceWatcher;->mThreshold:I

    if-lt v0, v1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/yelp/android/webimageview/ReferenceWatcher;->clean()V

    .line 49
    :cond_0
    return-void
.end method
