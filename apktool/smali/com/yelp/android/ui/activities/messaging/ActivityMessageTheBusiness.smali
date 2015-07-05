.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMessageTheBusiness.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessNewMessage:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0c01d4

    .line 36
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
