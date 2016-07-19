.class Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityUserTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$1;->a:Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$1;->a:Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)Lcom/yelp/android/ui/activities/profile/tips/a$a;

    move-result-object v1

    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/profile/tips/a$a;->b(Lcom/yelp/android/serializable/Tip;)V

    .line 129
    return-void
.end method
