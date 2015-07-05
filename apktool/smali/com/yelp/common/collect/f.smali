.class interface abstract Lcom/yelp/common/collect/f;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getHash()I
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getNext()Lcom/yelp/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getValueReference()Lcom/yelp/common/collect/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract setValueReference(Lcom/yelp/common/collect/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract valueReclaimed()V
.end method
