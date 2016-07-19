.class Lcom/yelp/android/ui/activities/drawer/DrawerFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "DrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$2;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$2;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$2;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    .line 265
    return-void
.end method
