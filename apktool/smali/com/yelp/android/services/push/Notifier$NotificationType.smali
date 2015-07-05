.class public enum Lcom/yelp/android/services/push/Notifier$NotificationType;
.super Ljava/lang/Enum;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/services/push/Notifier$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Badge:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Compliments:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Events:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum PhotoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum QuickTip:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Royalty:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field public static final enum VideoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;


# instance fields
.field private final mDeleteIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field final mIdentifiers:[Ljava/lang/String;

.field private final mOpenIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v2, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 437
    new-instance v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v1, "Unknown"

    new-array v3, v9, [Ljava/lang/String;

    invoke-direct {v0, v1, v9, v3}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 438
    new-instance v0, Lcom/yelp/android/services/push/Notifier$NotificationType$1;

    const-string/jumbo v1, "Checkin"

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v4, "check_in"

    aput-object v4, v3, v9

    const-string/jumbo v4, "check_ins"

    aput-object v4, v3, v10

    invoke-direct {v0, v1, v10, v3}, Lcom/yelp/android/services/push/Notifier$NotificationType$1;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 449
    new-instance v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v1, "Badge"

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "badge"

    aput-object v4, v3, v9

    invoke-direct {v0, v1, v11, v3}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Badge:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 450
    new-instance v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v1, "Royalty"

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "profile"

    aput-object v4, v3, v9

    invoke-direct {v0, v1, v12, v3}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Royalty:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 452
    new-instance v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v1, "PhotoLikes"

    sget-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationPhotoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationPhotoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v6, "alerts"

    aput-object v6, v5, v9

    const-string/jumbo v6, "biz_photos"

    aput-object v6, v5, v10

    const-string/jumbo v6, "photo"

    aput-object v6, v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->PhotoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 455
    new-instance v3, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v4, "VideoLikes"

    const/4 v5, 0x5

    sget-object v6, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationVideoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationVideoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v0, "biz_videos"

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/services/push/Notifier$NotificationType;->VideoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 457
    new-instance v3, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v4, "Compliments"

    const/4 v5, 0x6

    sget-object v6, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationComplimentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationComplimentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v0, "compliments"

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/services/push/Notifier$NotificationType;->Compliments:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 459
    new-instance v3, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v4, "Messages"

    const/4 v5, 0x7

    sget-object v6, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v0, "message"

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/services/push/Notifier$NotificationType;->Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 461
    new-instance v3, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v4, "QuickTip"

    const/16 v5, 0x8

    sget-object v6, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationTipLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationTipLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v0, "quicktip"

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/services/push/Notifier$NotificationType;->QuickTip:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 470
    new-instance v3, Lcom/yelp/android/services/push/Notifier$NotificationType;

    const-string/jumbo v4, "Events"

    const/16 v5, 0x9

    sget-object v6, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationEventOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationEventDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v0, "events"

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/services/push/Notifier$NotificationType;->Events:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 435
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/services/push/Notifier$NotificationType;

    sget-object v1, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/services/push/Notifier$NotificationType;->Badge:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/services/push/Notifier$NotificationType;->Royalty:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yelp/android/services/push/Notifier$NotificationType;->PhotoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->VideoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->Compliments:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->QuickTip:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->Events:Lcom/yelp/android/services/push/Notifier$NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->$VALUES:[Lcom/yelp/android/services/push/Notifier$NotificationType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 482
    iput-object p3, p0, Lcom/yelp/android/services/push/Notifier$NotificationType;->mOpenIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 483
    iput-object p4, p0, Lcom/yelp/android/services/push/Notifier$NotificationType;->mDeleteIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 484
    iput-object p5, p0, Lcom/yelp/android/services/push/Notifier$NotificationType;->mIdentifiers:[Ljava/lang/String;

    .line 485
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 478
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;[Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/yelp/android/services/push/k;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public static typeFromUri(Ljava/util/List;)Lcom/yelp/android/services/push/Notifier$NotificationType;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yelp/android/services/push/Notifier$NotificationType;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-static {}, Lcom/yelp/android/services/push/Notifier$NotificationType;->values()[Lcom/yelp/android/services/push/Notifier$NotificationType;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 489
    iget-object v6, v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->mIdentifiers:[Ljava/lang/String;

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 490
    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 495
    :goto_2
    return-object v0

    .line 489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 495
    :cond_2
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/push/Notifier$NotificationType;
    .locals 1

    .prologue
    .line 435
    const-class v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/push/Notifier$NotificationType;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->$VALUES:[Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {v0}, [Lcom/yelp/android/services/push/Notifier$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/push/Notifier$NotificationType;

    return-object v0
.end method


# virtual methods
.method public getDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$NotificationType;->mDeleteIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-object v0
.end method

.method public getOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$NotificationType;->mOpenIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-object v0
.end method
