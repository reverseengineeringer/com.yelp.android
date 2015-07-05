.class public final enum Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;
.super Ljava/lang/Enum;
.source "FirstSearchExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

.field public static final enum no_search_step:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

.field public static final enum search_step_pick:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

.field public static final enum search_step_ready:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    const-string/jumbo v1, "no_search_step"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->no_search_step:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    const-string/jumbo v1, "search_step_ready"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->search_step_ready:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    .line 14
    new-instance v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    const-string/jumbo v1, "search_step_pick"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->search_step_pick:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->no_search_step:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->search_step_ready:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->search_step_pick:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    return-object v0
.end method
