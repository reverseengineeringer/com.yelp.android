.class Lcom/yelp/android/ui/activities/drawer/j;
.super Landroid/content/BroadcastReceiver;
.source "DrawerFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/j;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/j;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    .line 233
    return-void
.end method
