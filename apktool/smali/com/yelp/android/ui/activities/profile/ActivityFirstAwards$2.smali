.class Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$2;
.super Landroid/content/BroadcastReceiver;
.source "ActivityFirstAwards.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$2;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 106
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$2;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/ui/activities/profile/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/d;->b(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$2;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->y()V

    .line 108
    return-void
.end method
