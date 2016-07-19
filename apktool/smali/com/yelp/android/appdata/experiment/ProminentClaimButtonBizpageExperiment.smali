.class public Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "ProminentClaimButtonBizpageExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    const-string/jumbo v0, "mobile.prominent_claim_button_bizpage"

    const-class v1, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->status_quo_no_button:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 20
    return-void
.end method
