.class public abstract Lcom/yelp/android/ui/activities/support/YelpFragment;
.super Landroid/support/v4/app/Fragment;
.source "YelpFragment.java"

# interfaces
.implements Lcom/yelp/android/analytics/a;


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/panels/PanelLoading;

.field private d:Lcom/yelp/android/ui/panels/PanelError;

.field private e:Lcom/yelp/android/bx/a;

.field private f:J

.field protected h:Lcom/yelp/android/util/ErrorType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected A()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->B()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method protected B()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/ui/panels/PanelError$a;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method protected C()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->y_()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method protected D()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog()V

    .line 289
    :cond_0
    return-void
.end method

.method protected E()V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 313
    :cond_0
    return-void
.end method

.method protected F()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 349
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    :cond_1
    return-void
.end method

.method protected G()V
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 456
    return-void
.end method

.method public H_()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 264
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
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
    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 436
    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;
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
    .line 446
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 450
    :cond_0
    return-object p2
.end method

.method protected a(Lcom/yelp/android/ui/panels/PanelError$a;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 219
    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/view/View;)V

    .line 227
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 228
    return-object v0

    .line 222
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->a()V

    goto :goto_0
.end method

.method public final a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 374
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
    .line 267
    const v0, 0x7f070379

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 268
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
    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->z()V

    .line 274
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->C()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 277
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 182
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 183
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 166
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 162
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->l()V

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->z()V

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 326
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
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
    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 396
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V
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
    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 414
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    const v1, 0x7f0f0301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string/jumbo v0, "Trying to remove a view while the rootView is null."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 295
    :cond_0
    return-void
.end method

.method protected b(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;I)V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 301
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 337
    invoke-static {p1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 338
    return-void
.end method

.method protected c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 362
    :cond_0
    return-void
.end method

.method public getComponentId()J
    .locals 2

    .prologue
    .line 465
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:J

    return-wide v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

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
    .line 470
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->b(Landroid/view/View;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 253
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->h:Lcom/yelp/android/util/ErrorType;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->h:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    const-string/jumbo v2, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:J

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f03020e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->F()V

    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/f;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:Lcom/yelp/android/bx/a;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:Lcom/yelp/android/bx/a;

    invoke-interface {v0}, Lcom/yelp/android/bx/a;->c()V

    .line 122
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 142
    invoke-static {p0, p1}, Lcom/yelp/android/ui/f;->a(Ljava/lang/Object;Landroid/view/Menu;)V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->G()V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:Lcom/yelp/android/bx/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:Lcom/yelp/android/bx/a;

    invoke-interface {v0}, Lcom/yelp/android/bx/a;->b()V

    .line 114
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:Lcom/yelp/android/bx/a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:Lcom/yelp/android/bx/a;

    invoke-interface {v0, p1}, Lcom/yelp/android/bx/a;->a(Landroid/os/Bundle;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected y()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->supportInvalidateOptionsMenu()V

    .line 153
    return-void
.end method

.method protected y_()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundColor(I)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/view/View;)V

    .line 243
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 244
    return-object v0
.end method

.method public z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->h:Lcom/yelp/android/util/ErrorType;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->b(Landroid/view/View;)V

    .line 189
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    .line 191
    :cond_0
    return-void
.end method
