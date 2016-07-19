.class public abstract Lcom/yelp/android/ui/activities/support/YelpActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "YelpActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/b;
.implements Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;
.implements Lcom/yelp/android/ui/activities/support/b$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/support/YelpActivity$a;,
        Lcom/yelp/android/ui/activities/support/YelpActivity$b;,
        Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;
    }
.end annotation


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

.field private mDrawerLauncher:Lcom/yelp/android/ui/activities/support/YelpActivity$a;

.field private mDrawerToggle:Landroid/support/v7/app/a;

.field private mFeedHotButton:Landroid/widget/ImageButton;

.field private mHelper:Lcom/yelp/android/ui/activities/support/b;

.field private mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

.field private mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

.field private mKahunaInAppMessageListener:Lcom/kahuna/sdk/p;

.field private mKeyboardListener:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

.field private mNearbyHotButton:Landroid/view/View;

.field mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mPresenter:Lcom/yelp/android/bx/a;

.field private mSearchHotButton:Landroid/view/View;

.field private mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    .line 1265
    new-instance v0, Lcom/yelp/android/ui/activities/support/YelpActivity$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/YelpActivity$1;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKeyboardListener:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    .line 1361
    new-instance v0, Lcom/yelp/android/ui/activities/support/YelpActivity$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/YelpActivity$2;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 1377
    new-instance v0, Lcom/yelp/android/ui/activities/support/YelpActivity$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/YelpActivity$3;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKahunaInAppMessageListener:Lcom/kahuna/sdk/p;

    return-void
.end method

.method static synthetic access$200(Lcom/yelp/android/ui/activities/support/YelpActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yelp/android/ui/activities/support/YelpActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yelp/android/ui/activities/support/YelpActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateIconBadges()V

    return-void
.end method

.method private clearContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1015
    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1016
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1017
    return-object v0
.end method

.method private getReferrerUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1221
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1222
    if-eqz v0, :cond_0

    .line 1234
    :goto_0
    return-object v0

    .line 1229
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_1

    .line 1232
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLaunchFromReferral()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1238
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getReferrerUri()Landroid/net/Uri;

    move-result-object v2

    .line 1239
    if-nez v2, :cond_0

    .line 1251
    :goto_0
    return v0

    .line 1243
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

    .line 1249
    goto :goto_0

    .line 1243
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
    .line 1021
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
    .line 205
    const-string/jumbo v0, "extra.launched_from_push"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    return-void
.end method

.method private shouldLaunchRateAppPrompt()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1167
    instance-of v1, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    if-eqz v1, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return v0

    .line 1171
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    .line 1172
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->j()Ljava/util/Date;

    move-result-object v2

    .line 1173
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->k()I

    move-result v3

    .line 1174
    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1178
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->t()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
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

    .line 1186
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showStartupPrompt()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1197
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->G()Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a(Lcom/yelp/android/serializable/PrivacyPolicy;)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    move-result-object v0

    .line 1202
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1204
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->D()Lcom/yelp/android/serializable/UpdatePrompt;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->a(Lcom/yelp/android/serializable/UpdatePrompt;)Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    move-result-object v0

    .line 1206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1208
    invoke-static {}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a()Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;

    move-result-object v1

    .line 1209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 1211
    sget-object v1, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a:Lcom/yelp/android/appdata/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/appdata/b;Z)V

    goto :goto_0

    .line 1213
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->shouldLaunchRateAppPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AppRate:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1215
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateIconBadges()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1025
    .line 1027
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->e()I

    move-result v0

    .line 1030
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/j;->f()I

    move-result v1

    move v2, v1

    move v1, v0

    .line 1034
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/yelp/android/cm/b;

    invoke-direct {v3, p0, v2}, Lcom/yelp/android/cm/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1039
    :cond_0
    const v0, 0x7f0f0384

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1041
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    new-instance v3, Lcom/yelp/android/cm/c;

    add-int/2addr v1, v2

    invoke-direct {v3, p0, v1}, Lcom/yelp/android/cm/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    :cond_1
    return-void

    :cond_2
    move v1, v0

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method protected addStatusView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->b(Landroid/view/View;)V

    .line 840
    return-void
.end method

.method public clearError()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->r()V

    .line 888
    return-void
.end method

.method public closeNavDrawer()V
    .locals 2

    .prologue
    .line 369
    const v0, 0x7f0f0384

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 370
    if-eqz v0, :cond_0

    .line 371
    const v1, 0x7f0f038b

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 374
    :cond_0
    return-void
