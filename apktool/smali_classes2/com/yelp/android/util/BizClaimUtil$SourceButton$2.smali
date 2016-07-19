.class final enum Lcom/yelp/android/util/BizClaimUtil$SourceButton$2;
.super Lcom/yelp/android/util/BizClaimUtil$SourceButton;
.source "BizClaimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/BizClaimUtil$SourceButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 42
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/util/BizClaimUtil$1;)V

    return-void
.end method


# virtual methods
.method public ybtParamExperimentCohort(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->n:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ybtParamExperimentName(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "prominent_claim_button_bizpage_experiment"

    return-object v0
.end method
