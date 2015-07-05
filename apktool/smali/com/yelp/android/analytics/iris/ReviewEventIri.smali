.class public final enum Lcom/yelp/android/analytics/iris/ReviewEventIri;
.super Ljava/lang/Enum;
.source "ReviewEventIri.java"

# interfaces
.implements Lcom/yelp/android/analytics/iris/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/ReviewEventIri;",
        ">;",
        "Lcom/yelp/android/analytics/iris/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum PreviousReviews:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum PreviousReviewsCollapse:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum PreviousReviewsExpand:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewDraftDelete:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewDraftSave:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewKeyboard:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewPostedAddPhotoButtonPressed:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewPostedAddPhotoButtonShown:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewPostedClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewPostedEdit:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewPostedSurveyQuestion:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewPostedSurveyQuestionFinished:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewSaved:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewWriteClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewWriteNext:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewWritePost:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewWriteRating:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewWriteShare:Lcom/yelp/android/analytics/iris/ReviewEventIri;

.field public static final enum ReviewWriteStart:Lcom/yelp/android/analytics/iris/ReviewEventIri;


# instance fields
.field private final mIri:Ljava/lang/String;

.field private final mIsSampledInGoogleAnalytics:Z

.field private final misExcludedFromGoogleAnalytics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewDraftSave"

    const-string/jumbo v2, "review/draft/save"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewDraftSave:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 9
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewDraftDelete"

    const-string/jumbo v2, "review/draft/delete"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewDraftDelete:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 10
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "PreviousReviews"

    const-string/jumbo v2, "review/write/previous_reviews"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviews:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 11
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "PreviousReviewsExpand"

    const-string/jumbo v2, "review/write/previous_reviews/expand_review"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviewsExpand:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 12
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "PreviousReviewsCollapse"

    const-string/jumbo v2, "review/write/previous_reviews/collapse_review"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviewsCollapse:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 13
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewKeyboard"

    const/4 v2, 0x5

    const-string/jumbo v3, "review/write/keyboard"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewKeyboard:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 14
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewWriteShare"

    const/4 v2, 0x6

    const-string/jumbo v3, "review/write/share"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteShare:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 16
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewWriteStart"

    const/4 v2, 0x7

    const-string/jumbo v3, "review/write/start"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteStart:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 18
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewWriteRating"

    const/16 v2, 0x8

    const-string/jumbo v3, "review/write/rating"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteRating:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 19
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewWriteClose"

    const/16 v2, 0x9

    const-string/jumbo v3, "review/write/close_button"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 20
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewWriteNext"

    const/16 v2, 0xa

    const-string/jumbo v3, "review/write/next_button"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteNext:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 21
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewWritePost"

    const/16 v2, 0xb

    const-string/jumbo v3, "review/write/post_button"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWritePost:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 23
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewPostedEdit"

    const/16 v2, 0xc

    const-string/jumbo v3, "review/posted/edit"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedEdit:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 24
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewSaved"

    const/16 v2, 0xd

    const-string/jumbo v3, "review/saved"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 25
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewPostedAddPhotoButtonShown"

    const/16 v2, 0xe

    const-string/jumbo v3, "review/posted/add_photo_button_shown"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedAddPhotoButtonShown:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 26
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewPostedAddPhotoButtonPressed"

    const/16 v2, 0xf

    const-string/jumbo v3, "review/posted/add_photo_button"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedAddPhotoButtonPressed:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 27
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewPostedClose"

    const/16 v2, 0x10

    const-string/jumbo v3, "review/posted/close_button"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 28
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewPostedSurveyQuestion"

    const/16 v2, 0x11

    const-string/jumbo v3, "review/posted/survey_question"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedSurveyQuestion:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 29
    new-instance v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "ReviewPostedSurveyQuestionFinished"

    const/16 v2, 0x12

    const-string/jumbo v3, "review/posted/survey_question/finished"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedSurveyQuestionFinished:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    .line 6
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/ReviewEventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewDraftSave:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewDraftDelete:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviews:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviewsExpand:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviewsCollapse:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewKeyboard:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteShare:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteStart:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteRating:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteNext:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWritePost:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedEdit:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedAddPhotoButtonShown:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedAddPhotoButtonPressed:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedSurveyQuestion:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedSurveyQuestionFinished:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->$VALUES:[Lcom/yelp/android/analytics/iris/ReviewEventIri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 36
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/iris/ReviewEventIri;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->mIri:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->misExcludedFromGoogleAnalytics:Z

    .line 43
    iput-boolean p5, p0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->mIsSampledInGoogleAnalytics:Z

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/ReviewEventIri;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/ReviewEventIri;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->$VALUES:[Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/ReviewEventIri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/ReviewEventIri;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->EVENT:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method

.method public getGaCustomDimenLinks()[Lcom/yelp/android/analytics/c;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->EMPTY_ARRAY:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-object v0
.end method

.method public getGoogleAnalyticsCategory()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->REVIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method

.method public getIriName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->mIri:Ljava/lang/String;

    return-object v0
.end method

.method public isExcludedFromGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->misExcludedFromGoogleAnalytics:Z

    return v0
.end method

.method public isSampledInGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->mIsSampledInGoogleAnalytics:Z

    return v0
.end method
