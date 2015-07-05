.class public Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "SendFriendRequestForm.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "extra.user"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 133
    const-string/jumbo v0, "extra.user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/User;->setFriendRequestPending(Z)V

    .line 135
    const-string/jumbo v2, "extra.user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->setResult(ILandroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->hideLoadingDialog()V

    .line 107
    const v0, 0x7f0704f8

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a()V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->finish()V

    .line 110
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->AddFriend:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yelp/android/serializable/User;

    .line 58
    const v0, 0x7f0c014f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    new-instance v0, Lcom/yelp/android/ui/util/cn;

    invoke-direct {v0, v1, v11}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v3

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v4

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getPhotoCount()I

    move-result v5

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v6

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v7

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/cn;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 64
    const v0, 0x7f0c0150

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0702a7

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {p0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f0c0151

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->q()Ljava/lang/String;

    move-result-object v1

    .line 71
    const v2, 0x7f0702a9

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v1, v3, v11

    invoke-static {p0, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->hideLoadingDialog()V

    .line 116
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 120
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 123
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a()V

    .line 126
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->finish()V

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070013 -> :sswitch_0
        0x7f070021 -> :sswitch_0
        0x7f07002c -> :sswitch_1
        0x7f07003b -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 93
    const v1, 0x7f0c00a9

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    new-instance v2, Lcom/yelp/android/appdata/webrequests/e;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/e;-><init>(Lcom/yelp/android/av/i;Lcom/yelp/android/serializable/User;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/e;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 98
    const v0, 0x7f070553

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 85
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f07054e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
