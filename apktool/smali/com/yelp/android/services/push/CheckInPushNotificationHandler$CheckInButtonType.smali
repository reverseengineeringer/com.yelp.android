.class public enum Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;
.super Ljava/lang/Enum;
.source "CheckInPushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

.field public static final enum COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

.field public static final enum LIKE:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;


# instance fields
.field private mButtonIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType$1;

    const-string/jumbo v1, "COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    .line 68
    new-instance v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    const-string/jumbo v1, "LIKE"

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInLike:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;)V

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->LIKE:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->LIKE:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->$VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->mButtonIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/services/push/b;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->$VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    invoke-virtual {v0}, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    return-object v0
.end method


# virtual methods
.method public getButtonIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->mButtonIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-object v0
.end method
