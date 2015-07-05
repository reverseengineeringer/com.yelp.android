.class public final enum Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;
.super Ljava/lang/Enum;
.source "FlagReviewReasonsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum Affiliated:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum Competitor:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum ConsumerExperience:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum FalseInformation:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum PrivacyStandards:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum PromotionalMaterial:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum Threats:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field public static final enum WrongBusiness:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;


# instance fields
.field public final hintResourceId:I

.field public final requestParam:Ljava/lang/String;

.field public final viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v1, "FalseInformation"

    const v3, 0x7f0702db

    const v4, 0x7f0c02c0

    const-string/jumbo v5, "false_information"

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->FalseInformation:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 31
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "Affiliated"

    const v6, 0x7f07048b

    const v7, 0x7f0c02c1

    const-string/jumbo v8, "affiliated"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->Affiliated:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 33
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "Competitor"

    const v6, 0x7f07048a

    const v7, 0x7f0c02c2

    const-string/jumbo v8, "competitor"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->Competitor:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 35
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "Threats"

    const v6, 0x7f070489

    const v7, 0x7f0c02c3

    const-string/jumbo v8, "threats"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->Threats:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 36
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "ConsumerExperience"

    const v6, 0x7f0702da

    const v7, 0x7f0c02c4

    const-string/jumbo v8, "not_personal_experience"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->ConsumerExperience:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 38
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "PrivacyStandards"

    const/4 v5, 0x5

    const v6, 0x7f0702dc

    const v7, 0x7f0c02c5

    const-string/jumbo v8, "violates_privacy_standards"

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->PrivacyStandards:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 40
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "PromotionalMaterial"

    const/4 v5, 0x6

    const v6, 0x7f0702dd

    const v7, 0x7f0c02c6

    const-string/jumbo v8, "promotional"

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->PromotionalMaterial:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 42
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    const-string/jumbo v4, "WrongBusiness"

    const/4 v5, 0x7

    const v6, 0x7f0702de

    const v7, 0x7f0c02c7

    const-string/jumbo v8, "wrong_business"

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->WrongBusiness:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->FalseInformation:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->Affiliated:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->Competitor:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->Threats:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->ConsumerExperience:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->PrivacyStandards:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->PromotionalMaterial:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->WrongBusiness:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->$VALUES:[Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->hintResourceId:I

    .line 50
    iput p4, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->viewId:I

    .line 51
    iput-object p5, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->requestParam:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->$VALUES:[Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    return-object v0
.end method
