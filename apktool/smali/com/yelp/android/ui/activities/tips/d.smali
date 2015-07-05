.class Lcom/yelp/android/ui/activities/tips/d;
.super Ljava/lang/Object;
.source "TipComplimentsLikes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/dc;

.field final synthetic b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

.field final synthetic c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/tips/d;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/tips/d;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fq;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/d;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yelp/android/serializable/User;->getCurrentUserInCollection(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TipFeedback;

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->notifyDataSetChanged()V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    .line 228
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.tips.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 240
    :goto_1
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 222
    new-instance v0, Lcom/yelp/android/serializable/TipFeedback;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/d;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/TipFeedback;-><init>(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/dc;)V

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->toggle()V

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/d;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f070639

    .line 237
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/d;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/d;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 233
    :cond_3
    const v0, 0x7f070361

    goto :goto_2
.end method
