.class Lcom/yelp/android/ui/activities/eh;
.super Ljava/lang/Object;
.source "ActivityUserList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityUserList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityUserList;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/eh;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

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
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eh;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityUserList;->a(Lcom/yelp/android/ui/activities/ActivityUserList;)Lcom/yelp/android/ui/util/cj;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/cj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 59
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eh;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/eh;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityUserList;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
