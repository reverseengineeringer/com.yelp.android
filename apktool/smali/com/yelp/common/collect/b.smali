.class public interface abstract Lcom/yelp/common/collect/b;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/yelp/common/collect/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/d",
        "<TK;TV;TE;>;"
    }
.end annotation


# virtual methods
.method public abstract compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/yelp/common/base/g;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;",
            "Lcom/yelp/common/base/g",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation
.end method
