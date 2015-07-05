.class final enum Lcom/yelp/common/collect/MapMaker$Strength$2;
.super Lcom/yelp/common/collect/MapMaker$Strength;
.source "MapMaker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/yelp/common/collect/e;)V

    return-void
.end method


# virtual methods
.method copyEntry(Ljava/lang/Object;Lcom/yelp/common/collect/f;Lcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 390
    check-cast p2, Lcom/yelp/common/collect/MapMaker$SoftEntry;

    .line 391
    if-nez p3, :cond_0

    new-instance v0, Lcom/yelp/common/collect/MapMaker$SoftEntry;

    iget-object v1, p2, Lcom/yelp/common/collect/MapMaker$SoftEntry;->internals:Lcom/yelp/common/collect/c;

    iget v2, p2, Lcom/yelp/common/collect/MapMaker$SoftEntry;->hash:I

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/common/collect/MapMaker$SoftEntry;-><init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;

    iget-object v1, p2, Lcom/yelp/common/collect/MapMaker$SoftEntry;->internals:Lcom/yelp/common/collect/c;

    iget v2, p2, Lcom/yelp/common/collect/MapMaker$SoftEntry;->hash:I

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;-><init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;ILcom/yelp/common/collect/f;)V

    goto :goto_0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 367
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 372
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method newEntry(Lcom/yelp/common/collect/c;Ljava/lang/Object;ILcom/yelp/common/collect/f;)Lcom/yelp/common/collect/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;TK;I",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 383
    if-nez p4, :cond_0

    new-instance v0, Lcom/yelp/common/collect/MapMaker$SoftEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$SoftEntry;-><init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;-><init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;ILcom/yelp/common/collect/f;)V

    goto :goto_0
.end method

.method referenceValue(Lcom/yelp/common/collect/f;Ljava/lang/Object;)Lcom/yelp/common/collect/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;TV;)",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Lcom/yelp/common/collect/MapMaker$SoftValueReference;

    invoke-direct {v0, p2, p1}, Lcom/yelp/common/collect/MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/yelp/common/collect/f;)V

    return-object v0
.end method
