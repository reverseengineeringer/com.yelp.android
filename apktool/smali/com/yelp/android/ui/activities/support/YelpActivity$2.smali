.class Lcom/yelp/android/ui/activities/support/YelpActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "YelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/YelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$2;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$2;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/YelpActivity;->updateIconBadges()V
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$600(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    .line 1366
    return-void
.end method
