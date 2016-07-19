.class public Lcom/yelp/android/ui/activities/settings/ChangeSettings;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/support/v4/app/l$b;
.implements Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;
.implements Lcom/yelp/android/ui/activities/support/b$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;,
        Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;
    }
.end annotation


# static fields
.field private static h:Lcom/yelp/android/appdata/webrequests/f;

.field private static i:Lcom/yelp/android/appdata/webrequests/core/c$a;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Lcom/yelp/android/appdata/webrequests/dr;

.field private e:Landroid/app/AlertDialog;

.field private f:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;

.field private j:Landroid/content/SharedPreferences;

.field private k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ck/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/cj/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 1002
    new-instance v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$9;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 885
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    const-string/jumbo v1, "preferences.resourceid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    const-string/jumbo v1, "preferences.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/support/v4/app/l;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$5;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$5;-><init>(Landroid/content/Context;Landroid/support/v4/app/l;)V

    .line 583
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Lcom/yelp/android/appdata/webrequests/dr;)Lcom/yelp/android/appdata/webrequests/dr;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->d:Lcom/yelp/android/appdata/webrequests/dr;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/k$b;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->k()Ljava/lang/String;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_1

    .line 453
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;Lcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 828
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 469
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    if-eqz p3, :cond_1

    const v0, 0x7f0706fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 476
    :goto_0
    if-eqz v0, :cond_0

    .line 477
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;Landroid/support/v4/app/l;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 478
    new-instance v0, Lcom/yelp/android/appdata/webrequests/f;

    sget-object v2, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, p4, v2}, Lcom/yelp/android/appdata/webrequests/f;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    sput-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Lcom/yelp/android/appdata/webrequests/f;

    .line 480
    sget-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Lcom/yelp/android/appdata/webrequests/f;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/f;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 482
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 472
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Ljava/util/Map;

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    if-eqz p3, :cond_2

    .line 819
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Z)Z
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Lcom/yelp/android/appdata/webrequests/dr;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->d:Lcom/yelp/android/appdata/webrequests/dr;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dr$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V

    .line 622
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 627
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p0, p0, v1, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 633
    :goto_0
    return-void

    .line 632
    :cond_0
    const v0, 0x7f0f0572

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 764
    new-instance v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$7;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 772
    new-instance v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$8;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 790
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070140

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07068c

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07018f

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e:Landroid/app/AlertDialog;

    .line 798
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 799
    return-void
.end method

