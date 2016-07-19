.class public Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityComposeMessage.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;
.implements Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 45
    invoke-static {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "extra_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    const v1, 0x7f070205

    const v2, 0x7f070395

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const v2, 0x7f0f020d

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->e()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/serializable/User;Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 149
    :cond_0
    return-void
.end method

.method private e()Lcom/yelp/android/serializable/User;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->finish()V

    .line 120
    const v0, 0x7f07069e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 121
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/serializable/User;)V

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 172
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g()V

    .line 177
    return-void
.end method

.method public getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MessagingNewConversation:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->e()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "inbox"

    .line 132
    :goto_0
    const-string/jumbo v2, "source"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v1

    .line 131
    :cond_0
    const-string/jumbo v0, "user_profile"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->c()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->finish()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x419
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a()V

    .line 96
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f070417

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->finish()V

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->c()V

    goto :goto_0

    .line 68
    :cond_1
    const v0, 0x7f070205

    const v1, 0x7f070395

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x419

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->E_()V

    .line 190
    return-void
.end method
