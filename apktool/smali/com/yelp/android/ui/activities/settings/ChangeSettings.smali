.class public Lcom/yelp/android/ui/activities/settings/ChangeSettings;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/settings/an;
.implements Lcom/yelp/android/ui/activities/support/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;",
        "Lcom/yelp/android/ui/activities/settings/an;",
        "Lcom/yelp/android/ui/activities/support/o;"
    }
.end annotation


# static fields
.field private static final i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field private static final j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/er;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/DialogInterface$OnClickListener;

.field d:Landroid/content/DialogInterface$OnClickListener;

.field e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/yelp/android/appdata/webrequests/eq;

.field private h:Landroid/app/AlertDialog;

.field private k:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/yelp/android/ui/activities/settings/q;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/settings/t;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ao;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/content/SharedPreferences;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-array v0, v4, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->ALL_CITIES:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->MY_CITY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->ALL_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->AFTER_CHECK_IN:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->WEEKENDS_ONLY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 554
    new-instance v0, Lcom/yelp/android/ui/activities/settings/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/n;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b:Lcom/yelp/android/appdata/webrequests/m;

    .line 926
    new-instance v0, Lcom/yelp/android/ui/activities/settings/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/e;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 940
    new-instance v0, Lcom/yelp/android/ui/activities/settings/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/f;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 953
    new-instance v0, Lcom/yelp/android/ui/activities/settings/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/g;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    const-string/jumbo v1, "preferences.resourceid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    const-string/jumbo v1, "preferences.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Lcom/yelp/android/appdata/webrequests/eq;)Lcom/yelp/android/appdata/webrequests/eq;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g:Lcom/yelp/android/appdata/webrequests/eq;

    return-object p1
.end method

.method public static a(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f07031a

    .line 465
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    if-nez v0, :cond_0

    .line 468
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->p()Ljava/lang/String;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 477
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 481
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 482
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Z)Z
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Lcom/yelp/android/appdata/webrequests/eq;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g:Lcom/yelp/android/appdata/webrequests/eq;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f()V

    return-void
.end method

.method static synthetic d()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-object v0
.end method

.method static synthetic e()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 578
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p0, p0, v1, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    const v0, 0x7f0c046c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 675
    new-instance v0, Lcom/yelp/android/ui/activities/settings/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/o;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 682
    new-instance v1, Lcom/yelp/android/ui/activities/settings/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/settings/d;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 698
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 699
    const v3, 0x7f07034a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700c1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0706ba

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070111

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Landroid/app/AlertDialog;

    .line 706
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 707
    return-void
.end method

