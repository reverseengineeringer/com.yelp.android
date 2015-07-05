.class Lcom/yelp/android/ui/activities/friendcheckins/o;
.super Ljava/lang/Object;
.source "NearbyCheckIns.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/o;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 603
    instance-of v2, v0, Lcom/yelp/android/serializable/Royal;

    if-eqz v2, :cond_1

    .line 604
    check-cast v0, Lcom/yelp/android/serializable/Royal;

    .line 605
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Royal;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 606
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    instance-of v2, v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    if-eqz v2, :cond_0

    .line 608
    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 609
    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 610
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
