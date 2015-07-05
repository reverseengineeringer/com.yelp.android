.class public abstract Lcom/yelp/android/ui/activities/support/YelpActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "YelpActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/drawer/o;
.implements Lcom/yelp/android/ui/activities/ez;
.implements Lcom/yelp/android/ui/activities/support/n;


# static fields
.field public static final API_WORKER_FRAGMENT:Ljava/lang/String; = "API_WORKER_FRAGMENT"

.field private static final DAYS_INSTALLED_BEFORE_RATE_APP:I = 0xa

.field private static final EXTRA_ANDROID_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field private static final EXTRA_ANDROID_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field private static final EXTRA_LAUNCHED_FROM_PUSH:Ljava/lang/String; = "extra.launched_from_push"

.field private static final GOOGLE_MARKET_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final SAVED_CACHED_TITLE:Ljava/lang/String; = "cached_title"

.field private static final SAVED_HOT_BUTTONS_ENABLED:Ljava/lang/String; = "hot_buttons_disabled"

.field private static final SAVED_ID:Ljava/lang/String; = "id"

.field private static final TOOLBAR_HOME_AS_UP:I = 0x2

.field private static final TOOLBAR_SHOW_TITLE:I = 0x4

.field private static final TOOLBAR_USE_CUSTOM:I = 0x8


# instance fields
.field private mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

.field private mAreHotButtonsEnabled:Z

.field private final mBroadcastReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedTitle:Ljava/lang/String;

.field private mComponentId:J

.field private mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

.field private mDrawerLauncher:Lcom/yelp/android/ui/activities/support/f;

.field private mDrawerToggle:Landroid/support/v7/app/p;

.field private mFeedHotButton:Landroid/widget/ImageButton;

.field private mHelper:Lcom/yelp/android/ui/activities/support/h;

.field private mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

.field private mKeyboardListener:Lcom/yelp/android/ui/view/a;

.field private mNearbyHotButton:Landroid/view/View;

