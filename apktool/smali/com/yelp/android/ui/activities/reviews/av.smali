.class Lcom/yelp/android/ui/activities/reviews/av;
.super Ljava/lang/Object;
.source "ReviewOverviewFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move v0, v7

    .line 272
    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move v0, v7

    .line 276
    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    if-nez v0, :cond_3

    .line 286
    :cond_2
    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/fa;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v4}, Lcom/yelp/android/ui/activities/reviews/ao;->i()Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/appdata/webrequests/j;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fa;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/j;)V

    invoke-static {v6, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Lcom/yelp/android/appdata/webrequests/fa;)Lcom/yelp/android/appdata/webrequests/fa;

    .line 305
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070360

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const/16 v2, 0x413

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    move v0, v7

    .line 312
    goto/16 :goto_0

    .line 293
    :cond_3
    iget-object v8, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/fa;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v4}, Lcom/yelp/android/ui/activities/reviews/ao;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Review;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v5}, Lcom/yelp/android/ui/activities/reviews/ao;->i()Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/appdata/webrequests/j;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/fa;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/j;)V

    invoke-static {v8, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Lcom/yelp/android/appdata/webrequests/fa;)Lcom/yelp/android/appdata/webrequests/fa;

    goto :goto_1

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/av;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    goto :goto_2

    .line 261
    :pswitch_data_0
    .packed-switch 0x7f0c04e6
        :pswitch_0
    .end packed-switch
.end method
