.class final enum Lcom/yelp/android/appdata/BusinessContributionType$1;
.super Lcom/yelp/android/appdata/BusinessContributionType;
.source "BusinessContributionType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 7

    .prologue
    .line 23
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType$1;)V

    return-void
.end method


# virtual methods
.method public getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    invoke-static {p1, p2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
