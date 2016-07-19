.class public final enum Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;
.super Ljava/lang/Enum;
.source "UfcNotificationExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

.field public static final enum first_vote_only:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

.field public static final enum first_vote_only_deanonymized:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

.field public static final enum status_quo:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    const-string/jumbo v1, "status_quo"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    .line 12
    new-instance v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    const-string/jumbo v1, "first_vote_only"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->first_vote_only:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    const-string/jumbo v1, "first_vote_only_deanonymized"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->first_vote_only_deanonymized:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->first_vote_only:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->first_vote_only_deanonymized:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    return-object v0
.end method
