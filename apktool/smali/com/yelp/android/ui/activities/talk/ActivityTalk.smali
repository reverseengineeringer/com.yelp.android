.class public Lcom/yelp/android/ui/activities/talk/ActivityTalk;
.super Lcom/yelp/android/ui/activities/support/YelpTabActivity;
.source "ActivityTalk.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/yelp/android/ui/activities/support/b$e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/yelp/android/appdata/webrequests/dr;

.field private final d:Lcom/yelp/android/appdata/LocationService$a;

.field private final e:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;-><init>()V

    .line 131
    new-instance v0, Lcom/yelp/android/ui/activities/talk/ActivityTalk$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk$1;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Lcom/yelp/android/appdata/LocationService$a;

    .line 181
    new-instance v0, Lcom/yelp/android/ui/activities/talk/ActivityTalk$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk$2;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/k$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Lcom/yelp/android/appdata/webrequests/dr;)Lcom/yelp/android/appdata/webrequests/dr;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Lcom/yelp/android/appdata/webrequests/dr;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    const v1, 0x7f070705

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/dr;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Lcom/yelp/android/appdata/webrequests/dr;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/k$b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/k$b;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e()V

    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 220
    const v0, 0x7f070704

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 224
    if-nez v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 226
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    :cond_0
    return v1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 293
    const v0, 0x7f0301d5

    const v1, 0x7f070557

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    const/16 v1, 0x425

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Landroid/content/SharedPreferences;

    const v1, 0x7f070705

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V

    .line 217
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Talk:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 283
    const/16 v0, 0x418

    if-ne p1, v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const-string/jumbo v1, "my_talk"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const-string/jumbo v1, "all_talk"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f030211

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Landroid/content/SharedPreferences;

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    const v2, 0x7f070130

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 70
    const-string/jumbo v2, "all_talk"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v1, v0, v2, v5}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    const v2, 0x7f0703f9

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 78
    const-string/jumbo v2, "my_talk"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-virtual {v1, v0, v2, v5}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->showDialog(I)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V

    .line 93
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 255
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Landroid/content/SharedPreferences;

    const v1, 0x7f070705

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070557

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const v0, 0x7f0705be

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070452

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070409

    new-instance v2, Lcom/yelp/android/ui/activities/talk/ActivityTalk$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk$3;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v2, 0x7f0705b5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Lcom/yelp/android/appdata/webrequests/dr;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Lcom/yelp/android/appdata/webrequests/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dr;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Lcom/yelp/android/appdata/webrequests/dr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dr;->a(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f060f

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/k;

    .line 113
    invoke-interface {v0}, Lcom/yelp/android/ui/k;->p_()V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "my_talk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const-string/jumbo v1, "my_talk"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 270
    const v0, 0x7f070212

    const v1, 0x7f0705b8

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x418

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    :cond_0
    return-void
.end method
