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

.field public static final enum BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field public static final enum SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

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

    .line 5
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageContributionButton"

    const-string/jumbo v2, "business/review/write/button_bar"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 6
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageMenu"

    const-string/jumbo v2, "business/review/write/menu"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 7
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageNoReviewButton"

    const-string/jumbo v2, "business/review/write/no_review_button"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 8
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageWithReviewsButton"

    const-string/jumbo v2, "business/review/write/with_reviews_button"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageReviewsListUpdate"

    const-string/jumbo v2, "business/reviews/list/update"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizPageReviewsListEdit"

    const/4 v2, 0x5

    const-string/jumbo v3, "business/reviews/list/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "BizListLongPress"

    const/4 v2, 0x6

    const-string/jumbo v3, "business/list/long_press"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "PostCheckInSurvey"

    const/4 v2, 0x7

    const-string/jumbo v3, "check_ins/receipt/review_stars"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "PostReviewYNRA"

    const/16 v2, 0x8

    const-string/jumbo v3, "review/saved/post_review_ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "ProfileReviewDrafts"

    const/16 v2, 0x9

    const-string/jumbo v3, "profile/review_drafts"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "SearchAddReviewBusiness"

    const/16 v2, 0xa

    const-string/jumbo v3, "search/add_review/business"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "NearbySearchAddReviewBusiness"

    const/16 v2, 0xb

    const-string/jumbo v3, "search/nearby/add_review/business"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 21
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "XMoreReviewsMenu"

    const/16 v2, 0xc

    const-string/jumbo v3, "business/reviews_2/menu"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 22
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "XMoreReviewsUpdate"

    const/16 v2, 0xd

    const-string/jumbo v3, "business/reviews_2/update"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "XMoreReviewsEdit"

    const/16 v2, 0xe

    const-string/jumbo v3, "business/reviews_2/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 25
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "ReviewDetailsUpdate"

    const/16 v2, 0xf

    const-string/jumbo v3, "review/update"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 26
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "ReviewDetailsEdit"

    const/16 v2, 0x10

    const-string/jumbo v3, "review/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "FromWebsite"

    const/16 v2, 0x11

    const-string/jumbo v3, "from_website"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 30
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    const-string/jumbo v1, "Empty"

    const/16 v2, 0x12

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 3
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    aput-object v2, v0, v1

    const/16 v1, 0x12

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviews/ReviewSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    return-object v0
.end method


# virtual methods
.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->mSource:Ljava/lang/String;

    return-object v0
.end method
