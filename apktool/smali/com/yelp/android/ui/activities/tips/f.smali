.class Lcom/yelp/android/ui/activities/tips/f;
.super Landroid/content/BroadcastReceiver;
.source "TipComplimentsLikes.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/f;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 332
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 333
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/f;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/f;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->finish()V

    .line 336
    :cond_0
    return-void
.end method
