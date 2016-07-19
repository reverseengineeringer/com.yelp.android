.class public Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "UfcNotificationExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v0, "mobile_ufc_notification"

    const-class v1, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 18
    return-void
.end method
