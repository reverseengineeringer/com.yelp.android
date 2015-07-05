.class public final enum Lcom/yelp/android/serializable/LocalAdType;
.super Ljava/lang/Enum;
.source "LocalAdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/LocalAdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/LocalAdType;

.field public static final enum CUSTOM_CREATIVE:Lcom/yelp/android/serializable/LocalAdType;

.field public static final enum MOBILE_SEARCH:Lcom/yelp/android/serializable/LocalAdType;

.field public static final enum REVIEW:Lcom/yelp/android/serializable/LocalAdType;

.field public static final enum SPECIALTY:Lcom/yelp/android/serializable/LocalAdType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/yelp/android/serializable/LocalAdType;

    const-string/jumbo v1, "REVIEW"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/LocalAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdType;->REVIEW:Lcom/yelp/android/serializable/LocalAdType;

    .line 5
    new-instance v0, Lcom/yelp/android/serializable/LocalAdType;

    const-string/jumbo v1, "SPECIALTY"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/LocalAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdType;->SPECIALTY:Lcom/yelp/android/serializable/LocalAdType;

    .line 6
    new-instance v0, Lcom/yelp/android/serializable/LocalAdType;

    const-string/jumbo v1, "CUSTOM_CREATIVE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/LocalAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdType;->CUSTOM_CREATIVE:Lcom/yelp/android/serializable/LocalAdType;

    .line 7
    new-instance v0, Lcom/yelp/android/serializable/LocalAdType;

    const-string/jumbo v1, "MOBILE_SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/LocalAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdType;->MOBILE_SEARCH:Lcom/yelp/android/serializable/LocalAdType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/LocalAdType;

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->REVIEW:Lcom/yelp/android/serializable/LocalAdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->SPECIALTY:Lcom/yelp/android/serializable/LocalAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->CUSTOM_CREATIVE:Lcom/yelp/android/serializable/LocalAdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->MOBILE_SEARCH:Lcom/yelp/android/serializable/LocalAdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/LocalAdType;->$VALUES:[Lcom/yelp/android/serializable/LocalAdType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/LocalAdType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/serializable/LocalAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAdType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/LocalAdType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/serializable/LocalAdType;->$VALUES:[Lcom/yelp/android/serializable/LocalAdType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/LocalAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/LocalAdType;

    return-object v0
.end method
