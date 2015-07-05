.class Lcom/yelp/common/collect/MapMaker$WeakValueReference;
.super Lcom/yelp/common/base/f;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/base/f",
        "<TV;>;",
        "Lcom/yelp/common/collect/g",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/yelp/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/yelp/common/collect/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1042
    sget-object v0, Lcom/yelp/common/collect/MapMaker$QueueHolder;->queue:Lcom/yelp/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/yelp/common/base/f;-><init>(Ljava/lang/Object;Lcom/yelp/common/base/FinalizableReferenceQueue;)V

    .line 1043
    iput-object p2, p0, Lcom/yelp/common/collect/MapMaker$WeakValueReference;->entry:Lcom/yelp/common/collect/f;

    .line 1044
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v0, Lcom/yelp/common/collect/MapMaker$WeakValueReference;

    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/common/collect/MapMaker$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/yelp/common/collect/f;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$WeakValueReference;->entry:Lcom/yelp/common/collect/f;

    invoke-interface {v0}, Lcom/yelp/common/collect/f;->valueReclaimed()V

    .line 1048
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
