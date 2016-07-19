.class public Lcom/yelp/android/ui/activities/support/b;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/support/b$d;,
        Lcom/yelp/android/ui/activities/support/b$c;,
        Lcom/yelp/android/ui/activities/support/b$e;,
        Lcom/yelp/android/ui/activities/support/b$f;,
        Lcom/yelp/android/ui/activities/support/b$a;,
        Lcom/yelp/android/ui/activities/support/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/activities/support/b$b;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/yelp/android/util/ErrorType;

.field private l:Lcom/yelp/android/ui/panels/PanelLoading;

.field private m:Lcom/yelp/android/ui/panels/PanelError;

.field private n:Lcom/yelp/android/ui/activities/support/b$e;

.field private o:Lcom/yelp/android/ui/util/am;

.field private p:Landroid/content/res/Resources$Theme;

.field private final q:Lcom/yelp/android/appdata/AppData;

.field private r:Landroid/os/Handler;

.field private final s:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private t:Lcom/yelp/android/ui/util/ax;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    .line 69
    const v0, 0x1040013

    iput v0, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    .line 70
    const v0, 0x1040009

    iput v0, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    .line 73
    iput v1, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    .line 93
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 94
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->q:Lcom/yelp/android/appdata/AppData;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/support/b;)Lcom/yelp/android/ui/activities/support/b$e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->n:Lcom/yelp/android/ui/activities/support/b$e;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/support/b;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    return-object v0
.end method


