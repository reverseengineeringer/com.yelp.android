.class public Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "YelpBaseDialogFragment.java"

# interfaces
.implements Lcom/yelp/android/analytics/a;


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 102
    :cond_0
    return-object p2
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
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 84
    return-void
.end method

.method protected final c()Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    return-object v0
.end method

.method public getComponentId()J
    .locals 2

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 56
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
    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    move-object v1, v0

    .line 39
    :goto_0
    const-string/jumbo v0, "API_WORKER_FRAGMENT"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    .line 43
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->a:Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;

    const-string/jumbo v2, "API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 51
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 52
    return-void
.end method
