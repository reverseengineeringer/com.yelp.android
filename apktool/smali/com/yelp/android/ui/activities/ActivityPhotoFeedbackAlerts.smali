.class public Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityPhotoFeedbackAlerts.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PhotoFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PhotoFeedback;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PhotoFeedback;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->PhotoFeedbackAlerts:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f07040d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->setTitle(I)V

    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/de;

    invoke-direct {v0, p0, v3}, Lcom/yelp/android/ui/activities/de;-><init>(Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;Lcom/yelp/android/ui/activities/dd;)V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "feedbacks"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->a:Ljava/util/ArrayList;

    .line 45
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/de;->a(Ljava/util/List;)V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PhotoFeedback;

    .line 51
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PhotoFeedback;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gk;

    const-string/jumbo v2, "photo_feedback"

    invoke-direct {v0, v3, v2, v1}, Lcom/yelp/android/appdata/webrequests/gk;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gk;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 56
    :cond_1
    return-void
.end method
