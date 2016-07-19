.class Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;
.super Ljava/lang/Object;
.source "ReviewOverviewFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move v0, v7

    .line 294
    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070548

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move v0, v7

    .line 300
    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    if-nez v0, :cond_3

    .line 310
    :cond_2
    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/dz;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v4}, Lcom/yelp/android/ui/activities/reviews/c;->i()Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dz;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/k$b;)V

    invoke-static {v6, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Lcom/yelp/android/appdata/webrequests/dz;)Lcom/yelp/android/appdata/webrequests/dz;

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 329
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->u()Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 332
    const-string/jumbo v2, "sign_up_status"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewWritePost:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 338
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const/16 v2, 0x418

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    move v0, v7

    .line 348
    goto/16 :goto_0

    .line 318
    :cond_3
    iget-object v8, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/dz;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v4}, Lcom/yelp/android/ui/activities/reviews/c;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Review;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v5}, Lcom/yelp/android/ui/activities/reviews/c;->i()Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/dz;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/k$b;)V

    invoke-static {v8, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Lcom/yelp/android/appdata/webrequests/dz;)Lcom/yelp/android/appdata/webrequests/dz;

    goto/16 :goto_1

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    goto :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x7f0f05f0
        :pswitch_0
    .end packed-switch
.end method
