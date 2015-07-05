.class public interface abstract Lcom/bumptech/glide/request/c;
.super Ljava/lang/Object;
.source "RequestListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/yelp/android/ag/j;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;",
            "Lcom/yelp/android/ag/j",
            "<TR;>;Z)Z"
        }
    .end annotation
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/yelp/android/ag/j;ZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;",
            "Lcom/yelp/android/ag/j",
            "<TR;>;ZZ)Z"
        }
    .end annotation
.end method
