.class public Lcom/yelp/android/ui/activities/support/h;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"


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

.field private c:Lcom/yelp/android/ui/activities/support/l;

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

.field private n:Lcom/yelp/android/ui/activities/support/o;

.field private o:Lcom/yelp/android/ui/util/cf;

.field private p:Landroid/content/res/Resources$Theme;

.field private final q:Lcom/yelp/android/appdata/AppData;

.field private r:Landroid/os/Handler;

.field private final s:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private t:Lcom/yelp/android/ui/util/dg;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v1, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    .line 78
    const v0, 0x1040013

    iput v0, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    .line 79
    const v0, 0x1040009

    iput v0, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    .line 82
    iput v1, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    .line 102
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 103
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->q:Lcom/yelp/android/appdata/AppData;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/support/h;)Lcom/yelp/android/ui/activities/support/o;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->n:Lcom/yelp/android/ui/activities/support/o;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/support/h;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    return-object v0
.end method


# virtual methods
.method protected a(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {v0}, Lcom/adjust/sdk/e;->a(Landroid/app/Activity;)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->p()V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->q:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/ui/activities/support/h;)V

    .line 137
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->o:Lcom/yelp/android/ui/util/cf;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->o:Lcom/yelp/android/ui/util/cf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/util/cf;->a(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->p:Landroid/content/res/Resources$Theme;

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/support/n;->setSuperTheme(I)V

    goto :goto_0
.end method

.method protected a(ILandroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 343
    sparse-switch p1, :sswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 345
    :sswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/support/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v2, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/support/p;-><init>(Lcom/yelp/android/ui/activities/support/h;Landroid/app/Activity;I)V

    .line 347
    check-cast p2, Landroid/app/AlertDialog;

    .line 348
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 349
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v3, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 351
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v3, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 355
    :sswitch_1
    iget v0, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    move v1, v0

    :goto_1
    move-object v0, p2

    .line 357
    check-cast v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 359
    new-instance v0, Lcom/yelp/android/ui/activities/support/k;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->c:Lcom/yelp/android/ui/activities/support/l;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 355
    :cond_0
    const v0, 0x7f07033f

    move v1, v0

    goto :goto_1

    .line 363
    :sswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->h:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
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
    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/support/h;->a(Landroid/os/AsyncTask;Lcom/yelp/android/ui/activities/support/l;I)V

    .line 216
    return-void
.end method

.method public a(Landroid/os/AsyncTask;Lcom/yelp/android/ui/activities/support/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/l;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->b:Landroid/os/AsyncTask;

    .line 234
    iput p3, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    .line 235
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/h;->c:Lcom/yelp/android/ui/activities/support/l;

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x14065

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 237
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->p:Landroid/content/res/Resources$Theme;

    .line 112
    new-instance v0, Lcom/yelp/android/ui/util/cf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/cf;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->o:Lcom/yelp/android/ui/util/cf;

    .line 113
    new-instance v0, Lcom/yelp/android/ui/util/dg;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/dg;-><init>(Lcom/yelp/android/ui/activities/support/h;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->t:Lcom/yelp/android/ui/util/dg;

    .line 114
    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 119
    const-string/jumbo v0, "yelp:progress_text"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    .line 121
    const-string/jumbo v0, "yelp:dialog_positive"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    .line 123
    const-string/jumbo v0, "yelp:dialog_negative"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    .line 125
    const-string/jumbo v0, "yelp:dialog_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    .line 127
    const-string/jumbo v0, "yelp:dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->h:Ljava/lang/CharSequence;

    .line 128
    const-string/jumbo v0, "yelp:dialog_context"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    .line 131
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 377
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 379
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
    .line 400
    new-instance v0, Lcom/yelp/android/ui/activities/support/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/i;-><init>(Lcom/yelp/android/ui/activities/support/h;)V

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V

    .line 408
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->g()V

    .line 409
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
    .line 596
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 597
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->j()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 602
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 603
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V
    .locals 2
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
    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V

    .line 221
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;I)V
    .locals 2
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
    .line 241
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 242
    iput p3, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    .line 243
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/h;->c:Lcom/yelp/android/ui/activities/support/l;

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x14065

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 245
    return-void
.end method

.method protected a(Lcom/yelp/android/ui/activities/support/o;ZI)V
    .locals 4

    .prologue
    .line 676
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->n:Lcom/yelp/android/ui/activities/support/o;

    .line 677
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/support/j;

    invoke-direct {v1, p0, p2, p3}, Lcom/yelp/android/ui/activities/support/j;-><init>(Lcom/yelp/android/ui/activities/support/h;ZI)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 623
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    .line 624
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->i()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 625
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 626
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 627
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V
    .locals 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    .line 631
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->i()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 632
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 633
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 634
    return-void
.end method

.method public a(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    .line 282
    iput p2, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    .line 283
    iput p3, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    .line 284
    iput p4, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x1607a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 286
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/h;->h:Ljava/lang/CharSequence;

    .line 291
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x23d246

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showDialog(I)V

    .line 293
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/k;->a(Ljava/lang/Object;Landroid/view/Menu;)V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/k;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected b(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    sparse-switch p1, :sswitch_data_0

    .line 337
    :goto_0
    return-object v0

    .line 298
    :sswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/support/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget v2, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/support/p;-><init>(Lcom/yelp/android/ui/activities/support/h;Landroid/app/Activity;I)V

    .line 300
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 302
    iget v2, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    if-lez v2, :cond_0

    .line 303
    iget v2, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    :cond_0
    iget v2, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    if-lez v2, :cond_1

    .line 306
    iget v2, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    :cond_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 311
    :sswitch_1
    new-instance v1, Lcom/yelp/android/ui/dialogs/bn;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 317
    iget v0, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    .line 319
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 321
    new-instance v0, Lcom/yelp/android/ui/activities/support/k;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/h;->c:Lcom/yelp/android/ui/activities/support/l;

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/ui/activities/support/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v0, v1

    .line 323
    goto :goto_0

    .line 317
    :cond_2
    const v0, 0x7f07033f

    goto :goto_1

    .line 325
    :sswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 330
    :cond_3
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 331
    const v2, 0x7f07041b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 335
    :sswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->t:Lcom/yelp/android/ui/util/dg;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/dg;->b()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x14065 -> :sswitch_1
        0x1607a -> :sswitch_0
        0x23d246 -> :sswitch_2
        0x7f0c0020 -> :sswitch_3
    .end sparse-switch
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-static {}, Lcom/adjust/sdk/e;->a()V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->cancel(Z)V

    .line 144
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->b:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 148
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->b:Landroid/os/AsyncTask;

    .line 151
    :cond_1
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 185
    const-string/jumbo v0, "yelp:progress_text"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string/jumbo v0, "yelp:dialog_positive"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string/jumbo v0, "yelp:dialog_negative"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string/jumbo v0, "yelp:dialog_message"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 189
    const-string/jumbo v0, "yelp:dialog_title"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 190
    const-string/jumbo v0, "yelp:dialog_context"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/h;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v0, "yelp:error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x7f0c01d4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 585
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    return-object v0
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 195
    const-string/jumbo v0, "yelp:error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x7f0c01d4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 589
    return-void
.end method

.method public d()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->p:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->p:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->o:Lcom/yelp/android/ui/util/cf;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/support/n;->getSuperTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/cf;->a(ILandroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->p:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public e()Lcom/yelp/android/ui/util/dg;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->t:Lcom/yelp/android/ui/util/dg;

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v1, 0x14065

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->removeDialog(I)V

    .line 255
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 256
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->b:Landroid/os/AsyncTask;

    .line 257
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/h;->c:Lcom/yelp/android/ui/activities/support/l;

    .line 258
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 383
    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 386
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 388
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->f()V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 415
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->j:Ljava/util/ArrayList;

    .line 419
    return-void
.end method

.method protected i()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->k()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method protected j()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->l()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method protected k()Lcom/yelp/android/ui/panels/PanelError;
    .locals 2

    .prologue
    .line 465
    new-instance v1, Lcom/yelp/android/ui/panels/PanelError;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    instance-of v0, v0, Lcom/yelp/android/ui/panels/aa;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    check-cast v0, Lcom/yelp/android/ui/panels/aa;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/aa;)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->addStatusView(Landroid/view/View;)V

    .line 477
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 478
    return-object v1

    .line 469
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelError;->a()V

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/support/h;->b(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected l()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 3

    .prologue
    .line 488
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 489
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 491
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    instance-of v1, v1, Lcom/yelp/android/ui/activities/support/YelpActivity;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->addStatusView(Landroid/view/View;)V

    .line 496
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 497
    return-object v0

    .line 494
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/h;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public m()Lcom/yelp/android/appdata/AppData;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->q:Lcom/yelp/android/appdata/AppData;

    return-object v0
.end method

.method public n()Lcom/yelp/android/database/q;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->q:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    return-object v0
.end method

.method public o()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->r:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->r:Landroid/os/Handler;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->s:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 572
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 609
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/h;->c(Landroid/view/View;)V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 612
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 615
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->k:Lcom/yelp/android/util/ErrorType;

    .line 616
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/h;->c(Landroid/view/View;)V

    .line 618
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/h;->m:Lcom/yelp/android/ui/panels/PanelError;

    .line 620
    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 637
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 641
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const-string/jumbo v0, "anonymous"

    .line 697
    :goto_0
    return-object v0

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    const-string/jumbo v0, "confirmed"

    goto :goto_0

    .line 697
    :cond_1
    const-string/jumbo v0, "unconfirmed"

    goto :goto_0
.end method
