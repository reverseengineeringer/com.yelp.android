.class Lcom/yelp/android/ui/activities/profile/d;
.super Ljava/lang/Object;
.source "ActivityFirstAwards.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/br;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-virtual {p2, v1}, Lcom/yelp/android/serializable/TipFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method public a(ILcom/yelp/android/serializable/TipFeedEntry;Z)V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 270
    if-eqz p3, :cond_0

    .line 271
    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 276
    return-void

    .line 273
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0
.end method

.method public b(ILcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 3

    .prologue
    .line 257
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c(ILcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method
