.class public final enum Lcom/yelp/android/ui/activities/reviews/ReviewSource;
.super Ljava/lang/Enum;
.source "ReviewSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/ReviewSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageContributionCell:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageStartYourReviewEntryPoint:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum FeedFriendYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum FeedMainYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum FeedMeYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum FeedNearbyYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailDeal:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailDraft:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailDraftExp:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailEat24Order:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailPlatform:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailReservationSeatMe:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum WriteAReviewEmailTip:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;


# instance fields
.field private final mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageContributionButton"

    const-string/jumbo v2, "business/review/write/button_bar"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageMenu"

    const-string/jumbo v2, "business/review/write/menu"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageNoReviewButton"

    const-string/jumbo v2, "business/review/write/no_review_button"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageWithReviewsButton"

    const-string/jumbo v2, "business/review/write/with_reviews_button"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageStartYourReviewEntryPoint"

    const-string/jumbo v2, "business/review/write/start_your_review_entry_point"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageStartYourReviewEntryPoint:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageContributionCell"

    const/4 v2, 0x5

    const-string/jumbo v3, "business/review/contribution_cell"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionCell:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageReviewsListUpdate"

    const/4 v2, 0x6

    const-string/jumbo v3, "business/reviews/list/update"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageReviewsListEdit"

    const/4 v2, 0x7

    const-string/jumbo v3, "business/reviews/list/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 17
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizListLongPress"

    const/16 v2, 0x8

    const-string/jumbo v3, "business/list/long_press"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "PostCheckInSurvey"

    const/16 v2, 0x9

    const-string/jumbo v3, "check_ins/receipt/review_stars"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "PostReviewYNRA"

    const/16 v2, 0xa

    const-string/jumbo v3, "review/saved/post_review_ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "ProfileReviewDrafts"

    const/16 v2, 0xb

    const-string/jumbo v3, "profile/review_drafts"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 21
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "FeedMainYnra"

    const/16 v2, 0xc

    const-string/jumbo v3, "feed/main/ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedMainYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 22
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "FeedMeYnra"

    const/16 v2, 0xd

    const-string/jumbo v3, "feed/me/ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedMeYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "FeedNearbyYnra"

    const/16 v2, 0xe

    const-string/jumbo v3, "feed/nearby/ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedNearbyYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 24
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "FeedFriendYnra"

    const/16 v2, 0xf

    const-string/jumbo v3, "feed/friend/ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedFriendYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 25
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "SearchAddReviewBusiness"

    const/16 v2, 0x10

    const-string/jumbo v3, "search/add_review/business"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 26
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "NearbySearchAddReviewBusiness"

    const/16 v2, 0x11

    const-string/jumbo v3, "search/nearby/add_review/business"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "XMoreReviewsMenu"

    const/16 v2, 0x12

    const-string/jumbo v3, "business/reviews_2/menu"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "XMoreReviewsUpdate"

    const/16 v2, 0x13

    const-string/jumbo v3, "business/reviews_2/update"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "XMoreReviewsEdit"

    const/16 v2, 0x14

    const-string/jumbo v3, "business/reviews_2/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 30
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "ReviewDetailsUpdate"

    const/16 v2, 0x15

    const-string/jumbo v3, "review/update"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "ReviewDetailsEdit"

    const/16 v2, 0x16

    const-string/jumbo v3, "review/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "FromWebsite"

    const/16 v2, 0x17

    const-string/jumbo v3, "from_website"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailDeal"

    const/16 v2, 0x18

    const-string/jumbo v3, "deal"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDeal:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 34
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailDraft"

    const/16 v2, 0x19

    const-string/jumbo v3, "draft"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDraft:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 35
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailDraftExp"

    const/16 v2, 0x1a

    const-string/jumbo v3, "draft-exp"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDraftExp:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 36
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailReservationSeatMe"

    const/16 v2, 0x1b

    const-string/jumbo v3, "reservation-seatme"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailReservationSeatMe:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 37
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailTip"

    const/16 v2, 0x1c

    const-string/jumbo v3, "tip"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailTip:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailEat24Order"

    const/16 v2, 0x1d

    const-string/jumbo v3, "eat24-order"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailEat24Order:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "WriteAReviewEmailPlatform"

    const/16 v2, 0x1e

    const-string/jumbo v3, "platform"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailPlatform:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 40
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "Empty"

    const/16 v2, 0x1f

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 8
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageStartYourReviewEntryPoint:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionCell:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedMainYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedMeYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedNearbyYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedFriendYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDeal:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDraft:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDraftExp:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailReservationSeatMe:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailTip:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailEat24Order:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailPlatform:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewSource;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getReviewSource(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 3

    .prologue
    .line 105
    const-class v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 106
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviews/ReviewSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    return-object v0
.end method


# virtual methods
.method public getIriSourceParameter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "button_bar"

    .line 98
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string/jumbo v0, "menu"

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string/jumbo v0, "no_reviews_button"

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const-string/jumbo v0, "with_reviews_button"

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionCell:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    const-string/jumbo v0, "review_contribution_cell"

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    const-string/jumbo v0, "post_review_ynra"

    goto :goto_0

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDeal:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    const-string/jumbo v0, "writeareview_email_deal"

    goto :goto_0

    .line 79
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDraft:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    const-string/jumbo v0, "writeareview_email_draft"

    goto :goto_0

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailDraftExp:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 83
    const-string/jumbo v0, "writeareview_email_draft_exp"

    goto/16 :goto_0

    .line 85
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailReservationSeatMe:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    const-string/jumbo v0, "writeareview_email_reservation_seatme"

    goto/16 :goto_0

    .line 88
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailTip:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 89
    const-string/jumbo v0, "writeareview_email_tip"

    goto/16 :goto_0

    .line 91
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailEat24Order:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    const-string/jumbo v0, "writeareview_email_eat24_order"

    goto/16 :goto_0

    .line 94
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->WriteAReviewEmailPlatform:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    const-string/jumbo v0, "writeareview_email_platform"

    goto/16 :goto_0

    .line 98
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    return-object v0
.end method
