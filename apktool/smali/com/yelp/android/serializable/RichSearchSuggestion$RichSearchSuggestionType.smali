.class public final enum Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
.super Ljava/lang/Enum;
.source "RichSearchSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

.field public static final enum BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

.field public static final enum CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

.field public static final enum CHAIN:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

.field public static final enum COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;


# instance fields
.field private final mTypeAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    const-string/jumbo v1, "COMMON"

    const-string/jumbo v2, "common"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 20
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    const-string/jumbo v1, "CATEGORY"

    const-string/jumbo v2, "category"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 21
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    const-string/jumbo v1, "BUSINESS"

    const-string/jumbo v2, "business"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 22
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    const-string/jumbo v1, "CHAIN"

    const-string/jumbo v2, "chain"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CHAIN:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CHAIN:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->$VALUES:[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->parseRichSearchSuggestionType(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    return-object v0
.end method

.method private static parseRichSearchSuggestionType(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->values()[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    iget-object v4, v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->mTypeAsString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->$VALUES:[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    return-object v0
.end method
