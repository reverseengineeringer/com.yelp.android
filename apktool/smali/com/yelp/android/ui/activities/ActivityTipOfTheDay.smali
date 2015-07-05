.class public Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;
.super Lcom/yelp/android/ui/activities/NotificationActivity;
.source "ActivityTipOfTheDay.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/NotificationActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cv;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/yelp/android/serializable/Tip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Tip;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->f:Lcom/yelp/android/serializable/Tip;

    .line 65
    const v0, 0x7f0c044a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0c044b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView;

    .line 67
    const v2, 0x7f0c044c

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p1, p0, v4}, Lcom/yelp/android/serializable/Tip;->getTipOfTheDayDateFormat(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->d:Landroid/widget/TextView;

    const v1, 0x7f0701ca

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getBusinessName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/ed;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/ed;-><init>(Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cv;->c:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 61
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/NotificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string/jumbo v0, "key.tip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->f:Lcom/yelp/android/serializable/Tip;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->f:Lcom/yelp/android/serializable/Tip;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->f:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cu;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "key.tip_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/cu;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 46
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cu;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->finish()V

    .line 88
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/NotificationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string/jumbo v0, "key.tip"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->f:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cv;)V

    return-void
.end method