.field mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchHotButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    .line 1152
    new-instance v0, Lcom/yelp/android/ui/activities/support/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/d;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKeyboardListener:Lcom/yelp/android/ui/view/a;

    .line 1233
    new-instance v0, Lcom/yelp/android/ui/activities/support/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/e;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$200(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateIconBadges()V

    return-void
.end method

.method private clearContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 920
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 921
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 922
    return-object v0
.end method

.method private getReferrerUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1108
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1109
    if-eqz v0, :cond_0

    .line 1121
    :goto_0
    return-object v0

    .line 1116
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_1

    .line 1119
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLaunchFromReferral()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1125
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getReferrerUri()Landroid/net/Uri;

    move-result-object v2

    .line 1126
    if-nez v2, :cond_0

    .line 1138
    :goto_0
    return v0

    .line 1130
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getReferrerUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 1136
    goto :goto_0

    .line 1130
    :sswitch_0
    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "android-app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x310888 -> :sswitch_0
        0x5f008eb -> :sswitch_1
        0x37cf55c3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private paramIsSet(II)Z
    .locals 1

    .prologue
    .line 926
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIntentAsFromPushNotification(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 185
    const-string/jumbo v0, "extra.launched_from_push"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method private shouldLaunchRateAppPrompt()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1062
    instance-of v1, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    if-eqz v1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v0

    .line 1066
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->h()Ljava/util/Date;

    move-result-object v2

    .line 1068
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->i()I

    move-result v3

    .line 1069
    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1072
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->n()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 1079
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1080
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showStartupPrompt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1090
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->E()Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a(Lcom/yelp/android/serializable/PrivacyPolicy;)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    move-result-object v0

    .line 1095
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1097
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->B()Lcom/yelp/android/serializable/UpdatePrompt;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->a(Lcom/yelp/android/serializable/UpdatePrompt;)Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    move-result-object v0

    .line 1099
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->shouldLaunchRateAppPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRate:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1102
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateIconBadges()V
    .locals 3

    .prologue
    .line 930
    const/4 v0, 0x0

    .line 931
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->d()I

    move-result v0

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 937
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/yelp/android/bd/b;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/bd/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 941
    :cond_1
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 942
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 945
    :cond_2
    return-void
.end method


# virtual methods
.method protected addStatusView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->b(Landroid/view/View;)V

    .line 742
    return-void
.end method

.method public clearError()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->r()V

    .line 790
    return-void
.end method

.method public closeNavDrawer()V
    .locals 2

    .prologue
    .line 339
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 340
    if-eqz v0, :cond_0

    .line 341
    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 344
    :cond_0
    return-void
.end method

.method protected createErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->k()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method protected createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->l()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    return-object v0
.end method

.method protected disableHotButtons()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setHotButtonKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    .line 595
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 596
    return-void
.end method

.method public disableLoading()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->q()V

    .line 765
    return-void
.end method

.method public enableLoading()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 755
    return-void
.end method

.method public enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 751
    return-void
.end method

.method public enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;I)V"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 760
    return-void
.end method

.method protected findViewById(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/h;->a(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 870
    return-void
.end method

.method public freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 879
    return-void
.end method

.method public getAppData()Lcom/yelp/android/appdata/AppData;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->m()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    return-object v0
.end method

.method public getComponentId()J
    .locals 2

    .prologue
    .line 823
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    return-wide v0
.end method

.method public getDatabase()Lcom/yelp/android/database/q;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->n()Lcom/yelp/android/database/q;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->i()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->o()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/yelp/android/ui/activities/support/h;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    return-object v0
.end method

.method public abstract getIri()Lcom/yelp/android/analytics/iris/ViewIri;
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->j()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
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
    .line 851
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatusBarColor(I)I
    .locals 0

    .prologue
    .line 606
    return p1
.end method

.method public getSuperTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initHelper()V

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->d()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsToHideOnDrawerSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideHotButtons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 995
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 998
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->f()V

    .line 643
    return-void
.end method

.method protected hideLogoInToolbar()V
    .locals 3

    .prologue
    .line 1031
    sget-object v0, Lcom/yelp/android/b;->TitlebarThemableComponents:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1033
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1035
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1036
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1037
    return-void
.end method

.method public initHelper()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/yelp/android/ui/activities/support/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/h;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    .line 178
    :cond_0
    return-void
.end method

.method protected initializeActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 528
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 530
    sget-object v1, Lcom/yelp/android/b;->ToolbarAttributes:[I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 531
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 533
    if-nez v2, :cond_0

    .line 534
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 535
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 570
    :goto_0
    return-void

    .line 539
    :cond_0
    sget-object v2, Lcom/yelp/android/b;->TitlebarThemableComponents:[I

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 541
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 543
    if-eqz v3, :cond_1

    .line 544
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 548
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 551
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 553
    invoke-direct {p0, v2, v6}, Lcom/yelp/android/ui/activities/support/YelpActivity;->paramIsSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 561
    :goto_1
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->paramIsSet(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 565
    :cond_2
    invoke-direct {p0, v2, v7}, Lcom/yelp/android/ui/activities/support/YelpActivity;->paramIsSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 569
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->a(Z)V

    goto :goto_1
.end method

.method protected initializeHotButtons()V
    .locals 1

    .prologue
    .line 573
    const v0, 0x7f0c02fe

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    .line 574
    const v0, 0x7f0c02ff

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    .line 575
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    .line 576
    const v0, 0x7f0c0301

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    .line 578
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 579
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 445
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 446
    if-eqz v0, :cond_0

    .line 447
    const v1, 0x7f0c0303

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initHelper()V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->a(Landroid/os/Bundle;)V

    .line 193
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    sget-object v0, Lcom/yelp/android/b;->YelpThemeInfo:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 196
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 198
    if-nez v8, :cond_6

    .line 199
    const v0, 0x7f030057

    invoke-super {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->setContentView(I)V

    .line 211
    :goto_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/16 v0, 0x23

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getStatusBarColor(I)I

    move-result v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 219
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/i;->K()J

    move-result-wide v2

    .line 224
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/yelp/android/appdata/i;->a(J)V

    .line 226
    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    add-long/2addr v2, v10

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onLongTimeSinceLastLaunch()V

    .line 230
    :cond_1
    if-eqz v8, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initializeHotButtons()V

    .line 232
    if-eqz p1, :cond_2

    const-string/jumbo v0, "hot_buttons_disabled"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initializeActionBar()V

    .line 238
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    if-nez v0, :cond_5

    .line 241
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 242
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    const-string/jumbo v2, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 246
    :cond_5
    if-nez p1, :cond_7

    .line 247
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 248
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    .line 253
    :goto_1
    return-void

    .line 201
    :cond_6
    const v0, 0x7f0300ce

    invoke-super {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->setContentView(I)V

    .line 202
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 203
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 204
    new-instance v0, Landroid/support/v7/app/p;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/p;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerToggle:Landroid/support/v7/app/p;

    .line 205
    new-instance v0, Lcom/yelp/android/ui/activities/support/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/support/f;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/ui/activities/support/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerLauncher:Lcom/yelp/android/ui/activities/support/f;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerLauncher:Lcom/yelp/android/ui/activities/support/f;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/t;)V

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    goto/16 :goto_0

    .line 250
    :cond_7
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    .line 251
    const-string/jumbo v0, "cached_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_0

    .line 684
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    .line 695
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 504
    invoke-static {p0, p1}, Lcom/yelp/android/ui/k;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/BroadcastReceiver;

    .line 436
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 437
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 441
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 303
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 304
    const v1, 0x7f0c0303

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerLauncher:Lcom/yelp/android/ui/activities/support/f;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/support/f;->a(Lcom/yelp/android/ui/activities/support/f;Landroid/content/Intent;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLogoInToolbar()V

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getViewsToHideOnDrawerSelected()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 325
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_2
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    .line 330
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    return-void

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 809
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 810
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 811
    return-void
.end method

.method protected onLongTimeSinceLastLaunch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->wasLaunchedFromPushNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1051
    invoke-virtual {p0, v1, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->overridePendingTransition(II)V

    .line 1053
    :cond_0
    return-void
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 484
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerToggle:Landroid/support/v7/app/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerToggle:Landroid/support/v7/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/p;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerIcon:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->b()V

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    .line 422
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 703
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/h;->a(ILandroid/app/Dialog;)V

    .line 704
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 847
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->c(Landroid/os/Bundle;)V

    .line 474
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 376
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 378
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->u()V

    .line 381
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->isLaunchFromReferral()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showStartupPrompt()V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateIconBadges()V

    .line 386
    const-string/jumbo v0, "com.yelp.android.messages.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 388
    const-string/jumbo v0, "com.yelp.android.notifications.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->a()V

    .line 395
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getViewsToHideOnDrawerSelected()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    .line 409
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->supportInvalidateOptionsMenu()V

    .line 410
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 464
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 465
    const-string/jumbo v0, "cached_title"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "hot_buttons_disabled"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->b(Landroid/os/Bundle;)V

    .line 468
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 371
    invoke-static {}, Lcom/kahuna/sdk/h;->c()V

    .line 372
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 427
    invoke-static {}, Lcom/kahuna/sdk/h;->d()V

    .line 428
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 458
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 459
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 793
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 794
    return-void
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 1

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 798
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 799
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 800
    return-void
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V
    .locals 1

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 804
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 805
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 806
    return-void
.end method

.method public registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 1149
    invoke-static {p1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1150
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 513
    if-eqz p1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected removeStatusView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->c(Landroid/view/View;)V

    .line 746
    return-void
.end method

.method public removeToolbarElevation()V
    .locals 2

    .prologue
    .line 784
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 785
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->f(Landroid/view/View;F)V

    .line 786
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 713
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 714
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 715
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 720
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 721
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 722
    return-void
.end method

.method protected setFeedHotButtonSelected(Z)V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 986
    :cond_0
    return-void
.end method

.method protected setHotButtonKeyboardListener(Lcom/yelp/android/ui/view/a;)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    .line 585
    :cond_0
    return-void
.end method

.method protected setHotButtonListeners()V
    .locals 4

    .prologue
    .line 948
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/support/g;

    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonNearby:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/support/g;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/support/g;

    invoke-static {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonSearch:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/support/g;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/yelp/android/ui/activities/support/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonFeed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/support/c;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    return-void
.end method

.method protected setNearbyHotButtonSelected(Z)V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 974
    :cond_0
    return-void
.end method

.method protected setSearchHotButtonSelected(Z)V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 980
    :cond_0
    return-void
.end method

.method public setSuperTheme(I)V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->setTheme(I)V

    .line 366
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initHelper()V

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/h;->a(I)V

    .line 361
    return-void
.end method

.method public showHotButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1003
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKeyboardListener:Lcom/yelp/android/ui/view/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    .line 1006
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    .line 1007
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1010
    return-void
.end method

.method public showInfoDialog(I)V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 660
    return-void
.end method

.method public showInfoDialog(II)V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 670
    return-void
.end method

.method public showInfoDialog(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/support/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method

.method public showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 675
    return-void
.end method

.method protected showLoadingDialog()V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(I)V

    .line 613
    return-void
.end method

.method public showLoadingDialog(I)V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 628
    return-void
.end method

.method public showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V

    .line 618
    return-void
.end method

.method public showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;I)V"
        }
    .end annotation

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V

    .line 633
    return-void
.end method

.method public showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V

    .line 623
    return-void
.end method

.method public showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/l;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V

    .line 638
    return-void
.end method

.method protected showLogoInToolbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1017
    sget-object v0, Lcom/yelp/android/b;->TitlebarThemableComponents:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1019
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1023
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1025
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    .line 1026
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1027
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    return-void
.end method

.method public showYesNoDialog(IIII)V
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showYesNoDialog(Ljava/lang/CharSequence;III)V

    .line 649
    return-void
.end method

.method public showYesNoDialog(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/support/h;->a(Ljava/lang/CharSequence;III)V

    .line 655
    return-void
.end method

.method public thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 901
    :cond_0
    return-object p2
.end method

.method public thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 911
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 915
    :cond_0
    return-object p2
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 525
    :cond_0
    return-void
.end method

.method protected updateHotButtonVisibility()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/yelp/android/b;->YelpThemeInfo:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 282
    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableHotButtons()V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    if-nez v0, :cond_3

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setHotButtonListeners()V

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showHotButtons()V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKeyboardListener:Lcom/yelp/android/ui/view/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/a;)V

    goto :goto_0
.end method

.method public updateOptionsMenu()V
    .locals 0

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->supportInvalidateOptionsMenu()V

    .line 480
    return-void
.end method

.method protected wasLaunchedFromPushNotification()Z
    .locals 3

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.launched_from_push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
