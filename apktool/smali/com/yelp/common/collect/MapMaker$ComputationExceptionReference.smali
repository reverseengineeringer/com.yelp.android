.class Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;
.super Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/g",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    .line 801
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/g;
    .locals 0
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
    .line 808
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 812
    new-instance v0, Lcom/yelp/common/collect/AsynchronousComputationException;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/yelp/common/collect/AsynchronousComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
