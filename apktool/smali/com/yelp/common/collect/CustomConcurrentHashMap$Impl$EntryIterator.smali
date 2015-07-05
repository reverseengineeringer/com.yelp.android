.class final Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;->nextEntry()Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
