.class public Lcom/ooyala/android/OrderedMap;
.super Ljava/lang/Object;
.source "OrderedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/ooyala/android/OrderedMapValue",
        "<TK;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private _array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field private _keyToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    return-void
.end method

.method private recomputeIndicies()V
    .locals 5

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 20
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    .line 21
    iget-object v3, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {v0}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private verifyIndex(I)I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 27
    :cond_1
    return p1
.end method


# virtual methods
.method public add(ILcom/ooyala/android/OrderedMapValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {p2}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-direct {p0}, Lcom/ooyala/android/OrderedMap;->recomputeIndicies()V

    .line 51
    return-void
.end method

.method public add(Lcom/ooyala/android/OrderedMapValue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 64
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    .line 65
    iget-object v2, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OrderedMap;->recomputeIndicies()V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    .line 56
    iget-object v2, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OrderedMap;->recomputeIndicies()V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    return-void
.end method

.method public contains(Lcom/ooyala/android/OrderedMapValue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Lcom/ooyala/android/OrderedMapValue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/ooyala/android/OrderedMapValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/ooyala/android/OrderedMapValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    return-object v0
.end method

.method public indexForKey(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public indexForValue(Lcom/ooyala/android/OrderedMapValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(Lcom/ooyala/android/OrderedMapValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Lcom/ooyala/android/OrderedMapValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lcom/ooyala/android/OrderedMapValue;)Lcom/ooyala/android/OrderedMapValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    return-object v0
.end method

.method public remove(I)Lcom/ooyala/android/OrderedMapValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/ooyala/android/OrderedMap;->verifyIndex(I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    .line 106
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {v0}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lcom/ooyala/android/OrderedMap;->recomputeIndicies()V

    .line 109
    return-object v0
.end method

.method public remove(Lcom/ooyala/android/OrderedMapValue;)Lcom/ooyala/android/OrderedMapValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    .line 176
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ooyala/android/OrderedMapValue;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/ooyala/android/OrderedMapValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OrderedMapValue;

    .line 168
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/ooyala/android/OrderedMap;->_keyToIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-direct {p0}, Lcom/ooyala/android/OrderedMap;->recomputeIndicies()V

    .line 171
    return-object v0
.end method

.method public set(ILcom/ooyala/android/OrderedMapValue;)Lcom/ooyala/android/OrderedMapValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/ooyala/android/OrderedMap;->remove(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/ooyala/android/OrderedMap;->add(ILcom/ooyala/android/OrderedMapValue;)V

    .line 115
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ooyala/android/OrderedMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
