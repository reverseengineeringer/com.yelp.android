.class public final enum Lcom/yelp/android/serializable/LocalAdPlacement;
.super Ljava/lang/Enum;
.source "LocalAdPlacement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/LocalAdPlacement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/LocalAdPlacement;

.field public static final enum ABOVE_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

.field public static final enum ABOVE_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

.field public static final enum BELOW_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

.field public static final enum BELOW_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

.field public static final enum PHOTO_INSERT:Lcom/yelp/android/serializable/LocalAdPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    const-string/jumbo v1, "ABOVE_SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/LocalAdPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    .line 5
    new-instance v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    const-string/jumbo v1, "BELOW_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/LocalAdPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    .line 6
    new-instance v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    const-string/jumbo v1, "ABOVE_BIZ_REVIEW"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/LocalAdPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

    .line 7
    new-instance v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    const-string/jumbo v1, "BELOW_BIZ_REVIEW"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/LocalAdPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

    .line 8
    new-instance v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    const-string/jumbo v1, "PHOTO_INSERT"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/serializable/LocalAdPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->PHOTO_INSERT:Lcom/yelp/android/serializable/LocalAdPlacement;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/serializable/LocalAdPlacement;

    sget-object v1, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/LocalAdPlacement;->PHOTO_INSERT:Lcom/yelp/android/serializable/LocalAdPlacement;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->$VALUES:[Lcom/yelp/android/serializable/LocalAdPlacement;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/LocalAdPlacement;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAdPlacement;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/LocalAdPlacement;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/serializable/LocalAdPlacement;->$VALUES:[Lcom/yelp/android/serializable/LocalAdPlacement;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/LocalAdPlacement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/LocalAdPlacement;

    return-object v0
.end method
