.class public Lcom/yelp/android/ui/util/as;
.super Ljava/lang/Object;
.source "UtilUIYelp.java"


# direct methods
.method public static a(Ljava/util/List;Lcom/yelp/android/serializable/b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/b;",
            ">;",
            "Lcom/yelp/android/serializable/b;",
            ")I"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 61
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 63
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/serializable/b;->a(Lcom/yelp/android/serializable/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 97
    const-string/jumbo v0, "reason_code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/yelp/android/analytics/g;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 101
    const/16 v0, 0x402

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-static {p1, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->A()Lcom/yelp/android/ui/util/ao;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/ui/util/ao;->a(II)V

    .line 48
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 80
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->A()Lcom/yelp/android/ui/util/ao;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/ui/util/ao;->a(Ljava/lang/CharSequence;I)V

    .line 41
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 93
    return-void
.end method
