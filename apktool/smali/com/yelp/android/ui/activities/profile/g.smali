.class Lcom/yelp/android/ui/activities/profile/g;
.super Landroid/content/BroadcastReceiver;
.source "ActivityUserProfile.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/g;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 321
    const-string/jumbo v0, "android.intent.action.EDIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {p2}, Lcom/yelp/android/ui/activities/profile/j;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/profile/j;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/g;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/g;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/profile/j;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string/jumbo v0, "com.yelp.android.offer_redeemed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/g;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h()V

    goto :goto_0

    .line 330
    :cond_2
    const-string/jumbo v0, "REFRESH_USER_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/g;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h()V

    goto :goto_0
.end method
