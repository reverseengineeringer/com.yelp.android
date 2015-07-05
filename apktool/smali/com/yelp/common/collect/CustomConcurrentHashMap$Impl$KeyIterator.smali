.class final Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;
.super Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1780
    invoke-super {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry()Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