.end method

.method protected createErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->k()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method protected createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->l()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    return-object v0
.end method

.method protected disableHotButtons()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setHotButtonKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V

    .line 690
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 691
    return-void
.end method

.method public disableLoading()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->q()V

    .line 863
    return-void
.end method

.method public enableLoading()V
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 853
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
    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 849
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
    .line 857
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 858
    return-void
.end method

.method protected findViewById(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/b;->a(II)Landroid/view/View;

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
    .line 968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 969
    return-void
.end method

.method public freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/k",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 978
    return-void
.end method

.method public getAppData()Lcom/yelp/android/appdata/AppData;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->m()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    return-object v0
.end method

.method public getComponentId()J
    .locals 2

    .prologue
    .line 921
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    return-wide v0
.end method

.method public getDatabase()Lcom/yelp/android/database/g;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->n()Lcom/yelp/android/database/g;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->i()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->o()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/yelp/android/ui/activities/support/b;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    return-object v0
.end method

.method public getInAppNotificationHelper()Lcom/yelp/android/services/push/c;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

    return-object v0
.end method

.method public abstract getIri()Lcom/yelp/android/analytics/iris/ViewIri;
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->j()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
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
    .line 951
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatusBarColor(I)I
    .locals 0

    .prologue
    .line 701
    return p1
.end method

.method public getSuperTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initHelper()V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->d()Landroid/content/res/Resources$Theme;

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
    .line 364
    const v0, 0x7f0f020d

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

    .line 1086
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1089
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->f()V

    .line 738
    return-void
.end method

.method protected hideLogoInToolbar()V
    .locals 3

    .prologue
    .line 1123
    sget-object v0, Lcom/yelp/android/b$a;->TitlebarThemableComponents:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1130
    return-void
.end method

.method public initHelper()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/yelp/android/ui/activities/support/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/b;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    .line 194
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

    .line 621
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 623
    sget-object v1, Lcom/yelp/android/b$a;->ToolbarAttributes:[I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 624
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 626
    if-nez v2, :cond_0

    .line 627
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 628
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 664
    :goto_0
    return-void

    .line 632
    :cond_0
    sget-object v2, Lcom/yelp/android/b$a;->TitlebarThemableComponents:[I

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 634
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 637
    if-eqz v3, :cond_1

    .line 638
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 642
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 645
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 647
    invoke-direct {p0, v2, v6}, Lcom/yelp/android/ui/activities/support/YelpActivity;->paramIsSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 655
    :goto_1
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->paramIsSet(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 659
    :cond_2
    invoke-direct {p0, v2, v7}, Lcom/yelp/android/ui/activities/support/YelpActivity;->paramIsSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 663
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 650
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->a(Z)V

    goto :goto_1
.end method

.method protected initializeHotButtons()V
    .locals 1

    .prologue
    .line 667
    const v0, 0x7f0f0386

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    .line 668
    const v0, 0x7f0f0387

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    .line 669
    const v0, 0x7f0f0388

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    .line 670
    const v0, 0x7f0f0389

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    .line 672
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 673
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 490
    const v0, 0x7f0f0384

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 491
    if-eqz v0, :cond_0

    .line 492
    const v1, 0x7f0f038b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 493
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 297
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsnag/android/Bugsnag;->setContext(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initHelper()V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/os/Bundle;)V

    .line 216
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    sget-object v0, Lcom/yelp/android/b$a;->YelpThemeInfo:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 219
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 221
    if-nez v8, :cond_6

    .line 222
    const v0, 0x7f030063

    invoke-super {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->setContentView(I)V

    .line 234
    :goto_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/16 v0, 0x26

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getStatusBarColor(I)I

    move-result v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 244
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->M()J

    move-result-wide v2

    .line 249
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/yelp/android/appdata/c;->a(J)V

    .line 257
    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    add-long/2addr v2, v10

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    instance-of v0, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onLongTimeSinceLastLaunch()V

    .line 262
    :cond_1
    if-eqz v8, :cond_4

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initializeHotButtons()V

    .line 264
    if-eqz p1, :cond_2

    const-string/jumbo v0, "hot_buttons_disabled"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initializeActionBar()V

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    if-nez v0, :cond_5

    .line 275
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    const-string/jumbo v2, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 282
    :cond_5
    if-nez p1, :cond_7

    .line 283
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 284
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    .line 290
    :goto_1
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKahunaInAppMessageListener:Lcom/kahuna/sdk/p;

    invoke-interface {v0, v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/p;)V

    .line 291
    return-void

    .line 224
    :cond_6
    const v0, 0x7f030100

    invoke-super {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->setContentView(I)V

    .line 225
    const v0, 0x7f0f0384

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 226
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 227
    new-instance v0, Landroid/support/v7/app/a;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerToggle:Landroid/support/v7/app/a;

    .line 228
    new-instance v0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity$a;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/ui/activities/support/YelpActivity$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerLauncher:Lcom/yelp/android/ui/activities/support/YelpActivity$a;

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerLauncher:Lcom/yelp/android/ui/activities/support/YelpActivity$a;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f038b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    goto/16 :goto_0

    .line 286
    :cond_7
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    .line 287
    const-string/jumbo v0, "cached_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_0

    .line 779
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
    .line 786
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_0

    .line 790
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
    .line 556
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 557
    invoke-static {p0, p1}, Lcom/yelp/android/ui/f;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/BroadcastReceiver;

    .line 480
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 481
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->g()V

    .line 485
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 486
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 340
    const v0, 0x7f0f0384

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 341
    const v1, 0x7f0f038b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerLauncher:Lcom/yelp/android/ui/activities/support/YelpActivity$a;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->a(Lcom/yelp/android/ui/activities/support/YelpActivity$a;Landroid/content/Intent;)Landroid/content/Intent;

    .line 347
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

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 354
    :cond_0
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

    .line 355
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_1
    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    .line 360
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    return-void

    .line 359
    :cond_2
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
    .line 907
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 908
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 909
    return-void
.end method

.method protected onLongTimeSinceLastLaunch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->wasLaunchedFromPushNotification()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->wasLaunchedFromExternalRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1146
    invoke-virtual {p0, v1, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->overridePendingTransition(II)V

    .line 1148
    :cond_0
    return-void
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 537
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerToggle:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerToggle:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerIcon:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 544
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->b()V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    invoke-interface {v0}, Lcom/yelp/android/bx/a;->c()V

    .line 466
    :cond_1
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 797
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 798
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/b;->a(ILandroid/app/Dialog;)V

    .line 799
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 947
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1371
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onRestart()V

    .line 1372
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setNearbyHotButtonSelected(Z)V

    .line 1373
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setSearchHotButtonSelected(Z)V

    .line 1374
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setFeedHotButtonSelected(Z)V

    .line 1375
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->c(Landroid/os/Bundle;)V

    .line 526
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/support/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/yelp/android/ui/activities/support/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;

    .line 527
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 406
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 408
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->z()V

    .line 411
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->isLaunchFromReferral()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showStartupPrompt()V

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateIconBadges()V

    .line 416
    const-string/jumbo v0, "com.yelp.android.messages.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 419
    const-string/jumbo v0, "com.yelp.android.notifications.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNotificationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->a()V

    .line 427
    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_2

    .line 429
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

    .line 430
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateHotButtonVisibility()V

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->supportInvalidateOptionsMenu()V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/c;->b()V

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    if-eqz v0, :cond_5

    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    invoke-interface {v0}, Lcom/yelp/android/bx/a;->b()V

    .line 450
    :cond_5
    return-void
.end method

.method protected onSameActivityHotButtonClick()V
    .locals 0

    .prologue
    .line 1162
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 509
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mComponentId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 510
    const-string/jumbo v0, "cached_title"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mCachedTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v0, "hot_buttons_disabled"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->b(Landroid/os/Bundle;)V

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/a;->a(Landroid/os/Bundle;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    invoke-interface {v0, p1}, Lcom/yelp/android/bx/a;->a(Landroid/os/Bundle;)V

    .line 520
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 401
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->a()V

    .line 402
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 471
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->b()V

    .line 472
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 503
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 504
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 891
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 892
    return-void
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 896
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 898
    return-void
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 902
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 903
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 904
    return-void
.end method

.method public registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 1262
    invoke-static {p1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1263
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 566
    if-eqz p1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected removeStatusView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->c(Landroid/view/View;)V

    .line 844
    return-void
.end method

.method public removeToolbarElevation()V
    .locals 2

    .prologue
    .line 882
    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 883
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    .line 884
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 807
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 808
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 809
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 814
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 815
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 816
    return-void
.end method

.method protected setFeedHotButtonSelected(Z)V
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1077
    :cond_0
    return-void
.end method

.method protected setHotButtonKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V

    .line 679
    :cond_0
    return-void
.end method

.method protected setHotButtonListeners()V
    .locals 4

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/support/YelpActivity$b;

    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonNearby:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity$b;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/support/YelpActivity$b;

    invoke-static {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonSearch:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity$b;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/yelp/android/ui/activities/support/YelpActivity$b;

    invoke-static {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonFeed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity$b;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    return-void
.end method

.method protected setNearbyHotButtonSelected(Z)V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1065
    :cond_0
    return-void
.end method

.method protected setPresenter(Lcom/yelp/android/bx/a;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mPresenter:Lcom/yelp/android/bx/a;

    .line 820
    return-void
.end method

.method protected setSearchHotButtonSelected(Z)V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1071
    :cond_0
    return-void
.end method

.method public setSuperTheme(I)V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->setTheme(I)V

    .line 396
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->initHelper()V

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->a(I)V

    .line 391
    return-void
.end method

.method public setupInAppNotification(Ljava/lang/Class;Landroid/content/Context;Lcom/yelp/android/ui/widgets/InAppNotificationView;Lcom/yelp/android/services/push/c$a;)V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Lcom/yelp/android/services/push/c;

    invoke-direct {v0}, Lcom/yelp/android/services/push/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mInAppNotificationHelper:Lcom/yelp/android/services/push/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/c;->a(Ljava/lang/Class;Landroid/content/Context;Lcom/yelp/android/ui/widgets/InAppNotificationView;Lcom/yelp/android/services/push/c$a;)V

    .line 618
    return-void
.end method

.method public showHotButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1094
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKeyboardListener:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V

    .line 1097
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mAreHotButtonsEnabled:Z

    .line 1098
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1101
    return-void
.end method

.method public showInfoDialog(I)V
    .locals 3

    .prologue
    .line 754
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 755
    return-void
.end method

.method public showInfoDialog(II)V
    .locals 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 765
    return-void
.end method

.method public showInfoDialog(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/support/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 760
    return-void
.end method

.method public showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 770
    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(I)V

    .line 708
    return-void
.end method

.method public showLoadingDialog(I)V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 723
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
    .line 712
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 713
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
    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 728
    return-void
.end method

.method public showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/b$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 718
    return-void
.end method

.method public showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/b$b;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 733
    return-void
.end method

.method protected showLogoInToolbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1108
    sget-object v0, Lcom/yelp/android/b$a;->TitlebarThemableComponents:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1112
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1117
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    .line 1118
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    return-void
.end method

.method public showShareSheet(Lcom/yelp/android/services/ShareFormatter;)V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/yelp/android/ui/activities/support/a;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/support/a;-><init>(Landroid/app/Activity;Lcom/yelp/android/services/ShareFormatter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mShareSheetHelper:Lcom/yelp/android/ui/activities/support/a;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/a;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 606
    return-void
.end method

.method public showYesNoDialog(IIII)V
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showYesNoDialog(Ljava/lang/CharSequence;III)V

    .line 744
    return-void
.end method

.method public showYesNoDialog(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHelper:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/support/b;->a(Ljava/lang/CharSequence;III)V

    .line 750
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 586
    invoke-static {p1}, Lcom/yelp/android/util/h;->a(Landroid/content/Intent;)V

    .line 587
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 588
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 596
    invoke-static {p2}, Lcom/yelp/android/util/h;->a(Landroid/content/Intent;)V

    .line 597
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/app/ActionBarActivity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 598
    return-void
.end method

.method public thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
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
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 993
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 996
    :cond_0
    return-object p2
.end method

.method public thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/k",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mApiWorkerFragment:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 1010
    :cond_0
    return-object p2
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mBroadcastReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 578
    :cond_0
    return-void
.end method

.method protected updateHotButtonVisibility()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/yelp/android/b$a;->YelpThemeInfo:[I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 316
    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 319
    if-nez v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableHotButtons()V

    goto :goto_0

    .line 327
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

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setHotButtonListeners()V

    .line 333
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showHotButtons()V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mHotButtons:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity;->mKeyboardListener:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->setKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V

    goto :goto_0
.end method

.method public updateOptionsMenu()V
    .locals 0

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->supportInvalidateOptionsMenu()V

    .line 533
    return-void
.end method

.method protected wasLaunchedFromExternalRequest()Z
    .locals 3

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "yelp:external_request"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected wasLaunchedFromPushNotification()Z
    .locals 3

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.launched_from_push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
