.class Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/yelp/common/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/base/d",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field final computingStrategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$a",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$a;Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;Lcom/yelp/common/base/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$a",
            "<TK;TV;TE;>;",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;",
            "Lcom/yelp/common/base/d",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2056
    invoke-direct {p0, p1, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$c;Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;)V

    .line 2057
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$a;

    .line 2058
    iput-object p3, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/yelp/common/base/d;

    .line 2059
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2072
    .line 2074
    if-nez p1, :cond_0

    .line 2075
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->hash(Ljava/lang/Object;)I

    move-result v5

    .line 2079
    invoke-virtual {p0, v5}, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v6

    .line 2081
    :cond_1
    :goto_0
    invoke-virtual {v6, p1, v5}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 2082
    if-nez v3, :cond_3

    .line 2084
    invoke-virtual {v6}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 2088
    :try_start_0
    invoke-virtual {v6, p1, v5}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 2089
    if-nez v0, :cond_7

    .line 2092
    iget v0, v6, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 2093
    add-int/lit8 v3, v0, 0x1

    iget v4, v6, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v4, :cond_2

    .line 2095
    invoke-virtual {v6}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2097
    :cond_2
    iget-object v4, v6, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2098
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, v5, v0

    .line 2099
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2100
    iget v8, v6, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2101
    iget-object v8, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$a;

    invoke-interface {v8, p1, v5, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$a;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2102
    invoke-virtual {v4, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2103
    iput v3, v6, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    move v0, v1

    .line 2106
    :goto_1
    invoke-virtual {v6}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 2109
    if-eqz v0, :cond_3

    .line 2113
    :try_start_1
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$a;

    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/yelp/common/base/d;

    invoke-interface {v0, p1, v3, v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$a;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/yelp/common/base/d;)Ljava/lang/Object;

    move-result-object v0

    .line 2114
    if-nez v0, :cond_5

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "compute() returned null unexpectedly"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2121
    :catchall_0
    move-exception v0

    .line 2122
    invoke-virtual {v6, v3, v5}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    throw v0

    .line 2106
    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0

    :cond_3
    move v4, v2

    .line 2133
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$a;

    invoke-interface {v0, v3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$a;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2134
    if-nez v0, :cond_4

    .line 2136
    invoke-virtual {v6, v3, v5}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2145
    if-eqz v4, :cond_1

    .line 2146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2145
    :cond_4
    if-eqz v4, :cond_5

    .line 2146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-object v0

    .line 2140
    :catch_0
    move-exception v0

    move v4, v1

    .line 2142
    goto :goto_2

    .line 2145
    :catchall_2
    move-exception v0

    if-eqz v4, :cond_6

    .line 2146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v0

    :cond_7
    move-object v3, v0

    move v0, v2

    goto :goto_1
.end method
