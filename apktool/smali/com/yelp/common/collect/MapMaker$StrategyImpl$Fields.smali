.class Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;
.super Ljava/lang/Object;
.source "MapMaker.java"


# static fields
.field static final expirationNanos:Ljava/lang/reflect/Field;

.field static final internals:Ljava/lang/reflect/Field;

.field static final keyStrength:Ljava/lang/reflect/Field;

.field static final map:Ljava/lang/reflect/Field;

.field static final valueStrength:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 703
    const-string/jumbo v0, "keyStrength"

    invoke-static {v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    .line 704
    const-string/jumbo v0, "valueStrength"

    invoke-static {v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    .line 705
    const-string/jumbo v0, "expirationNanos"

    invoke-static {v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    .line 706
    const-string/jumbo v0, "internals"

    invoke-static {v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    .line 707
    const-string/jumbo v0, "map"

    invoke-static {v0}, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 711
    :try_start_0
    const-class v0, Lcom/yelp/common/collect/MapMaker$StrategyImpl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 712
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    return-object v0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
