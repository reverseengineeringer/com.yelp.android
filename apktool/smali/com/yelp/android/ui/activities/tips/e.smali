.class Lcom/yelp/android/ui/activities/tips/e;
.super Landroid/content/BroadcastReceiver;
.source "TipComplimentsLikes.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/e;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/e;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/serializable/Tip;)Lcom/yelp/android/serializable/Tip;

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/e;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/e;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/e;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    .line 324
    return-void
.end method
