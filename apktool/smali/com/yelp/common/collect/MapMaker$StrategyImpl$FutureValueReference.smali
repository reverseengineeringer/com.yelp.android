.class Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/MapMaker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/MapMaker$StrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/MapMaker$b",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final newEntry:Lcom/yelp/common/collect/MapMaker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final original:Lcom/yelp/common/collect/MapMaker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/MapMaker$StrategyImpl;Lcom/yelp/common/collect/MapMaker$a;Lcom/yelp/common/collect/MapMaker$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 625
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/MapMaker$a;

    .line 627
    iput-object p3, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/yelp/common/collect/MapMaker$a;

    .line 628
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/yelp/common/collect/MapMaker$a;)Lcom/yelp/common/collect/MapMaker$b;
    .locals 3
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
    .line 644
    new-instance v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/MapMaker$a;

    invoke-direct {v0, v1, v2, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/yelp/common/collect/MapMaker$StrategyImpl;Lcom/yelp/common/collect/MapMaker$a;Lcom/yelp/common/collect/MapMaker$a;)V

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
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/MapMaker$a;

    invoke-interface {v0}, Lcom/yelp/common/collect/MapMaker$a;->getValueReference()Lcom/yelp/common/collect/MapMaker$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/common/collect/MapMaker$b;->get()Ljava/lang/Object;
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

    iget-object v0, v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->internals:Lcom/yelp/common/collect/CustomConcurrentHashMap$b;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/yelp/common/collect/MapMaker$a;

    invoke-interface {v0, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$b;->removeEntry(Ljava/lang/Object;)Z

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 648
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/yelp/common/collect/MapMaker$a;

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/yelp/common/collect/MapMaker$a;)Ljava/lang/Object;
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
