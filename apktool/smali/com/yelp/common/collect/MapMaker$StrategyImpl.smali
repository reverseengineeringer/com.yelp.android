.class Lcom/yelp/common/collect/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/b",
        "<TK;TV;",
        "Lcom/yelp/common/collect/f",
        "<TK;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/yelp/common/collect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/MapMaker;)V
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    # getter for: Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$100(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 470
    # getter for: Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$200(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 471
    # getter for: Lcom/yelp/common/collect/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$300(Lcom/yelp/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 473
    # getter for: Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$400(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->buildMap(Lcom/yelp/common/collect/d;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 474
    return-void
.end method

.method constructor <init>(Lcom/yelp/common/collect/MapMaker;Lcom/yelp/common/base/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/MapMaker;",
            "Lcom/yelp/common/base/g",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    # getter for: Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$100(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 478
    # getter for: Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$200(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 479
    # getter for: Lcom/yelp/common/collect/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$300(Lcom/yelp/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 481
    # getter for: Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/yelp/common/collect/MapMaker;->access$400(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->buildComputingMap(Lcom/yelp/common/collect/b;Lcom/yelp/common/base/g;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 482
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 722
    :try_start_0
    sget-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 723
    sget-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 724
    sget-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 725
    sget-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    sget-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 687
    iget-wide v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 693
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->internals:Lcom/yelp/common/collect/c;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 695
    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/yelp/common/collect/f;Lcom/yelp/common/base/g;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;",
            "Lcom/yelp/common/base/g",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 581
    :try_start_0
    invoke-interface {p3, p1}, Lcom/yelp/common/base/g;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 593
    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " returned null for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Lcom/yelp/common/collect/MapMaker$NullOutputExceptionReference;

    invoke-direct {v1, v0}, Lcom/yelp/common/collect/MapMaker$NullOutputExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/g;)V

    .line 596
    new-instance v1, Lcom/yelp/common/collect/NullOutputException;

    invoke-direct {v1, v0}, Lcom/yelp/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :catch_0
    move-exception v0

    .line 586
    new-instance v1, Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;

    invoke-virtual {v0}, Lcom/yelp/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/g;)V

    .line 587
    throw v0

    .line 588
    :catch_1
    move-exception v0

    .line 589
    new-instance v1, Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;

    invoke-direct {v1, v0}, Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/g;)V

    .line 590
    new-instance v1, Lcom/yelp/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/yelp/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 598
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/yelp/common/collect/f;Ljava/lang/Object;)V

    .line 600
    return-object v0
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/yelp/common/base/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p2, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/yelp/common/collect/f;Lcom/yelp/common/base/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 540
    invoke-interface {p2}, Lcom/yelp/common/collect/f;->getValueReference()Lcom/yelp/common/collect/g;

    move-result-object v1

    .line 541
    # getter for: Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/g;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$500()Lcom/yelp/common/collect/g;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 542
    invoke-interface {p2}, Lcom/yelp/common/collect/f;->getHash()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;

    move-result-object v0

    .line 543
    new-instance v1, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    invoke-direct {v1, p0, p2, v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/yelp/common/collect/MapMaker$StrategyImpl;Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/f;)V

    invoke-interface {v0, v1}, Lcom/yelp/common/collect/f;->setValueReference(Lcom/yelp/common/collect/g;)V

    .line 548
    :goto_0
    return-object v0

    .line 546
    :cond_0
    invoke-interface {p2}, Lcom/yelp/common/collect/f;->getHash()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;

    move-result-object v0

    .line 547
    invoke-interface {v1, v0}, Lcom/yelp/common/collect/g;->copyFor(Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/common/collect/f;->setValueReference(Lcom/yelp/common/collect/g;)V

    goto :goto_0
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p2, Lcom/yelp/common/collect/f;

    check-cast p3, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/yelp/common/collect/f;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 531
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getHash()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->getHash(Lcom/yelp/common/collect/f;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/yelp/common/collect/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->getKey(Lcom/yelp/common/collect/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getNext()Lcom/yelp/common/collect/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->getNext(Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/yelp/common/collect/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getValueReference()Lcom/yelp/common/collect/g;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Lcom/yelp/common/collect/g;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->getValue(Lcom/yelp/common/collect/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/yelp/common/collect/MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->internals:Lcom/yelp/common/collect/c;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$Strength;->newEntry(Lcom/yelp/common/collect/c;Ljava/lang/Object;ILcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p3, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;

    move-result-object v0

    return-object v0
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 501
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 502
    sget-object v2, Lcom/yelp/common/collect/ExpirationTimer;->instance:Ljava/util/Timer;

    new-instance v3, Lcom/yelp/common/collect/MapMaker$StrategyImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$1;-><init>(Lcom/yelp/common/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 512
    return-void
.end method

.method public setInternals(Lcom/yelp/common/collect/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 676
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->internals:Lcom/yelp/common/collect/c;

    .line 677
    return-void
.end method

.method public setValue(Lcom/yelp/common/collect/f;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/common/collect/MapMaker$Strength;->referenceValue(Lcom/yelp/common/collect/f;Ljava/lang/Object;)Lcom/yelp/common/collect/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/g;)V

    .line 486
    iget-wide v0, p0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 487
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 460
    check-cast p1, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/yelp/common/collect/f;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 607
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getValueReference()Lcom/yelp/common/collect/g;

    move-result-object v0

    # getter for: Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/g;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$500()Lcom/yelp/common/collect/g;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 608
    :goto_0
    invoke-interface {p1, p2}, Lcom/yelp/common/collect/f;->setValueReference(Lcom/yelp/common/collect/g;)V

    .line 609
    if-eqz v0, :cond_0

    .line 610
    monitor-enter p1

    .line 611
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 612
    monitor-exit p1

    .line 614
    :cond_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForValue(Lcom/yelp/common/collect/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 557
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getValueReference()Lcom/yelp/common/collect/g;

    move-result-object v0

    .line 558
    # getter for: Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/g;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$500()Lcom/yelp/common/collect/g;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 559
    monitor-enter p1

    .line 560
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/yelp/common/collect/f;->getValueReference()Lcom/yelp/common/collect/g;

    move-result-object v0

    # getter for: Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/g;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$500()Lcom/yelp/common/collect/g;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 561
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :cond_1
    invoke-interface {v0}, Lcom/yelp/common/collect/g;->waitForValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lcom/yelp/common/collect/f;

    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/yelp/common/collect/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
