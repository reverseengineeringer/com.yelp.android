.class public final enum Lcom/yelp/android/serializable/SearchLocation$Type;
.super Ljava/lang/Enum;
.source "SearchLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/SearchLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/SearchLocation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/SearchLocation$Type;

.field public static final enum COORDINATE:Lcom/yelp/android/serializable/SearchLocation$Type;

.field public static final enum REGION:Lcom/yelp/android/serializable/SearchLocation$Type;

.field public static final enum TEXT:Lcom/yelp/android/serializable/SearchLocation$Type;


# instance fields
.field public apiString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/yelp/android/serializable/SearchLocation$Type;

    const-string/jumbo v1, "TEXT"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/SearchLocation$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/SearchLocation$Type;->TEXT:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 17
    new-instance v0, Lcom/yelp/android/serializable/SearchLocation$Type;

    const-string/jumbo v1, "COORDINATE"

    const-string/jumbo v2, "coordinate"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/SearchLocation$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/SearchLocation$Type;->COORDINATE:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 18
    new-instance v0, Lcom/yelp/android/serializable/SearchLocation$Type;

    const-string/jumbo v1, "REGION"

    const-string/jumbo v2, "region"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/SearchLocation$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/SearchLocation$Type;->REGION:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/SearchLocation$Type;

    sget-object v1, Lcom/yelp/android/serializable/SearchLocation$Type;->TEXT:Lcom/yelp/android/serializable/SearchLocation$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/SearchLocation$Type;->COORDINATE:Lcom/yelp/android/serializable/SearchLocation$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/SearchLocation$Type;->REGION:Lcom/yelp/android/serializable/SearchLocation$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/SearchLocation$Type;->$VALUES:[Lcom/yelp/android/serializable/SearchLocation$Type;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/yelp/android/serializable/SearchLocation$Type;->apiString:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static fromApiString(Ljava/lang/String;)Lcom/yelp/android/serializable/SearchLocation$Type;
    .locals 5

    .prologue
    .line 27
    invoke-static {}, Lcom/yelp/android/serializable/SearchLocation$Type;->values()[Lcom/yelp/android/serializable/SearchLocation$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 28
    iget-object v4, v0, Lcom/yelp/android/serializable/SearchLocation$Type;->apiString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    :goto_1
    return-object v0

    .line 27
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/SearchLocation$Type;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/yelp/android/serializable/SearchLocation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchLocation$Type;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/SearchLocation$Type;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/serializable/SearchLocation$Type;->$VALUES:[Lcom/yelp/android/serializable/SearchLocation$Type;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/SearchLocation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/SearchLocation$Type;

    return-object v0
.end method
