.class final Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;I)V
    .locals 1

    .prologue
    .line 783
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 784
    invoke-virtual {p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 785
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1226
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_1

    .line 1227
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1230
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1231
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1234
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1239
    :cond_1
    return-void

    .line 1236
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 843
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_2

    .line 844
    invoke-virtual {p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 845
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 844
    :cond_0
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 849
    :cond_1
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 850
    if-eqz v3, :cond_0

    .line 854
    invoke-interface {v2, v3, p1}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 861
    :cond_2
    return v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 865
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 866
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_2

    .line 867
    iget-object v4, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 868
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    move v2, v0

    .line 869
    :goto_0
    if-ge v2, v5, :cond_2

    .line 870
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 871
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 876
    if-nez v6, :cond_1

    .line 870
    :cond_0
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 880
    :cond_1
    invoke-interface {v3, v6, p1}, Lcom/yelp/common/collect/d;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 881
    const/4 v0, 0x1

    .line 887
    :cond_2
    return v0

    .line 869
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method expand()V
    .locals 11

    .prologue
    .line 993
    iget-object v6, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 994
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    .line 995
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v7, v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 1013
    shl-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 1014
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 1015
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 1016
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_5

    .line 1020
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1022
    if-eqz v4, :cond_1

    .line 1023
    invoke-interface {v8, v4}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1024
    invoke-interface {v8, v4}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, v10

    .line 1027
    if-nez v2, :cond_2

    .line 1028
    invoke-virtual {v9, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1016
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 1037
    :goto_2
    if-eqz v2, :cond_3

    .line 1038
    invoke-interface {v8, v2}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v0

    and-int/2addr v0, v10

    .line 1039
    if-eq v0, v1, :cond_6

    move-object v1, v2

    .line 1037
    :goto_3
    invoke-interface {v8, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 1046
    :cond_3
    invoke-virtual {v9, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, v4

    .line 1049
    :goto_4
    if-eq v0, v3, :cond_1

    .line 1050
    invoke-interface {v8, v0}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_4

    .line 1052
    invoke-interface {v8, v0}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, v10

    .line 1053
    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1054
    invoke-interface {v8, v1, v0, v4}, Lcom/yelp/common/collect/d;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1049
    :cond_4
    invoke-interface {v8, v0}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 1062
    :cond_5
    iput-object v9, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_0

    :cond_6
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 834
    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x0

    .line 838
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    invoke-interface {v1, v0}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 812
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v0, :cond_2

    .line 813
    invoke-virtual {p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 814
    invoke-interface {v1, v0}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 813
    :cond_0
    invoke-interface {v1, v0}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_1
    invoke-interface {v1, v0}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_0

    .line 823
    invoke-interface {v1, v2, p1}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 805
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 788
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 945
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 946
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 948
    :try_start_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 949
    add-int/lit8 v3, v0, 0x1

    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 953
    :cond_0
    iget-object v4, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 954
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 956
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 959
    :goto_0
    if-eqz v1, :cond_3

    .line 960
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 961
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {v2, p1, v6}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 967
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 968
    if-eqz p4, :cond_1

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return-object v0

    .line 972
    :cond_1
    :try_start_1
    invoke-interface {v2, v1, p3}, Lcom/yelp/common/collect/d;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 959
    :cond_2
    :try_start_2
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 978
    :cond_3
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 979
    invoke-interface {v2, p1, p2, v0}, Lcom/yelp/common/collect/d;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 980
    invoke-interface {v2, v0, p3}, Lcom/yelp/common/collect/d;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 981
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 982
    iput v3, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 983
    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 1067
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1069
    :try_start_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v5, v0, -0x1

    .line 1070
    iget-object v6, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1071
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 1072
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 1074
    :goto_0
    if-eqz v3, :cond_3

    .line 1075
    invoke-interface {v4, v3}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1076
    invoke-interface {v4, v3}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v4, v0, p1}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1077
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    invoke-interface {v0, v3}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1081
    iget v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1082
    invoke-interface {v4, v3}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    .line 1083
    :goto_1
    if-eq v2, v3, :cond_1

    .line 1084
    invoke-interface {v4, v2}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1085
    if-eqz v8, :cond_0

    .line 1086
    invoke-interface {v4, v8, v2, v1}, Lcom/yelp/common/collect/d;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1083
    :cond_0
    invoke-interface {v4, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1091
    :cond_1
    invoke-virtual {v6, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1092
    iput v5, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return-object v0

    .line 1074
    :cond_2
    :try_start_1
    invoke-interface {v4, v3}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 1097
    :cond_3
    const/4 v0, 0x0

    .line 1099
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1104
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 1105
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1107
    :try_start_0
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v1, -0x1

    .line 1108
    iget-object v5, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1109
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1110
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1112
    :goto_0
    if-eqz v2, :cond_5

    .line 1113
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1114
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, p2, :cond_4

    if-eqz v7, :cond_4

    invoke-interface {v3, v7, p1}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1115
    iget-object v7, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v7, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    invoke-interface {v7, v2}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1116
    if-eq p3, v7, :cond_0

    if-eqz p3, :cond_3

    if-eqz v7, :cond_3

    invoke-interface {v3, v7, p3}, Lcom/yelp/common/collect/d;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1122
    :cond_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1123
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1124
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1125
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1126
    if-eqz v7, :cond_1

    .line 1127
    invoke-interface {v3, v7, v1, v0}, Lcom/yelp/common/collect/d;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1124
    :cond_1
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1132
    :cond_2
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1133
    iput v4, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    const/4 v0, 0x1

    .line 1143
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1112
    :cond_4
    :try_start_1
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1143
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method public removeEntry(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 1191
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1193
    :try_start_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v0, -0x1

    .line 1194
    iget-object v5, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1195
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    .line 1196
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 1198
    :goto_0
    if-eqz v2, :cond_3

    .line 1199
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1204
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1205
    :goto_1
    if-eq v1, v2, :cond_1

    .line 1206
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1207
    if-eqz v7, :cond_0

    .line 1208
    invoke-interface {v3, v7, v1, v0}, Lcom/yelp/common/collect/d;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1205
    :cond_0
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1213
    :cond_1
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1214
    iput v4, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    const/4 v0, 0x1

    .line 1221
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v0

    .line 1198
    :cond_2
    :try_start_1
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 1219
    :cond_3
    const/4 v0, 0x0

    .line 1221
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method public removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ITV;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1148
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 1149
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1151
    :try_start_0
    iget v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v1, -0x1

    .line 1152
    iget-object v5, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1153
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1154
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1156
    :goto_0
    if-eqz v2, :cond_5

    .line 1157
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1158
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1159
    if-eq v7, p3, :cond_0

    if-eqz p3, :cond_3

    invoke-interface {v3, v7, p3}, Lcom/yelp/common/collect/d;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1164
    :cond_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1165
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1166
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1167
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1168
    if-eqz v7, :cond_1

    .line 1169
    invoke-interface {v3, v7, v1, v0}, Lcom/yelp/common/collect/d;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1166
    :cond_1
    invoke-interface {v3, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1174
    :cond_2
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1175
    iput v4, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    const/4 v0, 0x1

    .line 1185
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1156
    :cond_4
    :try_start_1
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1185
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 919
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 920
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 922
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 923
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 924
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 929
    if-nez v1, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return-object v0

    .line 933
    :cond_0
    :try_start_1
    invoke-interface {v3, v2, p3}, Lcom/yelp/common/collect/d;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v0, v1

    goto :goto_1

    .line 922
    :cond_1
    :try_start_2
    invoke-interface {v3, v2}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 940
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 891
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v1, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/d;

    .line 892
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 894
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 895
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 896
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v2, p1, v3}, Lcom/yelp/common/collect/d;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 900
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 901
    if-nez v3, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return v0

    .line 905
    :cond_0
    :try_start_1
    invoke-interface {v2, v3, p3}, Lcom/yelp/common/collect/d;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    invoke-interface {v2, v1, p4}, Lcom/yelp/common/collect/d;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    const/4 v0, 0x1

    .line 914
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 894
    :cond_1
    :try_start_2
    invoke-interface {v2, v1}, Lcom/yelp/common/collect/d;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 914
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 797
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 798
    return-void
.end method
