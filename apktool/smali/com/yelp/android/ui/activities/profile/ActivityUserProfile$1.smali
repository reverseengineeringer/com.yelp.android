.class Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->onCreate(Landroid/os/Bundle;)V
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
    .line 177
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->b(Landroid/content/Intent;)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(I)V

    .line 185
    :cond_0
    return-void
.end method
