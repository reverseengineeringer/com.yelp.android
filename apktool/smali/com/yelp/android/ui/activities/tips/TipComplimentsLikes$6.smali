.class Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$6;
.super Landroid/content/BroadcastReceiver;
.source "TipComplimentsLikes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$6;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 338
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 339
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$6;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$6;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->finish()V

    .line 342
    :cond_0
    return-void
.end method
