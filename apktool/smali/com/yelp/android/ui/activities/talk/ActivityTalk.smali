.class public Lcom/yelp/android/ui/activities/talk/ActivityTalk;
.super Lcom/yelp/android/ui/activities/support/YelpTabActivity;
.source "ActivityTalk.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/yelp/android/ui/activities/support/o;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/appdata/webrequests/eq;

.field private final f:Lcom/yelp/android/appdata/aa;

.field private final g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/er;",
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

    .line 124
    new-instance v0, Lcom/yelp/android/ui/activities/talk/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/a;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->f:Lcom/yelp/android/appdata/aa;

    .line 167
    new-instance v0, Lcom/yelp/android/ui/activities/talk/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/b;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->g:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Lcom/yelp/android/appdata/webrequests/eq;)Lcom/yelp/android/appdata/webrequests/eq;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/eq;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 200
    const v0, 0x7f070319

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 204
    if-nez v1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 206
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/eq;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/eq;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->g:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 270
    const v0, 0x7f030168

    const v1, 0x7f0705ce

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 273
    const/16 v1, 0x41c

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Talk:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public k_()V
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->f:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V

    .line 197
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    const/16 v0, 0x413

    if-ne p1, v0, :cond_0

    .line 261
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const-string/jumbo v1, "my_talk"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const-string/jumbo v1, "all_talk"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f030193

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    const v1, 0x7f07031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v0, v5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 71
    const-string/jumbo v2, "all_talk"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v0, v5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    const v2, 0x7f0703c5

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 77
    const-string/jumbo v2, "my_talk"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 81
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->showDialog(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a:Landroid/content/Context;

    const v2, 0x7f07031b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->f:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0705ce

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const v0, 0x7f0705d6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041d

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703d7

    new-instance v2, Lcom/yelp/android/ui/activities/talk/c;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/talk/c;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v2, 0x7f0705cc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/eq;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/eq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eq;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e:Lcom/yelp/android/appdata/webrequests/eq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eq;->cancel(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0506

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/p;

    .line 114
    invoke-interface {v0}, Lcom/yelp/android/ui/p;->a_()V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "my_talk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const-string/jumbo v1, "my_talk"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 249
    const v0, 0x7f0705d0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 251
    const/16 v1, 0x413

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->startActivityForResult(Landroid/content/Intent;I)V

    .line 253
    :cond_0
    return-void
.end method
