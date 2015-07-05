.class Lcom/yelp/common/collect/MapMaker$NullOutputExceptionReference;
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
.field final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$NullOutputExceptionReference;->message:Ljava/lang/String;

    .line 780
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
    .line 787
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
    .line 783
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
    .line 791
    new-instance v0, Lcom/yelp/common/collect/NullOutputException;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker$NullOutputExceptionReference;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yelp/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
