.class public final enum Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;
.super Ljava/lang/Enum;
.source "ShareToolbarExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

.field public static final enum share_toolbar_enabled:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

.field public static final enum status_quo_share_toolbar:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    const-string/jumbo v1, "status_quo_share_toolbar"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->status_quo_share_toolbar:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    .line 14
    new-instance v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    const-string/jumbo v1, "share_toolbar_enabled"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->share_toolbar_enabled:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->status_quo_share_toolbar:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->share_toolbar_enabled:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    return-object v0
.end method