.method private g()Ljava/lang/CharSequence;
    .locals 15

    .prologue
    const/16 v14, 0x21

    .line 947
    const v0, 0x7f0705c4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 948
    const v1, 0x7f0704b3

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    const v2, 0x7f0700f6

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 950
    const v3, 0x7f07021b

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 952
    const v4, 0x7f0704b7

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 953
    const v5, 0x7f0705c5

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 954
    const v6, 0x7f0700f7

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 955
    const v7, 0x7f07021c

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 957
    const v8, 0x7f070603

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

    .line 964
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 966
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 967
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    .line 969
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 970
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v11

    .line 972
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 973
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v12

    .line 975
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 976
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v8

    .line 978
    new-instance v13, Landroid/text/style/URLSpan;

    invoke-direct {v13, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13, v10, v0, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 983
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v11, v1, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 988
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v12, v2, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 993
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v8, v3, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 999
    return-object v9
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v1

    .line 664
    if-lez v1, :cond_0

    .line 665
    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->b(I)Landroid/support/v4/app/l$a;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/l$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 672
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 673
    return-void

    .line 667
    :cond_0
    const v1, 0x7f070409

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    const v2, 0x7f0f020d

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const v2, 0x7f0f020d

    .line 333
    const v0, 0x7f0301d3

    if-ne p1, v0, :cond_1

    const v0, 0x7f0301eb

    .line 334
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(ILjava/lang/CharSequence;I)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;)V

    .line 337
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Ljava/util/Map;)V

    .line 339
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/o;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    .line 347
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 348
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 922
    if-nez p1, :cond_0

    .line 944
    :goto_0
    return-void

    .line 926
    :cond_0
    const v0, 0x7f0f0591

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 927
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g()Ljava/lang/CharSequence;

    move-result-object v1

    .line 928
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 931
    const v0, 0x7f0f0592

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 932
    const v1, 0x7f070228

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    const v0, 0x7f0f0593

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 935
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v2, 0x7f070604

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 936
    const-string/jumbo v2, "%1$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020586

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 938
    const-string/jumbo v2, "%2$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020585

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    const v0, 0x7f0f0595

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 943
    const v1, 0x7f070720

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g()V

    .line 898
    new-instance v0, Lcom/yelp/android/appdata/webrequests/an;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/an;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/an;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 899
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V

    .line 893
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 894
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;)V
    .locals 2

    .prologue
    .line 902
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g:Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;

    .line 903
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 905
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 707
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 709
    :pswitch_1
    const v0, 0x7f0f0569

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0

    .line 712
    :pswitch_2
    const v0, 0x7f0f056a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showDialog(I)V

    goto :goto_0

    .line 715
    :pswitch_3
    const v0, 0x7f0704ba

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x7f0704b8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->PrivacySettings:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 726
    :pswitch_4
    invoke-static {p0, v6}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    .line 727
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->finish()V

    goto :goto_0

    .line 730
    :pswitch_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f()V

    goto :goto_0

    .line 733
    :cond_1
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 734
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 738
    :pswitch_6
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BackgroundLocationSettings:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 743
    :pswitch_7
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    const/16 v0, 0xfa

    new-array v1, v3, [Lcom/yelp/android/appdata/PermissionGroup;

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationChanged:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "toggle_on"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    goto/16 :goto_0

    .line 751
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationChanged:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "toggle_on"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->b()V

    goto/16 :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x7f0f0568
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    .line 839
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Ljava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ck/g;

    invoke-interface {v0, p0, p1, p2}, Lcom/yelp/android/ck/g;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V

    .line 657
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 640
    if-eqz p3, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:Landroid/content/SharedPreferences;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()V

    .line 652
    :goto_0
    return-void

    .line 646
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;

    new-instance v1, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Landroid/location/Geocoder;Ljava/lang/String;)V

    .line 650
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 651
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const v2, 0x7f0f020d

    .line 352
    invoke-static {p1, p2}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Ljava/util/List;Ljava/lang/String;)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;)V

    .line 354
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Ljava/util/Map;)V

    .line 356
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/o;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 365
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 908
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ao;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/ao;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ao;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 909
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    .line 854
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a()V

    .line 858
    :cond_0
    return-void
.end method

