.class final Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final UNSET_CONCURRENCY_LEVEL:I = -0x1

.field private static final UNSET_INITIAL_CAPACITY:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 142
    iput v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public buildComputingMap(Lcom/yelp/common/collect/b;Lcom/yelp/common/base/g;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/collect/b",
            "<TK;TV;TE;>;",
            "Lcom/yelp/common/base/g",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    if-nez p2, :cond_1

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/yelp/common/collect/b;Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;Lcom/yelp/common/base/g;)V

    return-object v0
.end method

.method public buildMap(Lcom/yelp/common/collect/d;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/collect/d",
            "<TK;TV;TE;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, p1, p0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/yelp/common/collect/d;Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;
    .locals 3

    .prologue
    .line 183
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "concurrency level was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    if-gtz p1, :cond_1

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 190
    :cond_1
    iput p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    .line 191
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    goto :goto_0
.end method

.method public initialCapacity(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;
    .locals 3

    .prologue
    .line 154
    iget v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initial capacity was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-gez p1, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 161
    :cond_1
    iput p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 162
    return-object p0
.end method
