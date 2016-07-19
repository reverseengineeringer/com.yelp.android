.class public final enum Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
.super Ljava/lang/Enum;
.source "FeedEventIriType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/FeedEventIriType$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedEventIriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_EVENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_HOT_AND_NEW:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;


# instance fields
.field private final mCheckInEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mFollowingEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mFriendEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mMainEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mMeEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mNearbyEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mUserEventIri:Lcom/yelp/android/analytics/iris/EventIri;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_SELECTED"

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainSelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendSelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbySelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingSelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsSelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeSelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserSelected:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_USER"

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserUser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_BUSINESS"

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 36
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_EVENT"

    const/4 v2, 0x3

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainEvent:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendEvent:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyEvent:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingEvent:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v7, 0x0

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeEvent:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserEvent:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_EVENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_HOT_AND_NEW"

    const/4 v2, 0x4

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainHotAndNew:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendHotAndNew:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyHotAndNew:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingHotAndNew:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v7, 0x0

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeHotAndNew:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserHotAndNew:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_HOT_AND_NEW:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_MEDIA_SEEN"

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v7, 0x0

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 60
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_SEEN"

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbySeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserSeen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_VOTED"

    const/4 v2, 0x7

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserVoted:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 76
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_CHECK_IN_COMMENT"

    const/16 v2, 0x8

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 84
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_BOOKMARK"

    const/16 v2, 0x9

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedMainBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedCheckInsBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedMeBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->FeedUserBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_EVENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_HOT_AND_NEW:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mMainEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 110
    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFriendEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 111
    iput-object p5, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mNearbyEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 112
    iput-object p6, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFollowingEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 113
    iput-object p7, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mCheckInEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 114
    iput-object p8, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mMeEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 115
    iput-object p9, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mUserEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 116
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-object v0
.end method


# virtual methods
.method public getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType$1;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mMainEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFriendEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mNearbyEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFollowingEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 129
    :pswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mCheckInEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 131
    :pswitch_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mMeEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 133
    :pswitch_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mUserEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