.method public d()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 803
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Settings:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 862
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    .line 863
    if-ne v1, p2, :cond_0

    .line 864
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g:Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;->a()V

    .line 882
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->g:Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$b;->b()V

    goto :goto_0

    .line 868
    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 869
    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 876
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()V

    goto :goto_0

    .line 879
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 880
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->startActivity(Landroid/content/Intent;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const-string/jumbo v0, "has_logged_out"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Z

    .line 200
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c:Landroid/net/ConnectivityManager;

    .line 202
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:Landroid/content/SharedPreferences;

    .line 204
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v1, 0x7f070379

    sget-object v2, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/FacebookConnectManager$a;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->f:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 209
    const v0, 0x7f0706f7

    new-instance v1, Lcom/yelp/android/cj/d;

    invoke-direct {v1}, Lcom/yelp/android/cj/d;-><init>()V

    new-instance v2, Lcom/yelp/android/ck/d;

    invoke-direct {v2}, Lcom/yelp/android/ck/d;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 213
    const v0, 0x7f070707

    new-instance v1, Lcom/yelp/android/cj/j;

    invoke-direct {v1}, Lcom/yelp/android/cj/j;-><init>()V

    new-instance v2, Lcom/yelp/android/ck/f;

    invoke-direct {v2}, Lcom/yelp/android/ck/f;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 217
    const v0, 0x7f0706f9

    new-instance v1, Lcom/yelp/android/cj/e;

    invoke-direct {v1}, Lcom/yelp/android/cj/e;-><init>()V

    new-instance v2, Lcom/yelp/android/ck/e;

    invoke-direct {v2}, Lcom/yelp/android/ck/e;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 221
    const v0, 0x7f0706ef

    new-instance v1, Lcom/yelp/android/cj/b;

    invoke-direct {v1}, Lcom/yelp/android/cj/b;-><init>()V

    new-instance v2, Lcom/yelp/android/ck/c;

    invoke-direct {v2}, Lcom/yelp/android/ck/c;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 225
    const v0, 0x7f0706fa

    new-instance v1, Lcom/yelp/android/cj/g;

    invoke-direct {v1}, Lcom/yelp/android/cj/g;-><init>()V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 226
    const v0, 0x7f070701

    new-instance v1, Lcom/yelp/android/cj/f;

    invoke-direct {v1}, Lcom/yelp/android/cj/f;-><init>()V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 230
    const v0, 0x7f070703

    new-instance v1, Lcom/yelp/android/cj/k;

    invoke-direct {v1}, Lcom/yelp/android/cj/k;-><init>()V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 231
    const v0, 0x7f0706f6

    new-instance v1, Lcom/yelp/android/cj/k;

    invoke-direct {v1}, Lcom/yelp/android/cj/k;-><init>()V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 235
    const v0, 0x7f0706fe

    new-instance v1, Lcom/yelp/android/cj/k;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/settings/ChangeSettings$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$1;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/cj/k;-><init>(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/cj/i;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 255
    const v0, 0x7f070705

    new-instance v1, Lcom/yelp/android/cj/k;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$2;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/cj/k;-><init>(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/cj/i;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 275
    const v0, 0x7f0706ff

    new-instance v1, Lcom/yelp/android/cj/h;

    invoke-direct {v1}, Lcom/yelp/android/cj/h;-><init>()V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 279
    const v0, 0x7f0706f5

    new-instance v1, Lcom/yelp/android/cj/c;

    invoke-direct {v1}, Lcom/yelp/android/cj/c;-><init>()V

    invoke-direct {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    .line 285
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    new-instance v2, Lcom/yelp/android/cj/a;

    invoke-direct {v2}, Lcom/yelp/android/cj/a;-><init>()V

    new-instance v3, Lcom/yelp/android/ck/b;

    invoke-direct {v3}, Lcom/yelp/android/ck/b;-><init>()V

    invoke-direct {p0, v0, v2, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;Lcom/yelp/android/cj/i;Lcom/yelp/android/ck/g;)V

    goto :goto_0

    .line 290
    :cond_1
    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a:Landroid/view/View;

    .line 291
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/l$b;)V

    .line 293
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "preferences.resourceid"

    const v2, 0x7f0301d3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "preferences.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-nez v0, :cond_2

    const v0, 0x7f070409

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(ILjava/lang/CharSequence;)V

    .line 298
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v1, 0x7f0705b4

    const v2, 0x7f070452

    const/4 v6, 0x0

    .line 380
    sparse-switch p1, :sswitch_data_0

    .line 443
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 382
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070689

    new-instance v2, Lcom/yelp/android/ui/activities/settings/ChangeSettings$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$3;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041b

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 401
    :sswitch_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    .line 402
    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Landroid/content/Context;)Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v1

    .line 403
    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->DistanceUnit:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v3, "unit"

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07025d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07018f

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->getResourceNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->ordinal()I

    move-result v1

    new-instance v4, Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;

    invoke-direct {v4, p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$4;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Lcom/yelp/android/appdata/LocaleSettings;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 429
    :sswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 437
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07064e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0569 -> :sswitch_0
        0x7f0f056a -> :sswitch_1
        0x7f0f0572 -> :sswitch_2
    .end sparse-switch
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
    .line 913
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 914
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 915
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 320
    const-string/jumbo v0, "change_settings"

    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Lcom/yelp/android/appdata/webrequests/f;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->c()V

    .line 323
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 687
    const/16 v0, 0xfa

    if-ne p1, v0, :cond_0

    .line 689
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationChanged:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "toggle_on"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const v0, 0x7f0f0573

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setChecked(Z)V

    .line 694
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0706ef

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    const v0, 0x7f070381

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 303
    const-string/jumbo v0, "change_settings"

    sget-object v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Lcom/yelp/android/appdata/webrequests/f;

    sget-object v2, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/f;

    sput-object v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->h:Lcom/yelp/android/appdata/webrequests/f;

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/co;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 678
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    .line 681
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/view/View;)V

    .line 682
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    const-string/jumbo v0, "has_logged_out"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    return-void
.end method
