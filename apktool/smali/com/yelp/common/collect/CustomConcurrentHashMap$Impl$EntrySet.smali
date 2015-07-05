.class final Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
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
    .line 1901
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->clear()V

    .line 1946
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1910
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return v0

    .line 1913
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1914
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1915
    if-eqz v1, :cond_0

    .line 1918
    iget-object v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v2, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1920
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v2, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/yelp/common/collect/d;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1905
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;

    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1925
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return v0

    .line 1928
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1929
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1930
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
