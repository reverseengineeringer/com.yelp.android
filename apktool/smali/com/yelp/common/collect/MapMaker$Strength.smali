.class abstract enum Lcom/yelp/common/collect/MapMaker$Strength;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/common/collect/MapMaker$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/common/collect/MapMaker$Strength;

.field public static final enum SOFT:Lcom/yelp/common/collect/MapMaker$Strength;

.field public static final enum STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

.field public static final enum WEAK:Lcom/yelp/common/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Lcom/yelp/common/collect/MapMaker$Strength$1;

    const-string/jumbo v1, "WEAK"

    invoke-direct {v0, v1, v2}, Lcom/yelp/common/collect/MapMaker$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->WEAK:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 364
    new-instance v0, Lcom/yelp/common/collect/MapMaker$Strength$2;

    const-string/jumbo v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/yelp/common/collect/MapMaker$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->SOFT:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 396
    new-instance v0, Lcom/yelp/common/collect/MapMaker$Strength$3;

    const-string/jumbo v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lcom/yelp/common/collect/MapMaker$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

    .line 331
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/yelp/common/collect/MapMaker$Strength;->WEAK:Lcom/yelp/common/collect/MapMaker$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/common/collect/MapMaker$Strength;->SOFT:Lcom/yelp/common/collect/MapMaker$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/common/collect/MapMaker$Strength;->STRONG:Lcom/yelp/common/collect/MapMaker$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->$VALUES:[Lcom/yelp/common/collect/MapMaker$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/common/collect/MapMaker$1;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Lcom/yelp/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/common/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 331
    const-class v0, Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method public static values()[Lcom/yelp/common/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/yelp/common/collect/MapMaker$Strength;->$VALUES:[Lcom/yelp/common/collect/MapMaker$Strength;

    invoke-virtual {v0}, [Lcom/yelp/common/collect/MapMaker$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/common/collect/MapMaker$Strength;

    return-object v0
.end method


# virtual methods
.method abstract copyEntry(Ljava/lang/Object;Lcom/yelp/common/collect/MapMaker$a;Lcom/yelp/common/collect/MapMaker$a;)Lcom/yelp/common/collect/MapMaker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract equal(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method abstract hash(Ljava/lang/Object;)I
.end method

.method abstract newEntry(Lcom/yelp/common/collect/CustomConcurrentHashMap$b;Ljava/lang/Object;ILcom/yelp/common/collect/MapMaker$a;)Lcom/yelp/common/collect/MapMaker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$b",
            "<TK;TV;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;>;TK;I",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;)",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lcom/yelp/common/collect/MapMaker$a;Ljava/lang/Object;)Lcom/yelp/common/collect/MapMaker$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;TV;)",
            "Lcom/yelp/common/collect/MapMaker$b",
            "<TK;TV;>;"
        }
    .end annotation
.end method