# virtual methods
.method protected a(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/comscore/analytics/k;->a()V

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->p()V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->q:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/ui/activities/support/b;)V

    .line 124
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->o:Lcom/yelp/android/ui/util/am;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->o:Lcom/yelp/android/ui/util/am;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/util/am;->a(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->p:Landroid/content/res/Resources$Theme;

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/support/b$d;->setSuperTheme(I)V

    goto :goto_0
.end method

.method protected a(ILandroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 326
    sparse-switch p1, :sswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 328
    :sswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/support/b$f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v2, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/support/b$f;-><init>(Lcom/yelp/android/ui/activities/support/b;Landroid/app/Activity;I)V

    .line 330
    check-cast p2, Landroid/app/AlertDialog;

    .line 331
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v3, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 336
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v3, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 342
    :sswitch_1
    iget v0, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    move v1, v0

    :goto_1
    move-object v0, p2

    .line 343
    check-cast v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 344
    new-instance v0, Lcom/yelp/android/ui/activities/support/b$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->c:Lcom/yelp/android/ui/activities/support/b$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/b$a;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 342
    :cond_0
    const v0, 0x7f070379

    move v1, v0

    goto :goto_1

    .line 347
    :sswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x14065 -> :sswitch_1
        0x1607a -> :sswitch_0
        0x23d246 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/os/AsyncTask;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 203
    return-void
.end method

.method public a(Landroid/os/AsyncTask;Lcom/yelp/android/ui/activities/support/b$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/b$b;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->b:Landroid/os/AsyncTask;

    .line 220
    iput p3, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    .line 221
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/b;->c:Lcom/yelp/android/ui/activities/support/b$b;

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x14065

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 223
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->p:Landroid/content/res/Resources$Theme;

    .line 103
    new-instance v0, Lcom/yelp/android/ui/util/am;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/am;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->o:Lcom/yelp/android/ui/util/am;

    .line 104
    new-instance v0, Lcom/yelp/android/ui/util/ax;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/ax;-><init>(Lcom/yelp/android/ui/activities/support/b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->t:Lcom/yelp/android/ui/util/ax;

    .line 105
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 110
    const-string/jumbo v0, "yelp:progress_text"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    .line 111
    const-string/jumbo v0, "yelp:dialog_positive"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    .line 112
    const-string/jumbo v0, "yelp:dialog_negative"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    .line 113
    const-string/jumbo v0, "yelp:dialog_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    .line 114
    const-string/jumbo v0, "yelp:dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->h:Ljava/lang/CharSequence;

    .line 115
    const-string/jumbo v0, "yelp:dialog_context"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    .line 118
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcom/yelp/android/ui/activities/support/b$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/b$1;-><init>(Lcom/yelp/android/ui/activities/support/b;)V

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    .line 395
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->g()V

    .line 396
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;I)V"
        }
    .end annotation

    .prologue
    .line 568
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->j()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 573
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 574
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 575
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V
    .locals 2
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
    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 207
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V
    .locals 2
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
    .line 227
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 228
    iput p3, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    .line 229
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/b;->c:Lcom/yelp/android/ui/activities/support/b$b;

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x14065

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 231
    return-void
.end method

.method protected a(Lcom/yelp/android/ui/activities/support/b$e;ZI)V
    .locals 4

    .prologue
    .line 649
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->n:Lcom/yelp/android/ui/activities/support/b$e;

    .line 650
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/support/b$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/yelp/android/ui/activities/support/b$2;-><init>(Lcom/yelp/android/ui/activities/support/b;ZI)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 595
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    .line 596
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->i()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 597
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 599
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 2

    .prologue
    .line 602
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    .line 603
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->i()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 604
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 606
    return-void
.end method

.method public a(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    .line 267
    iput p2, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    .line 268
    iput p3, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    .line 269
    iput p4, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x1607a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 271
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b;->h:Ljava/lang/CharSequence;

    .line 276
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x23d246

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 278
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/f;->a(Ljava/lang/Object;Landroid/view/Menu;)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/f;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected b(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    sparse-switch p1, :sswitch_data_0

    .line 320
    :goto_0
    return-object v0

    .line 283
    :sswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/support/b$f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v2, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/support/b$f;-><init>(Lcom/yelp/android/ui/activities/support/b;Landroid/app/Activity;I)V

    .line 285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 287
    iget v2, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    if-lez v2, :cond_0

    .line 288
    iget v2, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    :cond_0
    iget v2, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    if-lez v2, :cond_1

    .line 291
    iget v2, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    :cond_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 296
    :sswitch_1
    new-instance v1, Lcom/yelp/android/ui/dialogs/e;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 302
    iget v0, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    .line 303
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 305
    new-instance v0, Lcom/yelp/android/ui/activities/support/b$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/b;->c:Lcom/yelp/android/ui/activities/support/b$b;

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/ui/activities/support/b$a;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v0, v1

    .line 306
    goto :goto_0

    .line 302
    :cond_2
    const v0, 0x7f070379

    goto :goto_1

    .line 308
    :sswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    :cond_3
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 314
    const v2, 0x7f07070e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 318
    :sswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->t:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ax;->b()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x14065 -> :sswitch_1
        0x1607a -> :sswitch_0
        0x23d246 -> :sswitch_2
        0x7f0f0023 -> :sswitch_3
    .end sparse-switch
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-static {}, Lcom/comscore/analytics/k;->b()V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 131
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->b:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 135
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->b:Landroid/os/AsyncTask;

    .line 138
    :cond_1
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "yelp:progress_text"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v0, "yelp:dialog_positive"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string/jumbo v0, "yelp:dialog_negative"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string/jumbo v0, "yelp:dialog_message"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 177
    const-string/jumbo v0, "yelp:dialog_title"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 178
    const-string/jumbo v0, "yelp:dialog_context"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string/jumbo v0, "yelp:error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 557
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    return-object v0
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "yelp:error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 561
    return-void
.end method

.method public d()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->p:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->p:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->o:Lcom/yelp/android/ui/util/am;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/support/b$d;->getSuperTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/am;->a(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->p:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public e()Lcom/yelp/android/ui/util/ax;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->t:Lcom/yelp/android/ui/util/ax;

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x14065

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->removeDialog(I)V

    .line 241
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 242
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->b:Landroid/os/AsyncTask;

    .line 243
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b;->c:Lcom/yelp/android/ui/activities/support/b$b;

    .line 244
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 368
    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 371
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 373
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->f()V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->j:Ljava/util/ArrayList;

    .line 406
    return-void
.end method

.method protected i()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->k()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method protected j()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->l()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method protected k()Lcom/yelp/android/ui/panels/PanelError;
    .locals 2

    .prologue
    .line 451
    new-instance v1, Lcom/yelp/android/ui/panels/PanelError;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    instance-of v0, v0, Lcom/yelp/android/ui/panels/PanelError$a;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    check-cast v0, Lcom/yelp/android/ui/panels/PanelError$a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->addStatusView(Landroid/view/View;)V

    .line 458
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 459
    return-object v1

    .line 455
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelError;->a()V

    goto :goto_0
.end method

.method protected l()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 470
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundColor(I)V

    .line 471
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->addStatusView(Landroid/view/View;)V

    .line 472
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 473
    return-object v0
.end method

.method public m()Lcom/yelp/android/appdata/AppData;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->q:Lcom/yelp/android/appdata/AppData;

    return-object v0
.end method

.method public n()Lcom/yelp/android/database/g;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->q:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    return-object v0
.end method

.method public o()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->r:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->r:Landroid/os/Handler;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 545
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/b;->c(Landroid/view/View;)V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 584
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->k:Lcom/yelp/android/util/ErrorType;

    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/b;->c(Landroid/view/View;)V

    .line 590
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/b;->m:Lcom/yelp/android/ui/panels/PanelError;

    .line 592
    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    const-string/jumbo v0, "anonymous"

    .line 672
    :goto_0
    return-object v0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/b;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    const-string/jumbo v0, "confirmed"

    goto :goto_0

    .line 672
    :cond_1
    const-string/jumbo v0, "unconfirmed"

    goto :goto_0
.end method
