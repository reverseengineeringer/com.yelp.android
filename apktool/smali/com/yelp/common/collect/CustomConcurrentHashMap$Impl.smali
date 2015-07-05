.class Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


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
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation
.end field

.field final strategy:Lcom/yelp/common/collect/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/d",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/d;Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/d",
            "<TK;TV;TE;>;",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v0, 0x10000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 621
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 622
    invoke-virtual {p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->getConcurrencyLevel()I

    move-result v1

    .line 623
    invoke-virtual {p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->getInitialCapacity()I

    move-result v3

    .line 625
    if-le v1, v0, :cond_5

    :goto_0
    move v6, v5

    move v1, v4

    .line 632
    :goto_1
    if-ge v6, v0, :cond_0

    .line 633
    add-int/lit8 v7, v1, 0x1

    .line 634
    shl-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v7

    goto :goto_1

    .line 636
    :cond_0
    rsub-int/lit8 v0, v1, 0x20

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    .line 637
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 638
    invoke-virtual {p0, v6}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 640
    if-le v3, v2, :cond_4

    move v0, v2

    .line 644
    :goto_2
    div-int v1, v0, v6

    .line 645
    mul-int v2, v1, v6

    if-ge v2, v0, :cond_3

    .line 646
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v5

    .line 650
    :goto_4
    if-ge v1, v0, :cond_1

    .line 651
    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1
    move v0, v4

    .line 653
    :goto_5
    iget-object v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 654
    iget-object v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v3, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v3, p0, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v3, v2, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 657
    :cond_2
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 659
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v0, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v0}, Lcom/yelp/common/collect/d;->setInternals(Lcom/yelp/common/collect/c;)V

    .line 660
    return-void

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v1, 0x10000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1991
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 1992
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1993
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/common/collect/d;

    .line 1995
    if-le v2, v1, :cond_6

    :goto_0
    move v7, v4

    move v2, v3

    .line 2002
    :goto_1
    if-ge v7, v1, :cond_0

    .line 2003
    add-int/lit8 v8, v2, 0x1

    .line 2004
    shl-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v8

    goto :goto_1

    .line 2006
    :cond_0
    sget-object v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2007
    sget-object v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    add-int/lit8 v2, v7, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2008
    sget-object v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v7}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2010
    if-le v6, v5, :cond_5

    move v2, v5

    .line 2014
    :goto_2
    div-int v1, v2, v7

    .line 2015
    mul-int v5, v1, v7

    if-ge v5, v2, :cond_1

    .line 2016
    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v2, v4

    .line 2020
    :goto_3
    if-ge v2, v1, :cond_2

    .line 2021
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move v1, v3

    .line 2023
    :goto_4
    iget-object v3, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 2024
    iget-object v3, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v4, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v4, p0, v2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v4, v3, v1

    .line 2023
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2027
    :cond_3
    sget-object v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2030
    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 2031
    if-nez v0, :cond_4

    .line 2040
    return-void

    .line 2034
    :cond_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 2035
    invoke-virtual {p0, v0, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1955
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1956
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1957
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1958
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1959
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1961
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1962
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1588
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1589
    invoke-virtual {v3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->clear()V

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1591
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1371
    if-nez p1, :cond_0

    .line 1372
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1375
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1393
    if-nez p1, :cond_0

    .line 1394
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_0
    iget-object v5, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1400
    array-length v0, v5

    new-array v6, v0, [I

    move v4, v1

    .line 1403
    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_5

    move v0, v1

    move v2, v1

    .line 1405
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 1407
    aget-object v7, v5, v0

    iget v7, v7, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1408
    aget-object v7, v5, v0

    iget v7, v7, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v7, v6, v0

    add-int/2addr v2, v7

    .line 1409
    aget-object v7, v5, v0

    invoke-virtual {v7, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1445
    :goto_2
    return v3

    .line 1405
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1414
    :cond_2
    if-eqz v2, :cond_b

    move v0, v1

    .line 1415
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_b

    .line 1417
    aget-object v2, v5, v0

    iget v2, v2, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1418
    aget v2, v6, v0

    aget-object v7, v5, v0

    iget v7, v7, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v2, v7, :cond_3

    move v0, v1

    .line 1424
    :goto_4
    if-eqz v0, :cond_4

    move v3, v1

    .line 1425
    goto :goto_2

    .line 1415
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1403
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1429
    :cond_5
    array-length v2, v5

    move v0, v1

    :goto_5
    if-ge v0, v2, :cond_6

    aget-object v4, v5, v0

    .line 1430
    invoke-virtual {v4}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1429
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1434
    :cond_6
    :try_start_0
    array-length v2, v5

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_a

    aget-object v4, v5, v0

    .line 1435
    invoke-virtual {v4, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 1441
    :goto_7
    array-length v2, v5

    :goto_8
    if-ge v1, v2, :cond_9

    aget-object v3, v5, v1

    .line 1442
    invoke-virtual {v3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1434
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1441
    :catchall_0
    move-exception v0

    array-length v2, v5

    :goto_9
    if-ge v1, v2, :cond_8

    aget-object v3, v5, v1

    .line 1442
    invoke-virtual {v3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    throw v0

    :cond_9
    move v3, v0

    .line 1445
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_4
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
    .line 1659
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    .line 1660
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;

    invoke-direct {v0, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1351
    if-nez p1, :cond_0

    .line 1352
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    invoke-interface {v0, p1}, Lcom/yelp/common/collect/d;->hashKey(Ljava/lang/Object;)I

    move-result v0

    .line 664
    invoke-static {v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap;->a(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1251
    iget-object v3, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1260
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 1262
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 1263
    aget-object v5, v3, v0

    iget v5, v5, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v5, :cond_1

    .line 1279
    :cond_0
    :goto_1
    return v1

    .line 1266
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    .line 1273
    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 1274
    aget-object v2, v3, v0

    iget v2, v2, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v2, :cond_0

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-ne v2, v5, :cond_0

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1279
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
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
    .line 1612
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    .line 1613
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$KeySet;

    invoke-direct {v0, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newSegmentArray(I)[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 702
    const-class v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    check-cast v0, [Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1466
    if-nez p1, :cond_0

    .line 1467
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1469
    :cond_0
    if-nez p2, :cond_1

    .line 1470
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1473
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1505
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1508
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1485
    if-nez p1, :cond_0

    .line 1486
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_0
    if-nez p2, :cond_1

    .line 1489
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1492
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1523
    if-nez p1, :cond_0

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1527
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1537
    if-nez p1, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1541
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1573
    if-nez p1, :cond_0

    .line 1574
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1576
    :cond_0
    if-nez p2, :cond_1

    .line 1577
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1580
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1551
    if-nez p1, :cond_0

    .line 1552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_0
    if-nez p2, :cond_1

    .line 1555
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "oldValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_1
    if-nez p3, :cond_2

    .line 1558
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "newValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1561
    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 14

    .prologue
    .line 1291
    iget-object v7, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1292
    const-wide/16 v4, 0x0

    .line 1293
    const-wide/16 v2, 0x0

    .line 1294
    array-length v0, v7

    new-array v8, v0, [I

    .line 1297
    const/4 v0, 0x0

    move v6, v0

    move-wide v0, v2

    move-wide v2, v4

    :goto_0
    const/4 v4, 0x2

    if-ge v6, v4, :cond_8

    .line 1298
    const-wide/16 v4, 0x0

    .line 1299
    const-wide/16 v2, 0x0

    .line 1300
    const/4 v1, 0x0

    .line 1301
    const/4 v0, 0x0

    :goto_1
    array-length v9, v7

    if-ge v0, v9, :cond_0

    .line 1302
    aget-object v9, v7, v0

    iget v9, v9, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v10, v9

    add-long/2addr v2, v10

    .line 1303
    aget-object v9, v7, v0

    iget v9, v9, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v9, v8, v0

    add-int/2addr v1, v9

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1305
    :cond_0
    if-eqz v1, :cond_7

    .line 1306
    const/4 v0, 0x0

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_7

    .line 1307
    aget-object v1, v7, v0

    iget v1, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v10, v1

    add-long/2addr v4, v10

    .line 1308
    aget v1, v8, v0

    aget-object v9, v7, v0

    iget v9, v9, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v1, v9, :cond_1

    .line 1309
    const-wide/16 v4, -0x1

    move-wide v0, v4

    .line 1314
    :goto_3
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move-wide v12, v0

    move-wide v0, v2

    move-wide v2, v12

    .line 1318
    :goto_4
    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 1319
    const-wide/16 v2, 0x0

    .line 1320
    array-length v1, v7

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_3

    aget-object v4, v7, v0

    .line 1321
    invoke-virtual {v4}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1320
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1297
    :cond_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1323
    :cond_3
    array-length v6, v7

    const/4 v0, 0x0

    move v12, v0

    move-wide v0, v2

    move v2, v12

    :goto_6
    if-ge v2, v6, :cond_4

    aget-object v3, v7, v2

    .line 1324
    iget v3, v3, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    .line 1323
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_6

    .line 1326
    :cond_4
    array-length v3, v7

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_5

    aget-object v4, v7, v2

    .line 1327
    invoke-virtual {v4}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1326
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1330
    :cond_5
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 1331
    const v0, 0x7fffffff

    .line 1333
    :goto_8
    return v0

    :cond_6
    long-to-int v0, v0

    goto :goto_8

    :cond_7
    move-wide v0, v4

    goto :goto_3

    :cond_8
    move-wide v12, v0

    move-wide v0, v2

    move-wide v2, v12

    goto :goto_4
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
    .line 1636
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    .line 1637
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Values;

    invoke-direct {v0, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_0
.end method
