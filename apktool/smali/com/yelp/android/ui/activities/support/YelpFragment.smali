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

.field private e:J

.field protected f:Lcom/yelp/android/util/ErrorType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected A()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/view/View;)V

    .line 223
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 224
    return-object v0
.end method

.method protected B()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->A()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method protected C()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 275
    :cond_0
    return-void
.end method

.method protected D()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 310
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

    .line 311
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    :cond_1
    return-void
.end method

.method protected E()V
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 419
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
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
    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 402
    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;
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
    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 412
    :cond_0
    return-object p2
.end method

.method protected a(Lcom/yelp/android/ui/panels/aa;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 199
    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/aa;)V

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/view/View;)V

    .line 207
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 208
    return-object v0

    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->a()V

    goto :goto_0
.end method

.method public final a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
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
    .line 247
    const v0, 0x7f07033f

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 248
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
    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->x()V

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->B()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 257
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 163
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/aa;)V
    .locals 1

    .prologue
    .line 145
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 146
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 141
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->j()V

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->x()V

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->y()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 288
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
    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 353
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V
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
    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V

    .line 366
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;Z)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V

    .line 380
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 340
    return-void
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
    .line 320
    if-eqz p1, :cond_0

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->cancel(Z)V

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 324
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 299
    invoke-static {p1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 300
    return-void
.end method

.method public getComponentId()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:J

    return-wide v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

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
    .line 433
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public i_()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 244
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->b(Landroid/view/View;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 233
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:Lcom/yelp/android/util/ErrorType;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    const-string/jumbo v2, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:J

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f030191

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->D()V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/k;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 125
    invoke-static {p0, p1}, Lcom/yelp/android/ui/k;->a(Ljava/lang/Object;Landroid/view/Menu;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 104
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->w()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->E()V

    .line 108
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    return-void
.end method

.method protected w()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->supportInvalidateOptionsMenu()V

    .line 136
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->f:Lcom/yelp/android/util/ErrorType;

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->b(Landroid/view/View;)V

    .line 169
    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    .line 171
    :cond_0
    return-void
.end method

.method protected y()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->z()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpFragment;->d:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method protected z()Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Lcom/yelp/android/ui/panels/aa;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method
