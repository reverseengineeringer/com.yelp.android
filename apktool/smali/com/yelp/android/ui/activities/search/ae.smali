.class Lcom/yelp/android/ui/activities/search/ae;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ae;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 511
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 513
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchButtonKeyboard:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ae;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchButtonKeyboard:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/EventIri;->getIriName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
