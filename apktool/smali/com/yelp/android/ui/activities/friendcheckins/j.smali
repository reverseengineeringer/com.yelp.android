.class Lcom/yelp/android/ui/activities/friendcheckins/j;
.super Ljava/lang/Object;
.source "NearbyCheckIns.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/j;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/j;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/j;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    sget-object v2, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method
