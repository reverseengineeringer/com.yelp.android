.class Lcom/yelp/common/collect/MapMaker$WeakEntry;
.super Lcom/yelp/common/base/f;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/base/f",
        "<TK;>;",
        "Lcom/yelp/common/collect/f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/yelp/common/collect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/yelp/common/collect/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 981
    sget-object v0, Lcom/yelp/common/collect/MapMaker$QueueHolder;->queue:Lcom/yelp/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/yelp/common/base/f;-><init>(Ljava/lang/Object;Lcom/yelp/common/base/FinalizableReferenceQueue;)V

    .line 998
    # invokes: Lcom/yelp/common/collect/MapMaker;->computing()Lcom/yelp/common/collect/g;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$600()Lcom/yelp/common/collect/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->valueReference:Lcom/yelp/common/collect/g;

    .line 982
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->internals:Lcom/yelp/common/collect/c;

    .line 983
    iput p3, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->hash:I

    .line 984
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->internals:Lcom/yelp/common/collect/c;

    invoke-interface {v0, p0}, Lcom/yelp/common/collect/c;->removeEntry(Ljava/lang/Object;)Z

    .line 992
    return-void
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/yelp/common/collect/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1013
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/yelp/common/collect/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->valueReference:Lcom/yelp/common/collect/g;

    return-object v0
.end method

.method public setValueReference(Lcom/yelp/common/collect/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->valueReference:Lcom/yelp/common/collect/g;

    .line 1006
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$WeakEntry;->internals:Lcom/yelp/common/collect/c;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/yelp/common/collect/c;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1010
    return-void
.end method
