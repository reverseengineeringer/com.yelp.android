.class public final enum Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;
.super Ljava/lang/Enum;
.source "UndefinedCohortExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaceholderCohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

.field public static final enum not_used:Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    const-string/jumbo v1, "not_used"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->not_used:Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->not_used:Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    return-object v0
.end method
