.class Lcom/yelp/android/ui/activities/tips/g;
.super Ljava/lang/Object;
.source "TipComplimentsLikes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TipFeedback;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/g;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
