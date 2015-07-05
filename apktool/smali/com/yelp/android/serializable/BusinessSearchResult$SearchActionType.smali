.class public final enum Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
.super Ljava/lang/Enum;
.source "BusinessSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

.field public static final enum Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

.field public static final enum Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;


# instance fields
.field private typeAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    const-string/jumbo v1, "Platform"

    const-string/jumbo v2, "platform"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    .line 27
    new-instance v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    const-string/jumbo v1, "Reservation"

    const-string/jumbo v2, "reservation"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    sget-object v1, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->$VALUES:[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->typeAsString:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->parseSearchActionType(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->typeAsString:Ljava/lang/String;

    return-object v0
.end method

.method private static parseSearchActionType(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->values()[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 37
    iget-object v4, v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->typeAsString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    :goto_1
    return-object v0

    .line 36
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->$VALUES:[Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method
