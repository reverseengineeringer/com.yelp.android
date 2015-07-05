.class public final enum Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;
.super Ljava/lang/Enum;
.source "DealPurchase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

.field public static final enum REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

.field public static final enum USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

.field public static final enum USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    const-string/jumbo v1, "USABLE_FULLPRICE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    .line 29
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    const-string/jumbo v1, "USABLE_EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    .line 34
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    const-string/jumbo v1, "REDEEMED"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->$VALUES:[Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->$VALUES:[Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    return-object v0
.end method
