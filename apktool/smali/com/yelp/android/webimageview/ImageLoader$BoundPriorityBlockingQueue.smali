.class final Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/PriorityBlockingQueue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mMaxSize:I


# direct methods
.method public constructor <init>(IILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 559
    iput p1, p0, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;->mMaxSize:I

    .line 560
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 567
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 568
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;->mMaxSize:I

    if-le v1, v2, :cond_0

    .line 569
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 571
    iget v2, p0, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;->mMaxSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 573
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 575
    invoke-super {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 577
    :cond_0
    return v0
.end method
