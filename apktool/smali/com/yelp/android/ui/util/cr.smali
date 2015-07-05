.class public Lcom/yelp/android/ui/util/cr;
.super Ljava/lang/Object;
.source "UtilUIYelp.java"


# direct methods
.method public static a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/ay;",
            ">;",
            "Lcom/yelp/android/serializable/ay;",
            ")I"
        }
    .end annotation

    .prologue
    .line 75
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 76
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 78
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ay;

    invoke-interface {v0, p1}, Lcom/yelp/android/serializable/ay;->equalsId(Lcom/yelp/android/serializable/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 110
    const-string/jumbo v0, "reason_code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/yelp/android/analytics/g;

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/AutoIri;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 114
    const/16 v0, 0x3fe

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    const v0, 0x7f070601

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v3}, Lcom/yelp/android/serializable/Tip;->getTipOfTheDayDateFormat(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-static {v0, v1, p0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->v()Lcom/yelp/android/ui/util/ci;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/ui/util/ci;->a(II)V

    .line 48
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 95
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/text/Spannable;Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Tip;->getTipOfTheDayTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x7f0c04b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->v()Lcom/yelp/android/ui/util/ci;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/ui/util/ci;->a(Ljava/lang/CharSequence;I)V

    .line 41
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 106
    return-void
.end method
