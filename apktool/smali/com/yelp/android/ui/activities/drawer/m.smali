.class Lcom/yelp/android/ui/activities/drawer/m;
.super Landroid/content/BroadcastReceiver;
.source "DrawerFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/m;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 700
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "com.yelp.android.messages.count.update"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/m;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "com.yelp.android.notifications.count.update"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/m;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    goto :goto_0
.end method
