.class public Lcom/yelp/android/util/c;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/dialogs/e;

.field private b:Landroid/support/v4/app/FragmentActivity;

.field private c:Lcom/yelp/android/appdata/webrequests/h;

.field private d:Lcom/yelp/android/appdata/webrequests/dk;

.field private e:Lcom/yelp/android/util/c$a;

.field private f:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/yelp/android/util/c$a;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/yelp/android/util/c$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/util/c$1;-><init>(Lcom/yelp/android/util/c;)V

    iput-object v0, p0, Lcom/yelp/android/util/c;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 185
    new-instance v0, Lcom/yelp/android/util/c$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/util/c$2;-><init>(Lcom/yelp/android/util/c;)V

    iput-object v0, p0, Lcom/yelp/android/util/c;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 49
    iput-object p1, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    .line 50
    iput-object p2, p0, Lcom/yelp/android/util/c;->e:Lcom/yelp/android/util/c$a;

    .line 54
    if-eqz p3, :cond_0

    .line 55
    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0704ee

    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/util/c;->a(I)V

    .line 60
    :cond_0
    return-void

    .line 55
    :cond_1
    const v0, 0x7f07011e

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/util/c;)Lcom/yelp/android/ui/dialogs/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/yelp/android/ui/dialogs/e;

    iget-object v1, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/dialogs/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    .line 163
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setCancelable(Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    iget-object v1, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->show()V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/util/c;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/util/c;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/util/c;)Lcom/yelp/android/util/c$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/util/c;->e:Lcom/yelp/android/util/c$a;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/l;)V

    .line 203
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/h;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/util/c;->c:Lcom/yelp/android/appdata/webrequests/h;

    return-object v0
.end method

.method public a(IILcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    const/4 p3, 0x0

    :goto_1
    return-object p3

    .line 147
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/yelp/android/util/c;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_1

    .line 150
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/yelp/android/util/c;->c(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yelp/android/util/c;->a:Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/c;->c(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/c;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/yelp/android/util/c;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3ee

    goto :goto_1
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/dk;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/util/c;->d:Lcom/yelp/android/appdata/webrequests/dk;

    return-object v0
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->ADD_BOOKMARK:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V

    .line 91
    new-instance v0, Lcom/yelp/android/appdata/webrequests/h;

    iget-object v1, p0, Lcom/yelp/android/util/c;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/util/c;->c:Lcom/yelp/android/appdata/webrequests/h;

    .line 92
    iget-object v0, p0, Lcom/yelp/android/util/c;->c:Lcom/yelp/android/appdata/webrequests/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 93
    const v0, 0x7f07011e

    invoke-direct {p0, v0}, Lcom/yelp/android/util/c;->a(I)V

    .line 94
    return-void
.end method

.method public c()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/util/c;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method public c(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dk;

    iget-object v1, p0, Lcom/yelp/android/util/c;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/dk;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/util/c;->d:Lcom/yelp/android/appdata/webrequests/dk;

    .line 103
    iget-object v0, p0, Lcom/yelp/android/util/c;->d:Lcom/yelp/android/appdata/webrequests/dk;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dk;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 104
    const v0, 0x7f0704ee

    invoke-direct {p0, v0}, Lcom/yelp/android/util/c;->a(I)V

    .line 105
    return-void
.end method

.method public d()Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/util/c;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method
