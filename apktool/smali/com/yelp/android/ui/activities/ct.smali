.class Lcom/yelp/android/ui/activities/ct;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ct;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ct;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ct;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ct;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)V

    .line 313
    return-void
.end method
