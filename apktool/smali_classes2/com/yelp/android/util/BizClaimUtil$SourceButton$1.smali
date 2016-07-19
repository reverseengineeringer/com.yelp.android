.class final enum Lcom/yelp/android/util/BizClaimUtil$SourceButton$1;
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
    .line 24
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
    .line 39
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
    .line 27
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->I()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "prominent_claim_button_bizpage_experiment"

    goto :goto_0
.end method
