.class public final enum Lcom/yelp/android/services/ShareService$ShareObjectType;
.super Ljava/lang/Enum;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/services/ShareService$ShareObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/services/ShareService$ShareObjectType;

.field public static final enum CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

.field public static final enum PHOTO:Lcom/yelp/android/services/ShareService$ShareObjectType;

.field public static final enum REVIEW:Lcom/yelp/android/services/ShareService$ShareObjectType;

.field public static final enum TIP:Lcom/yelp/android/services/ShareService$ShareObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/services/ShareService$ShareObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->PHOTO:Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 58
    new-instance v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    const-string/jumbo v1, "CHECKIN"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/services/ShareService$ShareObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 59
    new-instance v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    const-string/jumbo v1, "TIP"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/services/ShareService$ShareObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->TIP:Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 60
    new-instance v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    const-string/jumbo v1, "REVIEW"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/services/ShareService$ShareObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->REVIEW:Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/services/ShareService$ShareObjectType;

    sget-object v1, Lcom/yelp/android/services/ShareService$ShareObjectType;->PHOTO:Lcom/yelp/android/services/ShareService$ShareObjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/services/ShareService$ShareObjectType;->TIP:Lcom/yelp/android/services/ShareService$ShareObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/services/ShareService$ShareObjectType;->REVIEW:Lcom/yelp/android/services/ShareService$ShareObjectType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->$VALUES:[Lcom/yelp/android/services/ShareService$ShareObjectType;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/ShareService$ShareObjectType;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/ShareService$ShareObjectType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->$VALUES:[Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {v0}, [Lcom/yelp/android/services/ShareService$ShareObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/ShareService$ShareObjectType;

    return-object v0
.end method
