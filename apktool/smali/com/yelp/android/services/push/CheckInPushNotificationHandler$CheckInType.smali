.class public enum Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
.super Ljava/lang/Enum;
.source "CheckInPushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/CheckInPushNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "CheckInType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

.field public static final enum COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

.field public static final enum FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

.field public static final enum LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

.field public static final enum RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;


# instance fields
.field private final mDeleteIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mNotificationId:Ljava/lang/String;

.field private final mNotificationSummaryResource:I

.field private final mOpenIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mReceivedIri:Lcom/yelp/android/analytics/iris/EventIri;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 228
    new-instance v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    const-string/jumbo v1, "RANKINGS"

    const v3, 0x7f070367

    const-string/jumbo v4, ""

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 229
    new-instance v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    const-string/jumbo v4, "LIKES"

    const v6, 0x7f070675

    const-string/jumbo v7, "notification_checkin_likes"

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInLikeOpen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInLikeDelete:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v10, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInLikeReceived:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 235
    new-instance v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    const-string/jumbo v4, "COMMENTS"

    const v6, 0x7f070673

    const-string/jumbo v7, "notification_checkin_comments"

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInCommentOpen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInCommentDelete:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v10, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInCommentReceived:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 241
    new-instance v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType$1;

    const-string/jumbo v4, "FRIENDS"

    const v6, 0x7f07066b

    const-string/jumbo v7, "notification_checkin_friends"

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationFriendCheckInOpen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationFriendCheckInDelete:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v10, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationFriendCheckInReceived:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType$1;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->$VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput p3, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationSummaryResource:I

    .line 296
    iput-object p4, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationId:Ljava/lang/String;

    .line 297
    iput-object p5, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mOpenIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 298
    iput-object p6, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mDeleteIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 299
    iput-object p7, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mReceivedIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$1;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct/range {p0 .. p7}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/x$a;
    .locals 1

    .prologue
    .line 225
    invoke-static/range {p0 .. p8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/x$a;

    move-result-object v0

    return-object v0
.end method

.method private static createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/x$a;
    .locals 7

    .prologue
    .line 426
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 428
    const-string/jumbo v0, "extra_check_in_notification_button"

    invoke-static {v0, p6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p5

    move v2, p4

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 441
    new-instance v1, Landroid/support/v4/app/x$a;

    invoke-virtual {p0, p8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p7, v2, v0}, Landroid/support/v4/app/x$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method private static generateId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/yelp/android/services/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
    .locals 2

    .prologue
    .line 303
    const-string/jumbo v0, "rankings"

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 316
    :goto_0
    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "is_comment"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    goto :goto_0

    .line 310
    :cond_1
    const-string/jumbo v0, "ypn"

    const-string/jumbo v1, "ref"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    goto :goto_0

    .line 316
    :cond_2
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    goto :goto_0
.end method

.method public static getIdForCheckInFriends()I
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    iget-object v0, v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->generateId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNotificationIdFromUri(Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 329
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v1

    .line 330
    iget-object v0, v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationId:Ljava/lang/String;

    .line 333
    sget-object v2, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$1;->a:[I

    invoke-virtual {v1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 339
    :goto_0
    invoke-static {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->generateId(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 337
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getPushNotificationDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 347
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getDeleteIri()Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method

.method public static getPushNotificationOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 343
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getOpenIri()Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method

.method public static getPushNotificationReceivedIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 351
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getReceivedIri()Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
    .locals 1

    .prologue
    .line 225
    const-class v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->$VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    invoke-virtual {v0}, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    return-object v0
.end method


# virtual methods
.method public getDeleteIri()Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mDeleteIri:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method public getNotificationButtons(Landroid/content/Context;Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/services/push/Notifier$NotificationType;",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/x$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 391
    const-string/jumbo v5, "action.COMMENT_BUTTON_CLEAR_NOTIFICATIONS"

    sget-object v6, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    const v7, 0x7f02018e

    const v8, 0x7f0701d7

    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object v3, p3

    move/from16 v4, p6

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/x$a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-object v9
.end method

.method public getNotificationSummaryResource()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationSummaryResource:I

    return v0
.end method

.method public getOpenIri()Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mOpenIri:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method public getReceivedIri()Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mReceivedIri:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method
