.class Lcom/yelp/android/ui/activities/s;
.super Ljava/lang/Object;
.source "ActivityCheckIn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/s;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/s;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/s;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->setResult(I)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/s;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->finish()V

    .line 77
    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/s;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/appdata/BusinessContributionType;->writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 74
    iget-object v1, p0, Lcom/yelp/android/ui/activities/s;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
