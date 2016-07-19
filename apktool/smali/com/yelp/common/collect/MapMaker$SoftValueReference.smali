.class Lcom/yelp/common/collect/MapMaker$SoftValueReference;
.super Lcom/yelp/common/base/b;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/MapMaker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/base/b",
        "<TV;>;",
        "Lcom/yelp/common/collect/MapMaker$b",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/yelp/common/collect/MapMaker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/yelp/common/collect/MapMaker$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1065
    sget-object v0, Lcom/yelp/common/collect/MapMaker$QueueHolder;->queue:Lcom/yelp/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/yelp/common/base/b;-><init>(Ljava/lang/Object;Lcom/yelp/common/base/FinalizableReferenceQueue;)V

    .line 1066
    iput-object p2, p0, Lcom/yelp/common/collect/MapMaker$SoftValueReference;->entry:Lcom/yelp/common/collect/MapMaker$a;

    .line 1067
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/yelp/common/collect/MapMaker$a;)Lcom/yelp/common/collect/MapMaker$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/MapMaker$b",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1074
    new-instance v0, Lcom/yelp/common/collect/MapMaker$SoftValueReference;

    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/common/collect/MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/yelp/common/collect/MapMaker$a;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$SoftValueReference;->entry:Lcom/yelp/common/collect/MapMaker$a;

    invoke-interface {v0}, Lcom/yelp/common/collect/MapMaker$a;->valueReclaimed()V

    .line 1071
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
    .line 1078
    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
