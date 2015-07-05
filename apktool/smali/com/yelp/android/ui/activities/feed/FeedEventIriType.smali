.class public final enum Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
.super Ljava/lang/Enum;
.source "FeedEventIriType.java"


# annotations
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

.field public static final enum FEED_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

.field public static final enum FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;


# instance fields
.field private final mFollowingEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mFriendEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mNearbyEventIri:Lcom/yelp/android/analytics/iris/EventIri;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v1, "FEED_SELECTED"

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendSelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbySelected:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingSelected:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 14
    new-instance v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v4, "FEED_USER"

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyUser:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingUser:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 15
    new-instance v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v4, "FEED_BUSINESS"

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 16
    new-instance v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v4, "FEED_MEDIA_SEEN"

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingMediaSeen:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 17
    new-instance v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v4, "FEED_SEEN"

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendSeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbySeen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingSeen:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 18
    new-instance v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v4, "FEED_VOTED"

    const/4 v5, 0x5

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyVoted:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingVoted:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 19
    new-instance v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    const-string/jumbo v4, "FEED_CHECK_IN_COMMENT"

    const/4 v5, 0x6

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->FeedFollowingCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFriendEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 27
    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mNearbyEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 28
    iput-object p5, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFollowingEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 29
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
    .line 32
    sget-object v0, Lcom/yelp/android/ui/activities/feed/w;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFriendEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mNearbyEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->mFollowingEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
