.class public Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;
.super Lcom/yelp/android/appdata/experiment/b;
.source "NavForAnonymousUsersExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/b",
        "<",
        "Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v0, "mobile.android.nav_for_anonymous_users"

    const-class v1, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->status_quo_no_dino:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/b;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 18
    return-void
.end method
