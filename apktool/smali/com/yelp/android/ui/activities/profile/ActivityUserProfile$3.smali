.class Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;
.super Landroid/content/BroadcastReceiver;
.source "ActivityUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 382
    const-string/jumbo v0, "android.intent.action.EDIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-static {p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string/jumbo v0, "com.yelp.android.offer_redeemed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    goto :goto_0

    .line 391
    :cond_2
    const-string/jumbo v0, "REFRESH_USER_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    goto :goto_0
.end method
