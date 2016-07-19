.class public Lcom/yelp/android/ck/e;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Lcom/yelp/android/ck/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ck/e$7;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

.field private b:Ljava/lang/String;

.field private c:Ljp/line/android/sdk/login/a;

.field private d:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/yelp/android/ck/e$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ck/e$6;-><init>(Lcom/yelp/android/ck/e;)V

    iput-object v0, p0, Lcom/yelp/android/ck/e;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ck/e;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/ck/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ck/e$1;-><init>(Lcom/yelp/android/ck/e;)V

    .line 72
    new-instance v1, Lcom/yelp/android/ck/e$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ck/e$2;-><init>(Lcom/yelp/android/ck/e;)V

    .line 85
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/yelp/android/ck/e;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    const v3, 0x7f070141

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070689

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07018f

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ck/e;Ljp/line/android/sdk/login/LineLoginFuture;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/ck/e;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ck/e;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/ck/e;->a(Z)V

    return-void
.end method

.method private a(Ljp/line/android/sdk/login/LineLoginFuture;)V
    .locals 3

    .prologue
    .line 96
    invoke-interface {p1}, Ljp/line/android/sdk/login/LineLoginFuture;->g()Lcom/yelp/android/db/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/db/a;->b:Ljava/lang/String;

    .line 97
    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v1

    invoke-interface {v1}, Ljp/line/android/sdk/a;->b()Ljp/line/android/sdk/api/a;

    move-result-object v1

    .line 98
    new-instance v2, Lcom/yelp/android/ck/e$3;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ck/e$3;-><init>(Lcom/yelp/android/ck/e;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljp/line/android/sdk/api/a;->b(Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;

    .line 118
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ck/e;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 122
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->e(Z)V

    .line 123
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ck/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ck/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ck/e;->c:Ljp/line/android/sdk/login/a;

    iget-object v1, p0, Lcom/yelp/android/ck/e;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-interface {v0, v1}, Ljp/line/android/sdk/login/a;->a(Landroid/app/Activity;)Ljp/line/android/sdk/login/LineLoginFuture;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/yelp/android/ck/e$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ck/e$4;-><init>(Lcom/yelp/android/ck/e;)V

    invoke-interface {v0, v1}, Ljp/line/android/sdk/login/LineLoginFuture;->a(Ljp/line/android/sdk/login/b;)Z

    .line 160
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ck/e;->c:Ljp/line/android/sdk/login/a;

    invoke-interface {v0}, Ljp/line/android/sdk/login/a;->c()Ljava/util/concurrent/Future;

    .line 164
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LineDisconnect:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 166
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ch;

    new-instance v1, Lcom/yelp/android/ck/e$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ck/e$5;-><init>(Lcom/yelp/android/ck/e;)V

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ch;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 181
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ch;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 182
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ck/e;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ck/e;->c()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ck/e;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ck/e;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/ck/e;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 40
    iput-object p2, p0, Lcom/yelp/android/ck/e;->b:Ljava/lang/String;

    .line 42
    const v0, 0x7f07051c

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(I)V

    .line 44
    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljp/line/android/sdk/a;->c()Ljp/line/android/sdk/login/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ck/e;->c:Ljp/line/android/sdk/login/a;

    .line 46
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ck/e;->b()V

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->aa()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/yelp/android/ck/e;->a()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ck/e;->c()V

    goto :goto_0
.end method
