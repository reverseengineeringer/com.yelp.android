.class public final Lcom/yelp/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/common/collect/MapMaker$StrongValueReference;,
        Lcom/yelp/common/collect/MapMaker$SoftValueReference;,
        Lcom/yelp/common/collect/MapMaker$WeakValueReference;,
        Lcom/yelp/common/collect/MapMaker$LinkedWeakEntry;,
        Lcom/yelp/common/collect/MapMaker$WeakEntry;,
        Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;,
        Lcom/yelp/common/collect/MapMaker$SoftEntry;,
        Lcom/yelp/common/collect/MapMaker$LinkedStrongEntry;,
        Lcom/yelp/common/collect/MapMaker$StrongEntry;,
        Lcom/yelp/common/collect/MapMaker$a;,
        Lcom/yelp/common/collect/MapMaker$QueueHolder;,
        Lcom/yelp/common/collect/MapMaker$ComputationExceptionReference;,
        Lcom/yelp/common/collect/MapMaker$NullOutputExceptionReference;,
        Lcom/yelp/common/collect/MapMaker$b;,
        Lcom/yelp/common/collect/MapMaker$StrategyImpl;,
        Lcom/yelp/common/collect/MapMaker$Strength;
    }
.end annotation


# static fields
.field private static final COMPUTING:Lcom/yelp/common/collect/MapMaker$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/MapMaker$b",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

.field private expirationNanos:J

.field private keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

.field private useCustomMap:Z

.field private valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 751
    new-instance v0, Lcom/yelp/common/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/MapMaker$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 91
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/common/collect/MapMaker;->expirationNanos:J

    .line 94
    new-instance v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    invoke-direct {v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;-><init>()V

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yelp/common/collect/MapMaker;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/yelp/common/collect/MapMaker;->expirationNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/yelp/common/collect/MapMaker;)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    return-object v0
.end method

.method static synthetic access$500()Lcom/yelp/common/collect/MapMaker$b;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/MapMaker$b;

    return-object v0
.end method

.method static synthetic access$600()Lcom/yelp/common/collect/MapMaker$b;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->computing()Lcom/yelp/common/collect/MapMaker$b;

    move-result-object v0

    return-object v0
.end method

.method private static computing()Lcom/yelp/common/collect/MapMaker$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/common/collect/MapMaker$b",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 771
    sget-object v0, Lcom/yelp/common/collect/MapMaker;->COMPUTING:Lcom/yelp/common/collect/MapMaker$b;

    return-object v0
.end method

.method private setKeyStrength(Lcom/yelp/common/collect/MapMaker$Strength;)Lcom/yelp/common/collect/MapMaker;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/yelp/common/collect/MapMaker$Strength;->STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker;->keyStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/common/collect/MapMaker;->useCustomMap:Z

    .line 184
    return-object p0
.end method

.method private setValueStrength(Lcom/yelp/common/collect/MapMaker$Strength;)Lcom/yelp/common/collect/MapMaker;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/yelp/common/collect/MapMaker$Strength;->STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker;->valueStrength:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/common/collect/MapMaker;->useCustomMap:Z

    .line 238
    return-object p0
.end method


# virtual methods
.method public concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->concurrencyLevel(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    .line 139
    return-object p0
.end method

.method public expiration(JLjava/util/concurrent/TimeUnit;)Lcom/yelp/common/collect/MapMaker;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 256
    iget-wide v0, p0, Lcom/yelp/common/collect/MapMaker;->expirationNanos:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expiration time of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yelp/common/collect/MapMaker;->expirationNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ns was already set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/common/collect/MapMaker;->expirationNanos:J

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/common/collect/MapMaker;->useCustomMap:Z

    .line 265
    return-object p0
.end method

.method public initialCapacity(I)Lcom/yelp/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->initialCapacity(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    .line 115
    return-object p0
.end method

.method public makeComputingMap(Lcom/yelp/common/base/d;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/base/d",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;-><init>(Lcom/yelp/common/collect/MapMaker;Lcom/yelp/common/base/d;)V

    iget-object v0, v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/yelp/common/collect/MapMaker;->useCustomMap:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl;-><init>(Lcom/yelp/common/collect/MapMaker;)V

    iget-object v0, v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    iget-object v3, p0, Lcom/yelp/common/collect/MapMaker;->builder:Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;

    invoke-virtual {v3}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Builder;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto :goto_0
.end method

.method public softKeys()Lcom/yelp/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->SOFT:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/yelp/common/collect/MapMaker;->setKeyStrength(Lcom/yelp/common/collect/MapMaker$Strength;)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softValues()Lcom/yelp/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->SOFT:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/yelp/common/collect/MapMaker;->setValueStrength(Lcom/yelp/common/collect/MapMaker$Strength;)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/yelp/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->WEAK:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/yelp/common/collect/MapMaker;->setKeyStrength(Lcom/yelp/common/collect/MapMaker$Strength;)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/yelp/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->WEAK:Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/yelp/common/collect/MapMaker;->setValueStrength(Lcom/yelp/common/collect/MapMaker$Strength;)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
