.class abstract enum Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.super Ljava/lang/Enum;
.source "ContributionAwardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static AWARDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BADGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum BARONIES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum BOOKMARKS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum CHECK_INS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum COMPLIMENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static CONTRIBUTIONS_AND_AWARDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DEALS_AND_OFFERS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum DUKEDOMS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum EVENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum FIRSTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum FOLLOWING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum KING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum LOCAL_MEDIA:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum REGULARS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum REVIEWS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum REVIEW_DRAFTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum TIPS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum TIPS_OF_THE_DAY:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

.field public static final enum YEARS_ELITE:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;


# instance fields
.field final hasBadgeCount:Z

.field final iconRes:I

.field final iri:Lcom/yelp/android/analytics/iris/EventIri;

.field final privateStat:Z

.field final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$1;

    const-string/jumbo v1, "YEARS_ELITE"

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_YearsElite:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f07067d

    const v5, 0x7f020442

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$1;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->YEARS_ELITE:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 51
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$2;

    const-string/jumbo v1, "FIRSTS"

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_Firsts:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0702e2

    const v5, 0x7f02028f

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$2;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FIRSTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 62
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$3;

    const-string/jumbo v1, "TIPS_OF_THE_DAY"

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_TipOfTheDay:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0705ea

    const v5, 0x7f020573

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$3;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS_OF_THE_DAY:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 77
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$4;

    const-string/jumbo v1, "KING"

    const/4 v2, 0x3

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_King:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f070355

    const v5, 0x7f02043a

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$4;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->KING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$5;

    const-string/jumbo v1, "BARONIES"

    const/4 v2, 0x4

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_Baron:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f070157

    const v5, 0x7f02042e

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$5;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BARONIES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 99
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$6;

    const-string/jumbo v1, "DUKEDOMS"

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_Duke:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f07026c

    const v5, 0x7f020435

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$6;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DUKEDOMS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$7;

    const-string/jumbo v1, "REGULARS"

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_Regular:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0704e6

    const v5, 0x7f02043d

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$7;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REGULARS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 121
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$8;

    const-string/jumbo v1, "BADGES"

    const/4 v2, 0x7

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_Badge:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f070154

    const v5, 0x7f02042c

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$8;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BADGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 132
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$9;

    const-string/jumbo v1, "COMPLIMENTS"

    const/16 v2, 0x8

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileAward_Compliments:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0701f9

    const v5, 0x7f020432

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$9;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->COMPLIMENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 146
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$10;

    const-string/jumbo v1, "REVIEW_DRAFTS"

    const/16 v2, 0x9

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_ReviewDrafts:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f07026b

    const v5, 0x7f020434

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$10;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REVIEW_DRAFTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 162
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$11;

    const-string/jumbo v1, "REVIEWS"

    const/16 v2, 0xa

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_Reviews:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f070510

    const v5, 0x7f02043f

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$11;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REVIEWS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 176
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$12;

    const-string/jumbo v1, "TIPS"

    const/16 v2, 0xb

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_Tips:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0705f0

    const v5, 0x7f020440

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$12;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$13;

    const-string/jumbo v1, "LOCAL_MEDIA"

    const/16 v2, 0xc

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f07048e

    const v5, 0x7f020430

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$13;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->LOCAL_MEDIA:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 212
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$14;

    const-string/jumbo v1, "CHECK_INS"

    const/16 v2, 0xd

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_CheckIns:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0701c3

    const v5, 0x7f020431

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$14;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->CHECK_INS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 228
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$15;

    const-string/jumbo v1, "DEALS_AND_OFFERS"

    const/16 v2, 0xe

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_Deals:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0703f1

    const v5, 0x7f020433

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$15;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DEALS_AND_OFFERS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 244
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$16;

    const-string/jumbo v1, "BOOKMARKS"

    const/16 v2, 0xf

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileContributions_Bookmarks:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f070173

    const v5, 0x7f02042f

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$16;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BOOKMARKS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 267
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$17;

    const-string/jumbo v1, "MESSAGES"

    const/16 v2, 0x10

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMessagingInbox:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0703c6

    const v5, 0x7f02043b

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$17;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 283
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$18;

    const-string/jumbo v1, "EVENTS"

    const/16 v2, 0x11

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileEvents:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0702b8

    const v5, 0x7f020436

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$18;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->EVENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 294
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$19;

    const-string/jumbo v1, "FOLLOWING"

    const/16 v2, 0x12

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileFollowing:Lcom/yelp/android/analytics/iris/EventIri;

    const v4, 0x7f0702e6

    const v5, 0x7f020437

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$19;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FOLLOWING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->YEARS_ELITE:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FIRSTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS_OF_THE_DAY:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->KING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BARONIES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DUKEDOMS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REGULARS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BADGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->COMPLIMENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REVIEW_DRAFTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REVIEWS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->LOCAL_MEDIA:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->CHECK_INS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DEALS_AND_OFFERS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BOOKMARKS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->EVENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FOLLOWING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->$VALUES:[Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 314
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->YEARS_ELITE:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DEALS_AND_OFFERS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BOOKMARKS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->COMPLIMENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->EVENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REVIEW_DRAFTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REVIEWS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->LOCAL_MEDIA:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->CHECK_INS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FIRSTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS_OF_THE_DAY:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->KING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BARONIES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DUKEDOMS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REGULARS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BADGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FOLLOWING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->makeSet([Lcom/yelp/android/ui/activities/profile/ContributionAwardType;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->CONTRIBUTIONS_AND_AWARDS:Ljava/util/Set;

    .line 338
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->YEARS_ELITE:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->FIRSTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS_OF_THE_DAY:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->KING:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BARONIES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->DUKEDOMS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->REGULARS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->BADGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->COMPLIMENTS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->TIPS:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->AWARDS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 365
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IILcom/yelp/android/ui/activities/profile/ContributionAwardType$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "IIZZ)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 370
    iput p4, p0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->titleRes:I

    .line 371
    iput p5, p0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iconRes:I

    .line 372
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 373
    iput-boolean p6, p0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->privateStat:Z

    .line 374
    iput-boolean p7, p0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->hasBadgeCount:Z

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZLcom/yelp/android/ui/activities/profile/ContributionAwardType$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IIZZ)V

    return-void
.end method

.method private static makeSet([Lcom/yelp/android/ui/activities/profile/ContributionAwardType;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 308
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 309
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->$VALUES:[Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    return-object v0
.end method


# virtual methods
.method public getTitleRes(Lcom/yelp/android/serializable/User;)I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->titleRes:I

    return v0
.end method

.method abstract getValue(Lcom/yelp/android/serializable/User;)I
.end method

.method abstract getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
.end method
