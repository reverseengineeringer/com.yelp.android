.class public enum Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
.super Ljava/lang/Enum;
.source "CheckInPushNotificationHandler.java"


# annotations
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
.field private final mDeleteIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field private final mNotificationId:Ljava/lang/String;

.field private final mNotificationSummaryResource:I

.field private final mOpenIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    const-string/jumbo v1, "RANKINGS"

    const v3, 0x7f070330

    const-string/jumbo v4, ""

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 180
    new-instance v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    const-string/jumbo v4, "LIKES"

    const v6, 0x7f0706a4

    const-string/jumbo v7, "notification_checkin_likes"

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V

    sput-object v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 183
    new-instance v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    const-string/jumbo v4, "COMMENTS"

    const v6, 0x7f0706a2

    const-string/jumbo v7, "notification_checkin_comments"

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V

    sput-object v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 186
    new-instance v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType$1;

    const-string/jumbo v4, "FRIENDS"

    const v6, 0x7f070690

    const-string/jumbo v7, "notification_checkin_friends"

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType$1;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V

    sput-object v3, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->$VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationSummaryResource:I

    .line 216
    iput-object p4, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationId:Ljava/lang/String;

    .line 217
    iput-object p5, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mOpenIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 218
    iput-object p6, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mDeleteIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/services/push/b;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct/range {p0 .. p6}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1

    .prologue
    .line 177
    invoke-static/range {p0 .. p8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method private static createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7

    .prologue
    .line 319
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 320
    const-string/jumbo v0, "extra_check_in_notification_button"

    invoke-static {v0, p6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p5

    move v2, p4

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/services/push/m;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 324
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {p0, p8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p7, v2, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method private static generateId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/yelp/android/services/v;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
    .locals 2

    .prologue
    .line 222
    const-string/jumbo v0, "rankings"

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->RANKINGS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    .line 234
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-static {}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "is_comment"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    goto :goto_0

    .line 228
    :cond_1
    const-string/jumbo v0, "ypn"

    const-string/jumbo v1, "ref"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    goto :goto_0

    .line 234
    :cond_2
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->LIKES:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    goto :goto_0
.end method

.method public static getIdForCheckInFriends()I
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->FRIENDS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    iget-object v0, v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->generateId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNotificationIdFromUri(Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 247
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v1

    .line 248
    iget-object v0, v1, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationId:Ljava/lang/String;

    .line 251
    sget-object v2, Lcom/yelp/android/services/push/b;->a:[I

    invoke-virtual {v1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    invoke-static {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->generateId(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 255
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

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getPushNotificationDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getDeleteIri()Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v0

    return-object v0
.end method

.method public static getPushNotificationOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 261
    invoke-static {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getOpenIri()Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->$VALUES:[Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    invoke-virtual {v0}, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    return-object v0
.end method


# virtual methods
.method public getDeleteIri()Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mDeleteIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

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
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 296
    const-string/jumbo v5, "action.COMMENT_BUTTON_CLEAR_NOTIFICATIONS"

    sget-object v6, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    const v7, 0x7f020130

    const v8, 0x7f070170

    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object v3, p3

    move/from16 v4, p6

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-object v9
.end method

.method public getNotificationSummaryResource()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mNotificationSummaryResource:I

    return v0
.end method

.method public getOpenIri()Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->mOpenIri:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-object v0
.end method
