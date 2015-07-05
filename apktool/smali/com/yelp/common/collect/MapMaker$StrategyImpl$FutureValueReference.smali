.class Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/g",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final newEntry:Lcom/yelp/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final original:Lcom/yelp/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/MapMaker$StrategyImpl;Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 625
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/f;

    .line 627
    iput-object p3, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/yelp/common/collect/f;

    .line 628
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/g;
    .locals 3
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
    .line 644
    new-instance v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/yelp/common/collect/MapMaker$StrategyImpl;Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/f;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 631
    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/f;

    invoke-interface {v0}, Lcom/yelp/common/collect/f;->getValueReference()Lcom/yelp/common/collect/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/common/collect/g;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 638
    return-object v0

    .line 637
    :catchall_0
    move-exception v0

    .line 638
    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    throw v0
.end method

.method removeEntry()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->internals:Lcom/yelp/common/collect/c;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/yelp/common/collect/f;

    invoke-interface {v0, v1}, Lcom/yelp/common/collect/c;->removeEntry(Ljava/lang/Object;)Z

    .line 668
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 648
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/f;

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/yelp/common/collect/f;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 656
    return-object v0

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    invoke-virtual {p0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    throw v0
.end method
