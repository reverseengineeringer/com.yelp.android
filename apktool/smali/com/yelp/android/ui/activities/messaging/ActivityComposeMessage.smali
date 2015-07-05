.class public Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityComposeMessage.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/messaging/f;
.implements Lcom/yelp/android/ui/activities/messaging/x;
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 38
    invoke-static {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "extra_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    const v1, 0x7f070641

    const v2, 0x7f07035a

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/yelp/android/serializable/User;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 104
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
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->finish()V

    .line 83
    const v0, 0x7f0706ce

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 84
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/serializable/User;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 112
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f()V

    .line 117
    return-void
.end method

.method public getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MessagingNewConversation:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 94
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "inbox"

    .line 95
    :goto_0
    const-string/jumbo v2, "source"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v1

    .line 94
    :cond_0
    const-string/jumbo v0, "user_profile"

    goto :goto_0
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d()V

    .line 130
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a()V

    .line 61
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0c01d4

    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