.method private h()Ljava/lang/CharSequence;
    .locals 15

    .prologue
    const/16 v14, 0x21

    .line 870
    const v0, 0x7f0705da

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    const v1, 0x7f070499

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 872
    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    const v3, 0x7f0701ce

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 875
    const v4, 0x7f07049d

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 876
    const v5, 0x7f0705db

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 877
    const v6, 0x7f07007c

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 878
    const v7, 0x7f0701cf

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 880
    const v8, 0x7f070616

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 882
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 884
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 885
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    .line 887
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 888
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v11

    .line 890
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 891
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v12

    .line 893
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 894
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v8

    .line 896
    new-instance v13, Landroid/text/style/URLSpan;

    invoke-direct {v13, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13, v10, v0, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 898
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v11, v1, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 900
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v12, v2, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 902
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v8, v3, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 905
    return-object v9
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    .line 753
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 754
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 755
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget-object v4, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/settings/ao;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/settings/ao;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 753
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c01d4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    .line 763
    if-eqz v0, :cond_2

    .line 765
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a()V

    .line 767
    :cond_2
    return-void
.end method

.method a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    .line 727
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-interface {p2, p0, p3, v0}, Lcom/yelp/android/ui/activities/settings/t;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    return-void
.end method

.method public a(ILjava/lang/CharSequence;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const v2, 0x7f0c01d4

    .line 331
    const v0, 0x7f030166

    if-ne p1, v0, :cond_1

    const v0, 0x7f030177

    .line 332
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(ILjava/lang/CharSequence;I)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/an;)V

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Landroid/util/SparseArray;)V

    .line 337
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 344
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 345
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 845
    if-nez p1, :cond_0

    .line 867
    :goto_0
    return-void

    .line 849
    :cond_0
    const v0, 0x7f0c048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 850
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h()Ljava/lang/CharSequence;

    move-result-object v1

    .line 851
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 854
    const v0, 0x7f0c048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 855
    const v1, 0x7f0701db

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x7df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    const v0, 0x7f0c048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 858
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v2, 0x7f070617

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 859
    const-string/jumbo v2, "%1$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 861
    const-string/jumbo v2, "%2$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 863
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    const v0, 0x7f0c048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 866
    const v1, 0x7f07065c

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method a(Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 3

    .prologue
    .line 916
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fl;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/fl;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/location/Location;Ljava/lang/String;)V

    .line 921
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 922
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 923
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 830
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 831
    invoke-virtual {p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 834
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 835
    invoke-virtual {p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 837
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    .line 838
    return-void
.end method

.method public a(Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g()V

    .line 808
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aq;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/aq;-><init>(Lcom/yelp/android/av/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/aq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 809
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/fg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/fg",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/fg;)V

    .line 803
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 804
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 638
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_0
    :pswitch_0
    return-void

    .line 640
    :pswitch_1
    const v0, 0x7f0c0467

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0

    .line 643
    :pswitch_2
    const v0, 0x7f0c0468

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0

    .line 646
    :pswitch_3
    const v0, 0x7f0704a0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x7f07049e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->PrivacySettings:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 653
    :pswitch_4
    invoke-static {p0, v5}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    .line 654
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->finish()V

    goto :goto_0

    .line 657
    :pswitch_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g()V

    goto :goto_0

    .line 660
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 661
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 666
    :pswitch_6
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0463
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/q;)V
    .locals 2

    .prologue
    .line 812
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Lcom/yelp/android/ui/activities/settings/q;

    .line 813
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 815
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c01d4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    .line 741
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Ljava/lang/String;)V

    .line 745
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 590
    if-eqz p3, :cond_0

    .line 591
    const v0, 0x7f07031a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    invoke-static {v0, p2, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 592
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    .line 600
    :goto_0
    return-void

    .line 596
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/settings/p;

    new-instance v1, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/settings/p;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Landroid/location/Geocoder;)V

    .line 598
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 599
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/h;->a(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/t;

    .line 605
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 606
    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, p1, v2}, Lcom/yelp/android/ui/activities/settings/t;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 610
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public b(Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 818
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ar;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/ar;-><init>(Lcom/yelp/android/av/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ar;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 819
    return-void
.end method

.method public c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Settings:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public k_()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 771
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)V

    .line 792
    :goto_0
    return-void

    .line 773
    :cond_0
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_2

    .line 774
    if-ne v1, p2, :cond_1

    .line 775
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Lcom/yelp/android/ui/activities/settings/q;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/settings/q;->a()V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Lcom/yelp/android/ui/activities/settings/q;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/settings/q;->b()V

    goto :goto_0

    .line 779
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    .line 780
    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 787
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    goto :goto_0

    .line 790
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 617
    if-lez v1, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 624
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 625
    return-void

    .line 620
    :cond_0
    const v1, 0x7f0703d7

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 621
    const v2, 0x7f0c01d4

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    if-eqz p1, :cond_0

    .line 193
    const-string/jumbo v0, "has_logged_out"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->p:Z

    .line 196
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Landroid/net/ConnectivityManager;

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "preferences.name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    .line 205
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v2, 0x7f07033f

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const/16 v5, 0xc8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/fg;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    const v1, 0x7f070312

    new-instance v2, Lcom/yelp/android/ui/activities/settings/y;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/y;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 210
    const v1, 0x7f07031c

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ae;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/ae;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 211
    const v1, 0x7f070317

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ac;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/ac;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 212
    const v1, 0x7f070313

    new-instance v2, Lcom/yelp/android/ui/activities/settings/z;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/z;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 213
    const v1, 0x7f07031d

    new-instance v2, Lcom/yelp/android/ui/activities/settings/af;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/af;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 214
    const v1, 0x7f07030f

    new-instance v2, Lcom/yelp/android/ui/activities/settings/x;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/x;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 215
    const v1, 0x7f070318

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ap;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/ap;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 216
    const v1, 0x7f07030e

    new-instance v2, Lcom/yelp/android/ui/activities/settings/r;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/r;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 217
    const v1, 0x7f070310

    new-instance v2, Lcom/yelp/android/ui/activities/settings/v;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/v;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 218
    const v1, 0x7f070311

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ah;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/ah;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 219
    const v1, 0x7f070316

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ab;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/ab;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 220
    const v1, 0x7f070315

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ad;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/ad;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 221
    const v1, 0x7f07030d

    new-instance v2, Lcom/yelp/android/ui/activities/settings/w;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/settings/w;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/ui/activities/settings/t;Landroid/content/SharedPreferences$Editor;)V

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    const v1, 0x7f0c046a

    new-instance v2, Lcom/yelp/android/ui/activities/settings/c;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/settings/c;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    const v1, 0x7f0c046c

    new-instance v2, Lcom/yelp/android/ui/activities/settings/h;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/settings/h;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    const v1, 0x7f0c0466

    new-instance v2, Lcom/yelp/android/ui/activities/settings/i;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->o:Landroid/content/SharedPreferences;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/settings/i;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    const v1, 0x7f0c0464

    new-instance v2, Lcom/yelp/android/ui/activities/settings/j;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/settings/j;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->n:Landroid/util/SparseArray;

    const v1, 0x7f0c0463

    new-instance v2, Lcom/yelp/android/ui/activities/settings/k;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/settings/k;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a:Landroid/view/View;

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 298
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "preferences.resourceid"

    const v2, 0x7f030166

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "preferences.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    if-nez v0, :cond_2

    const v0, 0x7f0703d7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILjava/lang/CharSequence;)V

    .line 303
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v4, 0x7f0705cb

    const v3, 0x7f07041d

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v1

    .line 362
    packed-switch p1, :pswitch_data_0

    .line 459
    :pswitch_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 364
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0706b8

    new-instance v2, Lcom/yelp/android/ui/activities/settings/l;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/settings/l;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703e9

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Landroid/content/Context;)Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v1

    .line 384
    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->DistanceUnit:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v3, "unit"

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070211

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070111

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->getResourceNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->ordinal()I

    move-result v1

    new-instance v4, Lcom/yelp/android/ui/activities/settings/m;

    invoke-direct {v4, p0, v0}, Lcom/yelp/android/ui/activities/settings/m;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Lcom/yelp/android/appdata/LocaleSettings;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 402
    :pswitch_3
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->DEFAULT_LOCATION:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 403
    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v0

    .line 407
    :cond_0
    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    array-length v3, v1

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_9

    .line 408
    sget-object v4, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aget-object v4, v4, v1

    if-ne v4, v0, :cond_1

    move v0, v1

    .line 413
    :goto_2
    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 414
    sget-object v3, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    array-length v3, v3

    :goto_3
    if-ge v2, v3, :cond_2

    .line 415
    sget-object v4, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->titleRes:I

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v2

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 407
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07040f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 424
    :pswitch_4
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->DEFAULT_SCHEDULE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 425
    if-eqz v1, :cond_3

    .line 426
    invoke-virtual {v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    .line 428
    :cond_3
    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    array-length v1, v1

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 429
    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    array-length v4, v1

    move v1, v2

    :goto_4
    if-ge v1, v4, :cond_4

    .line 430
    sget-object v5, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->titleRes:I

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 433
    :cond_4
    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    array-length v4, v1

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_5

    .line 434
    sget-object v5, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aget-object v5, v5, v1

    if-ne v0, v5, :cond_6

    move v2, v1

    .line 439
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07040c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 433
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 445
    :pswitch_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 447
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 453
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07066f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_2

    .line 362
    :pswitch_data_0
    .packed-switch 0x7f0c0463
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
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
    .line 823
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 824
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 825
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/dc;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 630
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c01d4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    .line 632
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/view/View;)V

    .line 633
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    const-string/jumbo v0, "has_logged_out"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p2, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    return-void
.end method
