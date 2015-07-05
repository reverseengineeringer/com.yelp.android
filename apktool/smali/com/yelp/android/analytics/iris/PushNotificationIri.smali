.class public final enum Lcom/yelp/android/analytics/iris/PushNotificationIri;
.super Ljava/lang/Enum;
.source "PushNotificationIri.java"

# interfaces
.implements Lcom/yelp/android/analytics/iris/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/PushNotificationIri;",
        ">;",
        "Lcom/yelp/android/analytics/iris/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationCheckInCommentComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationCheckInCommentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationCheckInCommentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationCheckInLikeComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationCheckInLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationCheckInLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationComplimentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationComplimentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationEventDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationEventOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationFriendCheckInComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationFriendCheckInDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationFriendCheckInLike:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationFriendCheckInOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationMessageDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationMessageOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationMessageReply:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationPhotoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationPhotoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationTipLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationTipLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationVideoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationVideoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

.field public static final enum PushNotificationWrongDeviceId:Lcom/yelp/android/analytics/iris/PushNotificationIri;


# instance fields
.field private final mAction:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field private final mIri:Ljava/lang/String;

.field private final mIsExcluded:Z

.field private final mIsSampled:Z

.field private final mLabel:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v1, "PushNotificationTipLikeOpen"

    const-string/jumbo v3, "push_notification/tip_like/open"

    sget-object v4, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->TIP_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v5, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationTipLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 15
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationTipLikeDelete"

    const-string/jumbo v6, "push_notification/tip_like/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->TIP_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationTipLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 17
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationEventOpen"

    const-string/jumbo v6, "push_notification/event/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->EVENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationEventOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 19
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationEventDelete"

    const-string/jumbo v6, "push_notification/event/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->EVENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationEventDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 21
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationMessageOpen"

    const-string/jumbo v6, "push_notification/message/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->MESSAGES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    move v5, v13

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 23
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationMessageReply"

    const/4 v5, 0x5

    const-string/jumbo v6, "push_notification/message/reply"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->MESSAGES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->REPLY_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageReply:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 25
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationMessageDelete"

    const/4 v5, 0x6

    const-string/jumbo v6, "push_notification/message/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->MESSAGES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 27
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationComplimentOpen"

    const/4 v5, 0x7

    const-string/jumbo v6, "push_notification/compliment/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->COMPLIMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationComplimentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 29
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationComplimentDelete"

    const/16 v5, 0x8

    const-string/jumbo v6, "push_notification/compliment/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->COMPLIMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationComplimentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 31
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationPhotoLikeOpen"

    const/16 v5, 0x9

    const-string/jumbo v6, "push_notification/photo_like/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->PHOTO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationPhotoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 33
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationPhotoLikeDelete"

    const/16 v5, 0xa

    const-string/jumbo v6, "push_notification/photo_like/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->PHOTO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationPhotoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 35
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationVideoLikeOpen"

    const/16 v5, 0xb

    const-string/jumbo v6, "push_notification/video_like/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->VIDEO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationVideoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 37
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationVideoLikeDelete"

    const/16 v5, 0xc

    const-string/jumbo v6, "push_notification/video_like/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->VIDEO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationVideoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 39
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationCheckInLikeOpen"

    const/16 v5, 0xd

    const-string/jumbo v6, "push_notification/check_in_like/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 41
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationCheckInLikeComment"

    const/16 v5, 0xe

    const-string/jumbo v6, "push_notification/check_in_like/comment"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->COMMENT_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 43
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationCheckInLikeDelete"

    const/16 v5, 0xf

    const-string/jumbo v6, "push_notification/check_in_like/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 45
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationCheckInCommentOpen"

    const/16 v5, 0x10

    const-string/jumbo v6, "push_notification/check_in_comment/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_COMMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 47
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationCheckInCommentComment"

    const/16 v5, 0x11

    const-string/jumbo v6, "push_notification/check_in_comment/comment"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_COMMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->COMMENT_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 49
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationCheckInCommentDelete"

    const/16 v5, 0x12

    const-string/jumbo v6, "push_notification/check_in_comment/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_COMMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 51
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationFriendCheckInOpen"

    const/16 v5, 0x13

    const-string/jumbo v6, "push_notification/friend_check_in/open"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 53
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationFriendCheckInComment"

    const/16 v5, 0x14

    const-string/jumbo v6, "push_notification/friend_check_in/comment"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->COMMENT_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 55
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationFriendCheckInLike"

    const/16 v5, 0x15

    const-string/jumbo v6, "push_notification/friend_check_in/like"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->LIKE_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInLike:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 57
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationFriendCheckInDelete"

    const/16 v5, 0x16

    const-string/jumbo v6, "push_notification/friend_check_in/delete"

    sget-object v7, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v8, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 59
    new-instance v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    const-string/jumbo v4, "PushNotificationWrongDeviceId"

    const/16 v5, 0x17

    const-string/jumbo v6, "push_notification/dropped/wrong_device_id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;ZZ)V

    sput-object v3, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationWrongDeviceId:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 11
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/PushNotificationIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationTipLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationTipLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationEventOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationEventDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageReply:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationComplimentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationComplimentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationPhotoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationPhotoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationVideoLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationVideoLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInLikeDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationCheckInCommentDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInOpen:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInComment:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInLike:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationFriendCheckInDelete:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationWrongDeviceId:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->$VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/analytics/iris/PushNotificationIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;ZZ)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;",
            "Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mIri:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mAction:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 76
    iput-object p5, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mLabel:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    .line 77
    iput-boolean p6, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mIsExcluded:Z

    .line 78
    iput-boolean p7, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mIsSampled:Z

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->$VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/PushNotificationIri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/PushNotificationIri;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->EVENT:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method

.method public getGaCustomDimenLinks()[Lcom/yelp/android/analytics/c;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->EMPTY_ARRAY:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-object v0
.end method

.method public getGoogleAnalyticsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mAction:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAnalyticsCategory()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->PUSH_NOTIFICATION:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method

.method public getGoogleAnalyticsLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mLabel:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIriName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mIri:Ljava/lang/String;

    return-object v0
.end method

.method public isExcludedFromGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mIsExcluded:Z

    return v0
.end method

.method public isSampledInGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->mIsSampled:Z

    return v0
.end method
