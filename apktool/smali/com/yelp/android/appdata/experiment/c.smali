.class public Lcom/yelp/android/appdata/experiment/c;
.super Ljava/lang/Object;
.source "Experiment.java"


# static fields
.field public static final a:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;

.field public static final b:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;

.field public static final c:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/experiment/c;->a:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;

    .line 33
    new-instance v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/experiment/c;->b:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;

    .line 35
    new-instance v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    const-string/jumbo v1, "mobile.android.photo_resize"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/c;->c:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    return-void
.end method
