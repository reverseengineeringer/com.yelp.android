.class public Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityChangePrimaryEmail.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/co;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/yelp/android/appdata/webrequests/ex;

.field private final d:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 133
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;-><init>(Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;)Lcom/yelp/android/appdata/webrequests/ex;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePrimaryEmail:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "is_email_changed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070295

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePrimaryEmail:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "is_email_changed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f07028c

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePrimaryEmail:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "is_email_changed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->finish()V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ex;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ex;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {v1, v4}, Lcom/yelp/android/appdata/webrequests/ex;->a(Z)V

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ex;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :cond_5
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ex;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/ex;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ex;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 128
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePrimaryEmail:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "is_email_changed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;)Lcom/yelp/android/appdata/webrequests/co;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a:Lcom/yelp/android/appdata/webrequests/co;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ChangePrimaryEmail:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->setContentView(I)V

    .line 49
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a:Lcom/yelp/android/appdata/webrequests/co;

    .line 51
    const v0, 0x7f0f0112

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->b:Landroid/widget/EditText;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0607
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 65
    const-string/jumbo v0, "change_email_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 58
    const-string/jumbo v0, "change_email_request"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ex;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->c:Lcom/yelp/android/appdata/webrequests/ex;

    .line 60
    return-void
.end method
