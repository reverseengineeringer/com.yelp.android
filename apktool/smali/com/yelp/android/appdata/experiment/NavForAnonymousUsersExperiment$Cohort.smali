.class public final enum Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;
.super Ljava/lang/Enum;
.source "NavForAnonymousUsersExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

.field public static final enum dino_create_an_account:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

.field public static final enum dino_sign_up_or_log_in:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

.field public static final enum status_quo_no_dino:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    const-string/jumbo v1, "status_quo_no_dino"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->status_quo_no_dino:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    .line 12
    new-instance v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    const-string/jumbo v1, "dino_sign_up_or_log_in"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->dino_sign_up_or_log_in:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    const-string/jumbo v1, "dino_create_an_account"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->dino_create_an_account:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->status_quo_no_dino:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->dino_sign_up_or_log_in:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->dino_create_an_account:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    return-object v0
.end method
