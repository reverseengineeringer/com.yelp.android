.class public final enum Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;
.super Ljava/lang/Enum;
.source "AdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/adjust/AdjustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YelpAdjustEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum ADD_BOOKMARK:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum CHECKED_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum DEEPLINK_CRITEO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum LOG_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum PLATFORM_ORDER:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum REVIEW_SAVED:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum SAVE_PHOTO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum SEARCH:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum SIGNED_UP:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

.field public static final enum YDID_SET:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;


# instance fields
.field private mEvent:Lcom/adjust/sdk/AdjustEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "ADD_BOOKMARK"

    const-string/jumbo v2, "qqzv6y"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->ADD_BOOKMARK:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 30
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "SAVE_PHOTO"

    const-string/jumbo v2, "x8cc7k"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SAVE_PHOTO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 31
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "CHECKED_IN"

    const-string/jumbo v2, "lyi71l"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->CHECKED_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 32
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "LOG_IN"

    const-string/jumbo v2, "dyael4"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->LOG_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 33
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "PLATFORM_ORDER"

    const-string/jumbo v2, "opjf66"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->PLATFORM_ORDER:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 34
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "REVIEW_SAVED"

    const/4 v2, 0x5

    const-string/jumbo v3, "8uz0h4"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->REVIEW_SAVED:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 35
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "SEARCH"

    const/4 v2, 0x6

    const-string/jumbo v3, "1jqz5y"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SEARCH:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 36
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "SIGNED_UP"

    const/4 v2, 0x7

    const-string/jumbo v3, "ddxego"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SIGNED_UP:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 37
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "DEEPLINK_CRITEO"

    const/16 v2, 0x8

    const-string/jumbo v3, "qy5r6q"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->DEEPLINK_CRITEO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 38
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    const-string/jumbo v1, "YDID_SET"

    const/16 v2, 0x9

    const-string/jumbo v3, "4q7lvc"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->YDID_SET:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->ADD_BOOKMARK:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SAVE_PHOTO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->CHECKED_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->LOG_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->PLATFORM_ORDER:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->REVIEW_SAVED:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SEARCH:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SIGNED_UP:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->DEEPLINK_CRITEO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->YDID_SET:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->$VALUES:[Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->mEvent:Lcom/adjust/sdk/AdjustEvent;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->$VALUES:[Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    return-object v0
.end method


# virtual methods
.method public getAdjustEvent()Lcom/adjust/sdk/AdjustEvent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->mEvent:Lcom/adjust/sdk/AdjustEvent;

    return-object v0
.end method
