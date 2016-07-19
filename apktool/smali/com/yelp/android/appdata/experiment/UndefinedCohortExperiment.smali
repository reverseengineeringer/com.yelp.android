.class public Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "UndefinedCohortExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->not_used:Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;->not_used:Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment;->a()Lcom/yelp/android/appdata/experiment/UndefinedCohortExperiment$PlaceholderCohort;

    move-result-object v0

    return-object v0
.end method
