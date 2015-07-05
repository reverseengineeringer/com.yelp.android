.class Lcom/yelp/android/ui/activities/businesspage/ac;
.super Lcom/yelp/android/ui/activities/businesspage/cc;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;ZZ)V
    .locals 0

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->a:Z

    iput-boolean p4, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/cc;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1332
    new-instance v3, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {v3, v0, v5, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;II)V

    .line 1335
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->b:Z

    if-eqz v0, :cond_0

    .line 1336
    const v0, 0x7f07047b

    move v1, v0

    .line 1342
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1345
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1346
    return-void

    .line 1337
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ac;->a:Z

    if-eqz v0, :cond_1

    .line 1338
    const v0, 0x7f07066c

    move v1, v0

    goto :goto_0

    .line 1340
    :cond_1
    const v0, 0x7f070107

    move v1, v0

    goto :goto_0
.end method
