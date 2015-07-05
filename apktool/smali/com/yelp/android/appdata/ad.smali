.class Lcom/yelp/android/appdata/ad;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsCountController.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/ab;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/ab;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/appdata/ad;->a:Lcom/yelp/android/appdata/ab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->b(Landroid/content/Intent;)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/yelp/android/appdata/ad;->a:Lcom/yelp/android/appdata/ab;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/ab;->a(Lcom/yelp/android/appdata/ab;I)V

    .line 167
    return-void
.end method
