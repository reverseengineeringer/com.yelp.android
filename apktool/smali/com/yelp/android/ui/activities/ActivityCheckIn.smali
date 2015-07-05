.class public Lcom/yelp/android/ui/activities/ActivityCheckIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityCheckIn.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/CheckInDialog;

.field private b:Lcom/yelp/android/serializable/YelpCheckIn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCheckIn;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object p1
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 50
    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/CheckInDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "check_in_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    new-instance v1, Lcom/yelp/android/ui/activities/r;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/r;-><init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/ew;)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    new-instance v1, Lcom/yelp/android/ui/activities/s;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/s;-><init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "check_in_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/CheckInDialog;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    return-void
.end method
