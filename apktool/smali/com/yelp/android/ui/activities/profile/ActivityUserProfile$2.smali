.class Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$2;
.super Ljava/lang/Object;
.source "ActivityUserProfile.java"

# interfaces
.implements Lcom/yelp/android/appdata/StateBroadcastReceiver$a;


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
    .line 366
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$2;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$2;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c()Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->B_()V

    .line 375
    return-void
.end method
