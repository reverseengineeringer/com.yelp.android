.class public final enum Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;
.super Ljava/lang/Enum;
.source "TwoBucketExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

.field public static final enum enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

.field public static final enum status_quo:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    const-string/jumbo v1, "status_quo"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    new-instance v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    const-string/jumbo v1, "enabled"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    return-object v0
.end method
