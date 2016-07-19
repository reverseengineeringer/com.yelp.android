.class Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;
.super Ljava/lang/Object;
.source "TipComplimentsLikes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/co;

.field final synthetic b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

.field final synthetic c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->a:Lcom/yelp/android/appdata/webrequests/co;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Lcom/yelp/android/appdata/webrequests/em;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yelp/android/serializable/User;->a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TipFeedback;

    .line 222
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    .line 233
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.tips.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 247
    :goto_1
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 227
    new-instance v0, Lcom/yelp/android/serializable/TipFeedback;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/TipFeedback;-><init>(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/co;)V

    .line 228
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->toggle()V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->b:Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;->c:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    const v2, 0x7f070201

    const v3, 0x7f07039c

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
