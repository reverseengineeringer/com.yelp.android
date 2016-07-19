.class public final enum Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;
.super Ljava/lang/Enum;
.source "ProminentClaimButtonBizpageExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

.field public static final enum on_bizpage_top:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

.field public static final enum status_quo_no_button:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    const-string/jumbo v1, "status_quo_no_button"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->status_quo_no_button:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    .line 15
    new-instance v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    const-string/jumbo v1, "on_bizpage_top"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->on_bizpage_top:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->status_quo_no_button:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->on_bizpage_top:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    return-object v0
.end method
