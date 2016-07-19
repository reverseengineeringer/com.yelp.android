.class Lcom/yelp/common/collect/MapMaker$SoftEntry;
.super Lcom/yelp/common/base/b;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/MapMaker$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/base/b",
        "<TK;>;",
        "Lcom/yelp/common/collect/MapMaker$a",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/yelp/common/collect/CustomConcurrentHashMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$b",
            "<TK;TV;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/yelp/common/collect/MapMaker$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/MapMaker$b",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$b;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$b",
            "<TK;TV;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 920
    sget-object v0, Lcom/yelp/common/collect/MapMaker$QueueHolder;->queue:Lcom/yelp/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/yelp/common/base/b;-><init>(Ljava/lang/Object;Lcom/yelp/common/base/FinalizableReferenceQueue;)V

    .line 937
    # invokes: Lcom/yelp/common/collect/MapMaker;->computing()Lcom/yelp/common/collect/MapMaker$b;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$600()Lcom/yelp/common/collect/MapMaker$b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->valueReference:Lcom/yelp/common/collect/MapMaker$b;

    .line 921
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->internals:Lcom/yelp/common/collect/CustomConcurrentHashMap$b;

    .line 922
    iput p3, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->hash:I

    .line 923
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->internals:Lcom/yelp/common/collect/CustomConcurrentHashMap$b;

    invoke-interface {v0, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$b;->removeEntry(Ljava/lang/Object;)Z

    .line 931
    return-void
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->hash:I

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
    .line 926
    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$SoftEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/yelp/common/collect/MapMaker$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 952
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/yelp/common/collect/MapMaker$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/MapMaker$b",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 940
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->valueReference:Lcom/yelp/common/collect/MapMaker$b;

    return-object v0
.end method

.method public setValueReference(Lcom/yelp/common/collect/MapMaker$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/MapMaker$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 944
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->valueReference:Lcom/yelp/common/collect/MapMaker$b;

    .line 945
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$SoftEntry;->internals:Lcom/yelp/common/collect/CustomConcurrentHashMap$b;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$b;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 949
    return-void
.end method
