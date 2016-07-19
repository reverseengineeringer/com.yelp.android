.class public final enum Lcom/yelp/android/ui/activities/feed/FeedItemType;
.super Ljava/lang/Enum;
.source "FeedItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final CHECK_IN_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum CHECK_IN_GROUPED_BY_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum EVENT_CREATED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum EVENT_CREATED_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum EVENT_SUBSCRIPTION_GROUPED_BY_EVENT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final FOLLOWING_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final FRIEND_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final MAIN_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final ME_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final NEARBY_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum RESERVATION_SEARCH:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum REVIEW_DRAFT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum ROTD:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum TALK_POST:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum TALK_POST_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum UPCOMING_EVENT_GROUPED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final USER_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum USER_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum USER_PHOTO_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum WEEKLY:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field private static sFeedTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedType;",
            "[",
            "Lcom/yelp/android/ui/activities/feed/FeedItemType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItemTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BOOKMARK"

    const-string/jumbo v2, "bookmark"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BOOKMARK_GROUPED_BY_USER"

    const-string/jumbo v2, "bookmark_grouped_by_user"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    const-string/jumbo v2, "business_photo"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS"

    const-string/jumbo v2, "business_photo_grouped_by_user_business"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BUSINESS_RECOMMENDATION"

    const-string/jumbo v2, "business_recommendation"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 17
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "CHECK_IN"

    const/4 v2, 0x5

    const-string/jumbo v3, "check_in"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "CHECK_IN_GROUPED_BY_BUSINESS"

    const/4 v2, 0x6

    const-string/jumbo v3, "check_in_grouped_by_business"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN_GROUPED_BY_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "EVENT_CREATED"

    const/4 v2, 0x7

    const-string/jumbo v3, "event_created"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "EVENT_CREATED_GROUPED_BY_USER"

    const/16 v2, 0x8

    const-string/jumbo v3, "event_created_grouped_by_user"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 21
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "EVENT_SUBSCRIPTION"

    const/16 v2, 0x9

    const-string/jumbo v3, "event_subscription"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 22
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "EVENT_SUBSCRIPTION_GROUPED_BY_EVENT"

    const/16 v2, 0xa

    const-string/jumbo v3, "event_subscription_grouped_by_event"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION_GROUPED_BY_EVENT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "QUICKTIP"

    const/16 v2, 0xb

    const-string/jumbo v3, "quicktip"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 24
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "REVIEW"

    const/16 v2, 0xc

    const-string/jumbo v3, "review"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 25
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "REVIEW_DRAFT"

    const/16 v2, 0xd

    const-string/jumbo v3, "review_draft"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW_DRAFT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "ROTD"

    const/16 v2, 0xe

    const-string/jumbo v3, "rotd"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ROTD:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "RESERVATION_SEARCH"

    const/16 v2, 0xf

    const-string/jumbo v3, "reservation_search"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->RESERVATION_SEARCH:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "TALK_POST"

    const/16 v2, 0x10

    const-string/jumbo v3, "talk_post"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 30
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "TALK_POST_GROUPED_BY_USER"

    const/16 v2, 0x11

    const-string/jumbo v3, "talk_post_grouped_by_user"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "UPCOMING_EVENT_GROUPED"

    const/16 v2, 0x12

    const-string/jumbo v3, "upcoming_event_grouped"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->UPCOMING_EVENT_GROUPED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "USER_PHOTO"

    const/16 v2, 0x13

    const-string/jumbo v3, "user_photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "USER_PHOTO_GROUPED_BY_USER"

    const/16 v2, 0x14

    const-string/jumbo v3, "user_photo_grouped_by_user"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 34
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "VIDEO"

    const/16 v2, 0x15

    const-string/jumbo v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 35
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "WEEKLY"

    const/16 v2, 0x16

    const-string/jumbo v3, "weekly"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->WEEKLY:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 37
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "YNRA"

    const/16 v2, 0x17

    const-string/jumbo v3, "ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 11
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN_GROUPED_BY_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION_GROUPED_BY_EVENT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW_DRAFT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ROTD:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->RESERVATION_SEARCH:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->UPCOMING_EVENT_GROUPED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->WEEKLY:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION_GROUPED_BY_EVENT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->FRIEND_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 58
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->RESERVATION_SEARCH:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ROTD:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->UPCOMING_EVENT_GROUPED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->WEEKLY:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->NEARBY_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION_GROUPED_BY_EVENT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->FOLLOWING_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 85
    new-array v0, v6, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN_GROUPED_BY_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 89
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN_GROUPED_BY_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_CREATED_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->EVENT_SUBSCRIPTION_GROUPED_BY_EVENT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->RESERVATION_SEARCH:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ROTD:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->TALK_POST_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->UPCOMING_EVENT_GROUPED:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->WEEKLY:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->MAIN_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 115
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW_DRAFT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->YNRA:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ME_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 128
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK_GROUPED_BY_USER:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    .line 145
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->NEARBY_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->FRIEND_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FOLLOWING:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->FOLLOWING_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->MAIN_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ME_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_FEED_ITEM_TYPES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->mItemTypeName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static getFeedItemTypes(Lcom/yelp/android/ui/activities/feed/FeedType;)[Lcom/yelp/android/ui/activities/feed/FeedItemType;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->sFeedTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedItemType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/feed/FeedItemType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/feed/FeedItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->mItemTypeName:Ljava/lang/String;

    return-object v0
.end method
